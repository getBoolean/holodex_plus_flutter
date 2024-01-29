import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:url_launcher/url_launcher.dart';

class WebView extends StatefulWidget {
  const WebView({super.key});

  @override
  State<WebView> createState() => _WebViewState();
}

class _WebViewState extends State<WebView> {
  final GlobalKey webViewKey = GlobalKey();
  static final _keepAlive = InAppWebViewKeepAlive();

  InAppWebViewController? webViewController;
  InAppWebViewSettings settings = InAppWebViewSettings(
    isInspectable: kDebugMode,
    mediaPlaybackRequiresUserGesture: false,
    allowsInlineMediaPlayback: true,
    iframeAllow: 'camera; microphone',
    iframeAllowFullscreen: true,
    useShouldInterceptFetchRequest: true,
    userAgent:
        'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0.0.0 Safari/537.36',
  );

  PullToRefreshController? pullToRefreshController;
  String url = '';
  double progress = 0;
  final urlController = TextEditingController();

  @override
  void initState() {
    super.initState();

    pullToRefreshController = kIsWeb
        ? null
        : PullToRefreshController(
            settings: PullToRefreshSettings(
              color: Colors.blue,
            ),
            onRefresh: () async {
              if (defaultTargetPlatform == TargetPlatform.android) {
                await webViewController?.reload();
              } else if (defaultTargetPlatform == TargetPlatform.iOS) {
                await webViewController?.loadUrl(
                  urlRequest:
                      URLRequest(url: await webViewController?.getUrl()),
                );
              }
            },
          );
  }

