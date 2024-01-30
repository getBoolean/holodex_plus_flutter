!function(e) {
    "use strict";
    var t = "undefined" != typeof globalThis ? globalThis : "undefined" != typeof window ? window : "undefined" != typeof global ? global : "undefined" != typeof self ? self : {}
      , o = {}
      , n = {}
      , r = {};
    Object.defineProperty(r, "__esModule", {
        value: !0
    }),
    r.hasValue = void 0,
    r.hasValue = function(e) {
        return null != e
    }
    ;
    var i = t && t.__awaiter || function(e, t, o, n) {
        return new (o || (o = Promise))((function(r, i) {
            function s(e) {
                try {
                    l(n.next(e))
                } catch (e) {
                    i(e)
                }
            }
            function a(e) {
                try {
                    l(n.throw(e))
                } catch (e) {
                    i(e)
                }
            }
            function l(e) {
                var t;
                e.done ? r(e.value) : (t = e.value,
                t instanceof o ? t : new o((function(e) {
                    e(t)
                }
                ))).then(s, a)
            }
            l((n = n.apply(e, t || [])).next())
        }
        ))
    }
      , s = t && t.__generator || function(e, t) {
        var o, n, r, i, s = {
            label: 0,
            sent: function() {
                if (1 & r[0])
                    throw r[1];
                return r[1]
            },
            trys: [],
            ops: []
        };
        return i = {
            next: a(0),
            throw: a(1),
            return: a(2)
        },
        "function" == typeof Symbol && (i[Symbol.iterator] = function() {
            return this
        }
        ),
        i;
        function a(i) {
            return function(a) {
                return function(i) {
                    if (o)
                        throw new TypeError("Generator is already executing.");
                    for (; s; )
                        try {
                            if (o = 1,
                            n && (r = 2 & i[0] ? n.return : i[0] ? n.throw || ((r = n.return) && r.call(n),
                            0) : n.next) && !(r = r.call(n, i[1])).done)
                                return r;
                            switch (n = 0,
                            r && (i = [2 & i[0], r.value]),
                            i[0]) {
                            case 0:
                            case 1:
                                r = i;
                                break;
                            case 4:
                                return s.label++,
                                {
                                    value: i[1],
                                    done: !1
                                };
                            case 5:
                                s.label++,
                                n = i[1],
                                i = [0];
                                continue;
                            case 7:
                                i = s.ops.pop(),
                                s.trys.pop();
                                continue;
                            default:
                                if (!(r = s.trys,
                                (r = r.length > 0 && r[r.length - 1]) || 6 !== i[0] && 2 !== i[0])) {
                                    s = 0;
                                    continue
                                }
                                if (3 === i[0] && (!r || i[1] > r[0] && i[1] < r[3])) {
                                    s.label = i[1];
                                    break
                                }
                                if (6 === i[0] && s.label < r[1]) {
                                    s.label = r[1],
                                    r = i;
                                    break
                                }
                                if (r && s.label < r[2]) {
                                    s.label = r[2],
                                    s.ops.push(i);
                                    break
                                }
                                r[2] && s.ops.pop(),
                                s.trys.pop();
                                continue
                            }
                            i = t.call(e, s)
                        } catch (e) {
                            i = [6, e],
                            n = 0
                        } finally {
                            o = r = 0
                        }
                    if (5 & i[0])
                        throw i[1];
                    return {
                        value: i[0] ? i[1] : void 0,
                        done: !0
                    }
                }([i, a])
            }
        }
    }
    ;
    Object.defineProperty(n, "__esModule", {
        value: !0
    }),
    n.ProtoframePubsub = n.ProtoframePublisher = n.ProtoframeSubscriber = void 0;
    var a = r;
    function l(e, t, o) {
        return e.type + "#" + t + "#" + o
    }
    function u(e, t, o, n, r) {
        return {
            body: r,
            id: n,
            type: l(e, t, o)
        }
    }
    function c(e, t, o, n) {
        if (a.hasValue(n)) {
            var r = n.type;
            if (a.hasValue(r) && a.hasValue(n.body)) {
                var i = r.split("#")
                  , s = i[0]
                  , l = i[1]
                  , u = i[2];
                return s === e.type && l === t && u === o
            }
            return !1
        }
        return !1
    }
    function d(e) {
        e.forEach((function(e) {
            var t = e[0]
              , o = e[1];
            return t.removeEventListener("message", o)
        }
        )),
        e.length = 0
    }
    function f(e, t, o, n) {
        return new Promise((function(r) {
            var i = function(s) {
                var l = s.data;
                (function(e, t, o) {
                    if (a.hasValue(o)) {
                        var n = o.type;
                        if (a.hasValue(n) && a.hasValue(o.response)) {
                            var r = n.split("#")
                              , i = r[0]
                              , s = r[1]
                              , l = r[2];
                            return i === e.type && "ask" === s && l === t
                        }
                        return !1
                    }
                    return !1
                }
                )(t, o, l) && l.id === n && (e.removeEventListener("message", i),
                r(l.response))
            };
            e.addEventListener("message", i)
        }
        ))
    }
    function h(e, t, o, n) {
        var r = function(e) {
            var r = e.data;
            c(t, "tell", o, r) && n(r.body)
        };
        return e.addEventListener("message", r),
        [e, r]
    }
    function p(e, t, o, n, r, a) {
        var u = this
          , d = function(e) {
            return i(u, void 0, void 0, (function() {
                var i, u;
                return s(this, (function(s) {
                    switch (s.label) {
                    case 0:
                        return i = e.data,
                        c(o, "ask", n, i) ? [4, a(i.body)] : [3, 2];
                    case 1:
                        u = s.sent(),
                        t.postMessage(function(e, t, o, n) {
                            return {
                                id: o,
                                response: n,
                                type: l(e, "ask", t)
                            }
                        }(o, n, i.id, u), r),
                        s.label = 2;
                    case 2:
                        return [2]
                    }
                }
                ))
            }
            ))
        };
        return e.addEventListener("message", d),
        [e, d]
    }
    function _(e, t, o, n, r) {
        var i = Math.random().toString();
        return e.postMessage(u(t, "tell", o, i, n), r)
    }
    function m(e, t, o, n, r, a, l) {
        return i(this, void 0, void 0, (function() {
            var c, d, h = this;
            return s(this, (function(p) {
                return c = Math.random().toString(),
                d = new Promise((function(t, r) {
                    return i(h, void 0, void 0, (function() {
                        var i, a;
                        return s(this, (function(s) {
                            switch (s.label) {
                            case 0:
                                return i = setTimeout((function() {
                                    return r(new Error("Failed to get response within " + l + "ms"))
                                }
                                ), l),
                                [4, f(e, o, n, c)];
                            case 1:
                                return a = s.sent(),
                                clearTimeout(i),
                                t(a),
                                [2]
                            }
                        }
                        ))
                    }
                    ))
                }
                )),
                t.postMessage(u(o, "ask", n, c, r), a),
                [2, d]
            }
            ))
        }
        ))
    }
    var y = function() {
        function e(e, t) {
            void 0 === t && (t = window),
            this.protocol = e,
            this.thisWindow = t,
            this.listeners = []
        }
        return e.prototype.handleTell = function(e, t) {
            this.listeners.push(h(this.thisWindow, this.protocol, e, t))
        }
        ,
        e.prototype.destroy = function() {
            d(this.listeners)
        }
        ,
        e
    }();
    n.ProtoframeSubscriber = y;
    var b = function() {
        function e(e, t, o) {
            void 0 === o && (o = "*"),
            this.protocol = e,
            this.targetWindow = t,
            this.targetOrigin = o,
            this.listeners = []
        }
        return e.parent = function(t, o, n) {
            var r = o.contentWindow;
            if (a.hasValue(r))
                return new e(t,r,n);
            throw new Error("iframe.contentWindow was null")
        }
        ,
        e.iframe = function(t, o, n) {
            return void 0 === n && (n = window.parent),
            new e(t,n,o)
        }
        ,
        e.prototype.tell = function(e, t) {
            _(this.targetWindow, this.protocol, e, t, this.targetOrigin)
        }
        ,
        e.prototype.destroy = function() {
            d(this.listeners)
        }
        ,
        e
    }();
    n.ProtoframePublisher = b;
    var g = function() {
        function e(e, t, o, n) {
            void 0 === o && (o = window),
            void 0 === n && (n = "*"),
            this.protocol = e,
            this.targetWindow = t,
            this.thisWindow = o,
            this.targetOrigin = n,
            this.systemProtocol = {
                type: "system|" + this.protocol.type
            },
            this.listeners = [],
            p(o, t, this.systemProtocol, "ping", n, (function() {
                return Promise.resolve({})
            }
            ))
        }
        return e.connect = function(e, t, o) {
            return void 0 === t && (t = 50),
            void 0 === o && (o = 500),
            i(this, void 0, void 0, (function() {
                var n;
                return s(this, (function(r) {
                    switch (r.label) {
                    case 0:
                        n = 0,
                        r.label = 1;
                    case 1:
                        if (!(n <= t))
                            return [3, 6];
                        r.label = 2;
                    case 2:
                        return r.trys.push([2, 4, , 5]),
                        [4, e.ping({
                            timeout: o
                        })];
                    case 3:
                        return r.sent(),
                        [2, e];
                    case 4:
                        return r.sent(),
                        [3, 5];
                    case 5:
                        return n++,
                        [3, 1];
                    case 6:
                        throw new Error("Could not connect on protocol " + e.protocol.type + " after " + t * o + "ms")
                    }
                }
                ))
            }
            ))
        }
        ,
        e.parent = function(t, o, n, r) {
            void 0 === n && (n = "*"),
            void 0 === r && (r = window);
            var i = o.contentWindow;
            if (a.hasValue(i))
                return new e(t,i,r,n);
            throw new Error("iframe.contentWindow was null")
        }
        ,
        e.iframe = function(t, o, n) {
            void 0 === o && (o = "*");
            var r = void 0 === n ? {} : n
              , i = r.thisWindow
              , s = void 0 === i ? window : i
              , a = r.targetWindow;
            return new e(t,void 0 === a ? window.parent : a,s,o)
        }
        ,
        e.prototype.ping = function(e) {
            var t = e.timeout
              , o = void 0 === t ? 1e4 : t;
            return i(this, void 0, void 0, (function() {
                return s(this, (function(e) {
                    switch (e.label) {
                    case 0:
                        return [4, m(this.thisWindow, this.targetWindow, this.systemProtocol, "ping", {}, this.targetOrigin, o)];
                    case 1:
                        return e.sent(),
                        [2]
                    }
                }
                ))
            }
            ))
        }
        ,
        e.prototype.handleTell = function(e, t) {
            this.listeners.push(h(this.thisWindow, this.protocol, e, t))
        }
        ,
        e.prototype.tell = function(e, t) {
            _(this.targetWindow, this.protocol, e, t, this.targetOrigin)
        }
        ,
        e.prototype.handleAsk = function(e, t) {
            this.listeners.push(p(this.thisWindow, this.targetWindow, this.protocol, e, this.targetOrigin, t))
        }
        ,
        e.prototype.ask = function(e, t, o) {
            return void 0 === o && (o = 1e4),
            m(this.thisWindow, this.targetWindow, this.protocol, e, t, this.targetOrigin, o)
        }
        ,
        e.prototype.destroy = function() {
            d(this.listeners)
        }
        ,
        e
    }();
    n.ProtoframePubsub = g,
    function(e) {
        Object.defineProperty(e, "__esModule", {
            value: !0
        }),
        e.ProtoframePubsub = e.ProtoframeSubscriber = e.ProtoframePublisher = void 0;
        var t = n;
        Object.defineProperty(e, "ProtoframePublisher", {
            enumerable: !0,
            get: function() {
                return t.ProtoframePublisher
            }
        }),
        Object.defineProperty(e, "ProtoframeSubscriber", {
            enumerable: !0,
            get: function() {
                return t.ProtoframeSubscriber
            }
        }),
        Object.defineProperty(e, "ProtoframePubsub", {
            enumerable: !0,
            get: function() {
                return t.ProtoframePubsub
            }
        })
    }(o),
    console.log("[Holodex+]", "Setting YT player overrides");
    const v = {
        autoplay_time: "8000",
        autoplay_time_for_music_content: "3000",
        csi_on_gel: "true",
        disable_features_for_supex: "true",
        disable_legacy_desktop_remote_queue: "true",
        enable_client_sli_logging: "true",
        enable_gel_log_commands: "true",
        offline_error_handling: "true",
        player_doubletap_to_seek: "true",
        preskip_button_style_ads_backend: "countdown_next_to_thumbnail",
        web_deprecate_service_ajax_map_dependency: "true",
        web_forward_command_on_pbj: "true",
        should_clear_video_data_on_player_cued_unstarted: "true",
        ytidb_fetch_datasync_ids_for_data_cleanup: "true",
        web_player_nitrate_promo_tooltip: "true",
        web_player_move_autonav_toggle: "true",
        enable_cookie_reissue_iframe: "false",
        shorten_initial_gel_batch_timeout: "false",
        html5_enable_dai_single_video_ad: "false",
        html5_onesie: "false",
        html5_onesie_host_probing: "false",
        html5_onesie_media_bytes: "false",
        html5_onesie_player_config: "false",
        html5_onesie_player_config_webfe: "false",
        html5_onesie_server_initial_format_selection: "false",
        html5_onesie_wait_for_media_availability: "false",
        html5_skip_setVideoData: "false",
        html5_streaming_xhr: "false"
    }
      , w = window.ytcfg;
    if (w) {
        const e = w.get("WEB_PLAYER_CONTEXT_CONFIGS");
        let t = e?.WEB_PLAYER_CONTEXT_CONFIG_ID_EMBEDDED_PLAYER?.serializedExperimentFlags;
        t && (Object.keys(v).forEach((e=>{
            const o = new RegExp(`(?<=${e}=)[^&]+(?<!&)`)
              , n = v[e];
            t.match(o) ? t = t.replace(o, n) : t += `&${e}=${n}`
        }
        )),
        e.WEB_PLAYER_CONTEXT_CONFIG_ID_EMBEDDED_PLAYER.serializedExperimentFlags = t,
        e.WEB_PLAYER_CONTEXT_CONFIG_ID_EMBEDDED_PLAYER.isEmbed = !1,
        console.log("[Holodex+]", "Sucessfully set overrides"))
    } else
        console.warn("[Holodex+]", "disablePlayability: ytcfg is missing");
    const P = {
        type: "audio_dl"
    }
      , E = o.ProtoframePubsub.iframe(P);
    E.handleAsk("fetchAudio", (async e=>{
        if (!e.videoId)
            return console.error("[Holodex+] No video ID"),
            Promise.resolve({
                state: "failed",
                msg: "No Video ID provided",
                format: void 0
            });
        try {
            let o = {
                context: (t = e.videoId,
                {
                    client: {
                        hl: "en",
                        clientName: "WEB",
                        clientVersion: "2.20210721.00.00",
                        clientFormFactor: "UNKNOWN_FORM_FACTOR",
                        clientScreen: "WATCH",
                        mainAppWebInfo: {
                            graftUrl: "/watch?v=" + t
                        }
                    },
                    user: {
                        lockedSafetyMode: !1
                    },
                    request: {
                        useSsl: !0,
                        internalExperimentFlags: [],
                        consistencyTokenJars: []
                    }
                }),
                videoId: e.videoId,
                playbackContext: {
                    contentPlaybackContext: {
                        vis: 0,
                        splay: !1,
                        autoCaptionsDefaultOn: !1,
                        autonavState: "STATE_NONE",
                        html5Preference: "HTML5_PREF_WANTS",
                        lactMilliseconds: "-1"
                    }
                },
                racyCheckOk: !1,
                contentCheckOk: !1
            };
            const n = "https://www.youtube.com/youtubei/v1/player?key=AIzaSyAO_FJ2SlqU8Q4STEHLGCilw_Y9_11qcW8";
            let r = {
                method: "POST",
                headers: {
                    "Content-Type": "application/json"
                },
                body: JSON.stringify(o)
            };
            const i = await fetch(n, r)
              , s = await i.json();
            console.log(s);
            const a = function(e) {
                const t = [...e.streamingData.adaptiveFormats, ...e.streamingData.formats].filter((e=>e.mimeType.includes("mp4a") || e.mimeType.includes("audio")));
                if (console.log(t),
                !t.length)
                    return null;
                const o = t.sort(((e,t)=>Number(e.contentLength) - Number(t.contentLength)))[0];
                return console.log(o),
                o
            }(s);
            return a ? (setTimeout((()=>async function(e) {
                const t = await fetch(e.url, {
                    method: "GET",
                    headers: {
                        "Content-Type": e.mimeType
                    }
                })
                  , o = Number(t.headers.get("Content-Length"));
                let n = 0;
                const r = t.body.getReader()
                  , i = [];
                for (; ; ) {
                    const e = await r.read();
                    if (e.done)
                        break;
                    i.push(e.value),
                    n += e.value.length;
                    const t = Math.round(n / o * 100);
                    E.tell("progress", {
                        percentage: .95 * t,
                        total: o
                    })
                }
                const s = new Uint8Array(n);
                let a = 0;
                for (const e of i)
                    s.set(e, a),
                    a += e.length;
                E.tell("progress", {
                    percentage: 100,
                    total: o
                }),
                E.tell("fetchAudioComplete", {
                    audio: s,
                    format: e
                })
            }(a)), 100),
            {
                state: "ok",
                msg: "in progress...",
                format: a
            }) : {
                state: "failed",
                msg: "No suitable format of Audio-Onlyfound. Please wait for Youtube to finish processing, or maybe you are unlucky.",
                format: void 0
            }
        } catch (e) {
            return {
                state: "failed",
                msg: "Error occured: " + new String(e || "???"),
                format: void 0
            }
        }
    }
    )),
    e.ytAudioDLProtocol = P,
    Object.defineProperty(e, "__esModule", {
        value: !0
    })
}({});
