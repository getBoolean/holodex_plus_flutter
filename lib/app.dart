import 'dart:io' as io;

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:holodex_plus_flutter/web_view.dart';

final isSupported = kIsWeb || io.Platform.isAndroid || io.Platform.isIOS;

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Holodex Plus',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: isSupported
          ? const SafeArea(child: WebView())
          : const _UnsupportedWidget(),
    );
  }
}

class _UnsupportedWidget extends StatelessWidget {
  const _UnsupportedWidget();

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ColoredBox(
        color: Colors.deepPurple,
        child: Center(
          child: Text('Not supported on this platform.'),
        ),
      ),
    );
  }
}