  @override
  Widget build(BuildContext context) {
    final enableArchiveChatScript = UserScript(
      source: '''
window.ARCHIVE_CHAT_OVERRIDE = true;
window.HOLODEX_PLUS_INSTALLED = false;
''',
      injectionTime: UserScriptInjectionTime.AT_DOCUMENT_END,
    );

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            _WebViewUrlBar(
              urlController: urlController,
              webViewController: webViewController,
            ),
            Expanded(
              child: Stack(
                children: [
                  InAppWebView(
                    key: webViewKey,
                    keepAlive: _keepAlive,
                    initialUserScripts: UnmodifiableListView<UserScript>([
                      enableArchiveChatScript,
                    ]),
                    initialUrlRequest: URLRequest(
                      url: WebUri('https://holodex.net/'),
                      // url: WebUri('https://youtube.com/'),
                    ),
                    // Needed for NestedScrollView
                    // https://github.com/pichillilorenzo/flutter_inappwebview/issues/915#issuecomment-884374662
                    gestureRecognizers:
                        <Factory<OneSequenceGestureRecognizer>>{}..add(
                            const Factory<VerticalDragGestureRecognizer>(
                              VerticalDragGestureRecognizer.new,
                            ),
                          ),
                    initialSettings: settings,
                    pullToRefreshController: pullToRefreshController,
                    onWebViewCreated: (controller) {
                      webViewController = controller;
                    },
                    onLoadStart: (controller, url) {
                      setState(() {
                        this.url = url.toString();
                        urlController.text = this.url;
                      });
                    },
                    onPermissionRequest: (controller, request) async {
                      return PermissionResponse(
                        resources: request.resources,
                        action: PermissionResponseAction.GRANT,
                      );
                    },
                    // shouldInterceptAjaxRequest:
                    //     (controller, ajaxRequest) async {
                    //   debugPrint('INTERCEPTING AJAX REQUEST');
                    //   debugPrint(ajaxRequest.url?.rawValue);

                    //   return null;
                    // },
                    // shouldInterceptFetchRequest:
                    //     (controller, fetchRequest) async => fetchRequest,
                    shouldInterceptFetchRequest: _interceptRequest,
                    // shouldOverrideUrlLoading: _launchSupportedUrls,
                    onLoadStop: (controller, url) async {
                      await pullToRefreshController?.endRefreshing();
                      setState(() {
                        this.url = url.toString();
                        urlController.text = this.url;
                      });
                    },
                    onReceivedError: (controller, request, error) {
                      pullToRefreshController?.endRefreshing();
                    },
                    onProgressChanged: (controller, progress) {
                      if (progress == 100) {
                        pullToRefreshController?.endRefreshing();
                      }
                      setState(() {
                        this.progress = progress / 100;
                        urlController.text = url;
                      });
                    },
                    onUpdateVisitedHistory: (controller, url, androidIsReload) {
                      setState(() {
                        this.url = url.toString();
                        urlController.text = this.url;
                      });
                    },
                    onConsoleMessage: (controller, consoleMessage) {
                      if (kDebugMode) {
                        print(consoleMessage);
                      }
                    },
                  ),
                  if (progress < 1.0)
                    LinearProgressIndicator(value: progress)
                  else
                    Container(),
                ],
              ),
            ),
            _WebViewControls(webViewController: webViewController),
          ],
        ),
      ),
    );
  }

  // ignore: unused_element
  Future<NavigationActionPolicy> _launchSupportedUrls(
    InAppWebViewController _,
    NavigationAction navigationAction,
  ) async {
    final uri = navigationAction.request.url;
    if (uri == null) {
      return NavigationActionPolicy.ALLOW;
    }

    debugPrint('LAUNCHING URL: ${uri.rawValue}');

    if (![
      'http',
      'https',
      'file',
      'chrome',
      'data',
      'javascript',
      'about',
    ].contains(uri.scheme)) {
      if (await canLaunchUrl(uri)) {
        await launchUrl(uri);

        return NavigationActionPolicy.CANCEL;
      }
    }

    return NavigationActionPolicy.ALLOW;
  }

  Future<FetchRequest> _interceptRequest(
    InAppWebViewController _,
    FetchRequest request,
  ) async {
    debugPrint('INTERCEPTING FETCH REQUEST');
    final uri = request.url;
    if (uri == null) return request;
    debugPrint('URL: ${uri.rawValue}');
    if (uri.rawValue.startsWith(
      'https://www.youtube.com/redirect_replay_chat?',
    )) {
      debugPrint('HANDLING REDIRECT REPLAY CHAT');

      return _handleRedirectReplayChat(uri, request);
    } else if (uri.rawValue.contains('youtube.com/live_chat_replay?')) {
      debugPrint('HANDLING LIVE CHAT REPLAY');

      return _handleLiveChatReplay(request);
    }

    debugPrint('SKIPPING FETCH REQUEST');

    return request;
  }

  FetchRequest _handleLiveChatReplay(FetchRequest request) {
    return request
      ..headers?.removeWhere(
        (key, value) => key.toLowerCase() == 'x-frame-options',
      );
  }

  FetchRequest _handleRedirectReplayChat(WebUri uri, FetchRequest request) {
    final videoId = uri.queryParameters['v'];
    if (videoId == null) {
      debugPrint('SKIPPING FETCH REQUEST');

      return request;
    }
    final channelId = uri.queryParameters['c'];
    if (channelId == null) {
      debugPrint('SKIPPING FETCH REQUEST');

      return request;
    }
    final darkTheme = uri.queryParameters['dark_theme'];
    // final continuation = videoId != null &&
    //     channelId != null &&
    //     rrc(
    //       videoId: videoId,
    //       channelId: channelId,
    //     );
    final redirect = WebUri(
      'https://www.youtube.com/live_chat_replay',
    );
    if (darkTheme != null) {
      redirect.queryParameters['dark_theme'] = darkTheme;
    }
    debugPrint('REDIRECTING FETCH REQUEST');

    return FetchRequest(
      url: redirect,
      method: request.method,
      headers: request.headers
        ?..removeWhere(
          (key, value) => key.toLowerCase() == 'x-frame-options',
        ),
      body: request.body,
      mode: request.mode,
      credentials: request.credentials,
      cache: request.cache,
    );
  }
}

class _WebViewControls extends StatelessWidget {
  const _WebViewControls({
    required this.webViewController,
  });

  final InAppWebViewController? webViewController;

  @override
  Widget build(BuildContext context) {
    return ButtonBar(
      alignment: MainAxisAlignment.center,
      children: <Widget>[
        ElevatedButton(
          child: const Icon(Icons.arrow_back),
          onPressed: () {
            webViewController?.goBack();
          },
        ),
        ElevatedButton(
          child: const Icon(Icons.arrow_forward),
          onPressed: () {
            webViewController?.goForward();
          },
        ),
        ElevatedButton(
          child: const Icon(Icons.refresh),
          onPressed: () {
            webViewController?.reload();
          },
        ),
      ],
    );
  }
}

class _WebViewUrlBar extends StatelessWidget {
  const _WebViewUrlBar({
    required this.urlController,
    required this.webViewController,
  });

  final TextEditingController urlController;
  final InAppWebViewController? webViewController;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: const InputDecoration(prefixIcon: Icon(Icons.search)),
      controller: urlController,
      keyboardType: TextInputType.url,
      onSubmitted: loadUrl,
      onTapOutside: (event) {
        loadUrl(urlController.text);
      },
    );
  }

  void loadUrl(String value) {
    var url = WebUri(value);
    if (url.scheme.isEmpty) {
      url = WebUri('https://www.google.com/search?q=$value');
    }
    webViewController?.loadUrl(
      urlRequest: URLRequest(url: url),
    );
  }
}
