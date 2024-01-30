const hyperchat = r'''
(()=>{
    "use strict";
    var e = {
        4017: (e,t)=>{
            Object.defineProperty(t, "__esModule", {
                value: !0
            }),
            t.hexToRgb = function(e) {
                var t = /^#?([a-f\d]{2})([a-f\d]{2})([a-f\d]{2})$/i.exec(e);
                return t ? {
                    r: parseInt(t[1], 16),
                    g: parseInt(t[2], 16),
                    b: parseInt(t[3], 16)
                } : null
            }
        }
        ,
        6537: (e,t,n)=>{
            Object.defineProperty(t, "__esModule", {
                value: !0
            });
            var s = n(7193);
            t.default = s.isDarkColor,
            e.exports = t.default
        }
        ,
        7193: (e,t,n)=>{
            Object.defineProperty(t, "__esModule", {
                value: !0
            }),
            t.isDarkColor = void 0;
            var s = n(4017);
            t.isDarkColor = function(e, t) {
                if (t && t.override) {
                    var n = Object.keys(t.override).find((function(t) {
                        return t.toLowerCase() === e.toLowerCase()
                    }
                    ));
                    if (void 0 !== n)
                        return t.override[n]
                }
                var l = (0,
                s.hexToRgb)(e)
                  , o = [l.r / 255, l.g / 255, l.b / 255].map((function(e) {
                    return e <= .03928 ? e / 12.92 : Math.pow((e + .055) / 1.055, 2.4)
                }
                ));
                return .2126 * o[0] + .7152 * o[1] + .0722 * o[2] <= .179
            }
        }
    }
      , t = {};
    function n(s) {
        var l = t[s];
        if (void 0 !== l)
            return l.exports;
        var o = t[s] = {
            exports: {}
        };
        return e[s](o, o.exports, n),
        o.exports
    }
    n.n = e=>{
        var t = e && e.__esModule ? ()=>e.default : ()=>e;
        return n.d(t, {
            a: t
        }),
        t
    }
    ,
    n.d = (e,t)=>{
        for (var s in t)
            n.o(t, s) && !n.o(e, s) && Object.defineProperty(e, s, {
                enumerable: !0,
                get: t[s]
            })
    }
    ,
    n.o = (e,t)=>Object.prototype.hasOwnProperty.call(e, t),
    (()=>{
        function e() {}
        const t = e=>e;
        function s(e, t) {
            for (const n in t)
                e[n] = t[n];
            return e
        }
        function l(e) {
            return e()
        }
        function o() {
            return Object.create(null)
        }
        function r(e) {
            e.forEach(l)
        }
        function a(e) {
            return "function" == typeof e
        }
        function i(e, t) {
            return e != e ? t == t : e !== t || e && "object" == typeof e || "function" == typeof e
        }
        let c;
        function u(e, t) {
            return c || (c = document.createElement("a")),
            c.href = t,
            e === c.href
        }
        function d(e) {
            return 0 === Object.keys(e).length
        }
        function f(t, ...n) {
            if (null == t)
                return e;
            const s = t.subscribe(...n);
            return s.unsubscribe ? ()=>s.unsubscribe() : s
        }
        function m(e, t, n) {
            e.$$.on_destroy.push(f(t, n))
        }
        function p(e, t, n, s) {
            if (e) {
                const l = $(e, t, n, s);
                return e[0](l)
            }
        }
        function $(e, t, n, l) {
            return e[1] && l ? s(n.ctx.slice(), e[1](l(t))) : n.ctx
        }
        function g(e, t, n, s) {
            if (e[2] && s) {
                const l = e[2](s(n));
                if (void 0 === t.dirty)
                    return l;
                if ("object" == typeof l) {
                    const e = []
                      , n = Math.max(t.dirty.length, l.length);
                    for (let s = 0; s < n; s += 1)
                        e[s] = t.dirty[s] | l[s];
                    return e
                }
                return t.dirty | l
            }
            return t.dirty
        }
        function h(e, t, n, s, l, o) {
            if (l) {
                const r = $(t, n, s, o);
                e.p(r, l)
            }
        }
        function b(e) {
            if (e.ctx.length > 32) {
                const t = []
                  , n = e.ctx.length / 32;
                for (let e = 0; e < n; e++)
                    t[e] = -1;
                return t
            }
            return -1
        }
        function y(e) {
            const t = {};
            for (const n in e)
                "$" !== n[0] && (t[n] = e[n]);
            return t
        }
        function x(e) {
            return null == e ? "" : e
        }
        function v(e, t, n) {
            return e.set(n),
            t
        }
        function w(t) {
            return t && a(t.destroy) ? t.destroy : e
        }
        const k = "undefined" != typeof window;
        let C = k ? ()=>window.performance.now() : ()=>Date.now()
          , S = k ? e=>requestAnimationFrame(e) : e;
        const E = new Set;
        function I(e) {
            E.forEach((t=>{
                t.c(e) || (E.delete(t),
                t.f())
            }
            )),
            0 !== E.size && S(I)
        }
        function L(e) {
            let t;
            return 0 === E.size && S(I),
            {
                promise: new Promise((n=>{
                    E.add(t = {
                        c: e,
                        f: n
                    })
                }
                )),
                abort() {
                    E.delete(t)
                }
            }
        }
        let T = !1;
        function _(e, t) {
            e.appendChild(t)
        }
        function O(e, t, n) {
            const s = R(e);
            if (!s.getElementById(t)) {
                const e = B("style");
                e.id = t,
                e.textContent = n,
                P(s, e)
            }
        }
        function R(e) {
            if (!e)
                return document;
            const t = e.getRootNode ? e.getRootNode() : e.ownerDocument;
            return t && t.host ? t : e.ownerDocument
        }
        function A(e) {
            const t = B("style");
            return P(R(e), t),
            t.sheet
        }
        function P(e, t) {
            _(e.head || e, t)
        }
        function M(e, t, n) {
            e.insertBefore(t, n || null)
        }
        function D(e) {
            e.parentNode.removeChild(e)
        }
        function H(e, t) {
            for (let n = 0; n < e.length; n += 1)
                e[n] && e[n].d(t)
        }
        function B(e) {
            return document.createElement(e)
        }
        function z(e) {
            return document.createElementNS("http://www.w3.org/2000/svg", e)
        }
        function N(e) {
            return document.createTextNode(e)
        }
        function U() {
            return N(" ")
        }
        function j() {
            return N("")
        }
        function F(e, t, n, s) {
            return e.addEventListener(t, n, s),
            ()=>e.removeEventListener(t, n, s)
        }
        function Y(e, t, n) {
            null == n ? e.removeAttribute(t) : e.getAttribute(t) !== n && e.setAttribute(t, n)
        }
        function K(e, t) {
            const n = Object.getOwnPropertyDescriptors(e.__proto__);
            for (const s in t)
                null == t[s] ? e.removeAttribute(s) : "style" === s ? e.style.cssText = t[s] : "__value" === s ? e.value = e[s] = t[s] : n[s] && n[s].set ? e[s] = t[s] : Y(e, s, t[s])
        }
        function W(e, t) {
            t = "" + t,
            e.wholeText !== t && (e.data = t)
        }
        function G(e, t, n, s) {
            null === n ? e.style.removeProperty(t) : e.style.setProperty(t, n, s ? "important" : "")
        }
        function q(e, t, n) {
            e.classList[n ? "add" : "remove"](t)
        }
        function V(e, t, {bubbles: n=!1, cancelable: s=!1}={}) {
            const l = document.createEvent("CustomEvent");
            return l.initCustomEvent(e, n, s, t),
            l
        }
        const X = new Map;
        let J, Z = 0;
        function Q(e, t, n, s, l, o, r, a=0) {
            const i = 16.666 / s;
            let c = "{\n";
            for (let e = 0; e <= 1; e += i) {
                const s = t + (n - t) * o(e);
                c += 100 * e + `%{${r(s, 1 - s)}}\n`
            }
            const u = c + `100% {${r(n, 1 - n)}}\n}`
              , d = `__svelte_${function(e) {
                lett = 5381
                  , n = e.length;
                for (; n--; )
                    t = (t << 5) - t ^ e.charCodeAt(n);
                return t >>> 0
            }(u)}_${a}`
              , f = R(e)
              , {stylesheet: m, rules: p} = X.get(f) || function(e, t) {
                const n = {
                    stylesheet: A(t),
                    rules: {}
                };
                return X.set(e, n),
                n
            }(f, e);
            p[d] || (p[d] = !0,
            m.insertRule(`@keyframes ${d} ${u}`, m.cssRules.length));
            const $ = e.style.animation || "";
            return e.style.animation = `${$ ? `${$}, ` : ""}${d} ${s}ms linear ${l}ms 1 both`,
            Z += 1,
            d
        }
        function ee(e, t) {
            const n = (e.style.animation || "").split(", ")
              , s = n.filter(t ? e=>e.indexOf(t) < 0 : e=>-1 === e.indexOf("__svelte"))
              , l = n.length - s.length;
            l && (e.style.animation = s.join(", "),
            Z -= l,
            Z || S((()=>{
                Z || (X.forEach((e=>{
                    const {stylesheet: t} = e;
                    let n = t.cssRules.length;
                    for (; n--; )
                        t.deleteRule(n);
                    e.rules = {}
                }
                )),
                X.clear())
            }
            )))
        }
        function te(e) {
            J = e
        }
        function ne() {
            if (!J)
                throw new Error("Function called outside component initialization");
            return J
        }
        function se(e) {
            ne().$$.on_destroy.push(e)
        }
        function le() {
            const e = ne();
            return (t,n,{cancelable: s=!1}={})=>{
                const l = e.$$.callbacks[t];
                if (l) {
                    const o = V(t, n, {
                        cancelable: s
                    });
                    return l.slice().forEach((t=>{
                        t.call(e, o)
                    }
                    )),
                    !o.defaultPrevented
                }
                return !0
            }
        }
        function oe(e, t) {
            const n = e.$$.callbacks[t.type];
            n && n.slice().forEach((e=>e.call(this, t)))
        }
        const re = []
          , ae = []
          , ie = []
          , ce = []
          , ue = Promise.resolve();
        let de = !1;
        function fe() {
            de || (de = !0,
            ue.then(ye))
        }
        function me() {
            return fe(),
            ue
        }
        function pe(e) {
            ie.push(e)
        }
        function $e(e) {
            ce.push(e)
        }
        const ge = new Set;
        let he, be = 0;
        function ye() {
            const e = J;
            do {
                for (; be < re.length; ) {
                    const e = re[be];
                    be++,
                    te(e),
                    xe(e.$$)
                }
                for (te(null),
                re.length = 0,
                be = 0; ae.length; )
                    ae.pop()();
                for (let e = 0; e < ie.length; e += 1) {
                    const t = ie[e];
                    ge.has(t) || (ge.add(t),
                    t())
                }
                ie.length = 0
            } while (re.length);
            for (; ce.length; )
                ce.pop()();
            de = !1,
            ge.clear(),
            te(e)
        }
        function xe(e) {
            if (null !== e.fragment) {
                e.update(),
                r(e.before_update);
                const t = e.dirty;
                e.dirty = [-1],
                e.fragment && e.fragment.p(e.ctx, t),
                e.after_update.forEach(pe)
            }
        }
        function ve() {
            return he || (he = Promise.resolve(),
            he.then((()=>{
                he = null
            }
            ))),
            he
        }
        function we(e, t, n) {
            e.dispatchEvent(V(`${t ? "intro" : "outro"}${n}`))
        }
        const ke = new Set;
        let Ce;
        function Se() {
            Ce = {
                r: 0,
                c: [],
                p: Ce
            }
        }
        function Ee() {
            Ce.r || r(Ce.c),
            Ce = Ce.p
        }
        function Ie(e, t) {
            e && e.i && (ke.delete(e),
            e.i(t))
        }
        function Le(e, t, n, s) {
            if (e && e.o) {
                if (ke.has(e))
                    return;
                ke.add(e),
                Ce.c.push((()=>{
                    ke.delete(e),
                    s && (n && e.d(1),
                    s())
                }
                )),
                e.o(t)
            } else
                s && s()
        }
        const Te = {
            duration: 0
        };
        function _e(n, s, l) {
            let o, r, i = s(n, l), c = !1, u = 0;
            function d() {
                o && ee(n, o)
            }
            function f() {
                const {delay: s=0, duration: l=300, easing: a=t, tick: f=e, css: m} = i || Te;
                m && (o = Q(n, 0, 1, l, s, a, m, u++)),
                f(0, 1);
                const p = C() + s
                  , $ = p + l;
                r && r.abort(),
                c = !0,
                pe((()=>we(n, !0, "start"))),
                r = L((e=>{
                    if (c) {
                        if (e >= $)
                            return f(1, 0),
                            we(n, !0, "end"),
                            d(),
                            c = !1;
                        if (e >= p) {
                            const t = a((e - p) / l);
                            f(t, 1 - t)
                        }
                    }
                    return c
                }
                ))
            }
            let m = !1;
            return {
                start() {
                    m || (m = !0,
                    ee(n),
                    a(i) ? (i = i(),
                    ve().then(f)) : f())
                },
                invalidate() {
                    m = !1
                },
                end() {
                    c && (d(),
                    c = !1)
                }
            }
        }
        function Oe(n, s, l) {
            let o, i = s(n, l), c = !0;
            const u = Ce;
            function d() {
                const {delay: s=0, duration: l=300, easing: a=t, tick: d=e, css: f} = i || Te;
                f && (o = Q(n, 1, 0, l, s, a, f));
                const m = C() + s
                  , p = m + l;
                pe((()=>we(n, !1, "start"))),
                L((e=>{
                    if (c) {
                        if (e >= p)
                            return d(0, 1),
                            we(n, !1, "end"),
                            --u.r || r(u.c),
                            !1;
                        if (e >= m) {
                            const t = a((e - m) / l);
                            d(1 - t, t)
                        }
                    }
                    return c
                }
                ))
            }
            return u.r += 1,
            a(i) ? ve().then((()=>{
                i = i(),
                d()
            }
            )) : d(),
            {
                end(e) {
                    e && i.tick && i.tick(1, 0),
                    c && (o && ee(n, o),
                    c = !1)
                }
            }
        }
        function Re(n, s, l, o) {
            let i = s(n, l)
              , c = o ? 0 : 1
              , u = null
              , d = null
              , f = null;
            function m() {
                f && ee(n, f)
            }
            function p(e, t) {
                const n = e.b - c;
                return t *= Math.abs(n),
                {
                    a: c,
                    b: e.b,
                    d: n,
                    duration: t,
                    start: e.start,
                    end: e.start + t,
                    group: e.group
                }
            }
            function $(s) {
                const {delay: l=0, duration: o=300, easing: a=t, tick: $=e, css: g} = i || Te
                  , h = {
                    start: C() + l,
                    b: s
                };
                s || (h.group = Ce,
                Ce.r += 1),
                u || d ? d = h : (g && (m(),
                f = Q(n, c, s, o, l, a, g)),
                s && $(0, 1),
                u = p(h, o),
                pe((()=>we(n, s, "start"))),
                L((e=>{
                    if (d && e > d.start && (u = p(d, o),
                    d = null,
                    we(n, u.b, "start"),
                    g && (m(),
                    f = Q(n, c, u.b, u.duration, 0, a, i.css))),
                    u)
                        if (e >= u.end)
                            $(c = u.b, 1 - c),
                            we(n, u.b, "end"),
                            d || (u.b ? m() : --u.group.r || r(u.group.c)),
                            u = null;
                        else if (e >= u.start) {
                            const t = e - u.start;
                            c = u.a + u.d * a(t / u.duration),
                            $(c, 1 - c)
                        }
                    return !(!u && !d)
                }
                )))
            }
            return {
                run(e) {
                    a(i) ? ve().then((()=>{
                        i = i(),
                        $(e)
                    }
                    )) : $(e)
                },
                end() {
                    m(),
                    u = d = null
                }
            }
        }
        const Ae = "undefined" != typeof window ? window : "undefined" != typeof globalThis ? globalThis : global;
        function Pe(e, t) {
            Le(e, 1, 1, (()=>{
                t.delete(e.key)
            }
            ))
        }
        function Me(e, t, n, s, l, o, r, a, i, c, u, d) {
            let f = e.length
              , m = o.length
              , p = f;
            const $ = {};
            for (; p--; )
                $[e[p].key] = p;
            const g = []
              , h = new Map
              , b = new Map;
            for (p = m; p--; ) {
                const e = d(l, o, p)
                  , a = n(e);
                let i = r.get(a);
                i ? s && i.p(e, t) : (i = c(a, e),
                i.c()),
                h.set(a, g[p] = i),
                a in $ && b.set(a, Math.abs(p - $[a]))
            }
            const y = new Set
              , x = new Set;
            function v(e) {
                Ie(e, 1),
                e.m(a, u),
                r.set(e.key, e),
                u = e.first,
                m--
            }
            for (; f && m; ) {
                const t = g[m - 1]
                  , n = e[f - 1]
                  , s = t.key
                  , l = n.key;
                t === n ? (u = t.first,
                f--,
                m--) : h.has(l) ? !r.has(s) || y.has(s) ? v(t) : x.has(l) ? f-- : b.get(s) > b.get(l) ? (x.add(s),
                v(t)) : (y.add(l),
                f--) : (i(n, r),
                f--)
            }
            for (; f--; ) {
                const t = e[f];
                h.has(t.key) || i(t, r)
            }
            for (; m; )
                v(g[m - 1]);
            return g
        }
        function De(e, t) {
            const n = {}
              , s = {}
              , l = {
                $$scope: 1
            };
            let o = e.length;
            for (; o--; ) {
                const r = e[o]
                  , a = t[o];
                if (a) {
                    for (const e in r)
                        e in a || (s[e] = 1);
                    for (const e in a)
                        l[e] || (n[e] = a[e],
                        l[e] = 1);
                    e[o] = a
                } else
                    for (const e in r)
                        l[e] = 1
            }
            for (const e in s)
                e in n || (n[e] = void 0);
            return n
        }
        function He(e) {
            return "object" == typeof e && null !== e ? e : {}
        }
        let Be;
        function ze(e, t, n) {
            const s = e.$$.props[t];
            void 0 !== s && (e.$$.bound[s] = n,
            n(e.$$.ctx[s]))
        }
        function Ne(e) {
            e && e.c()
        }
        function Ue(e, t, n, s) {
            const {fragment: o, on_mount: i, on_destroy: c, after_update: u} = e.$$;
            o && o.m(t, n),
            s || pe((()=>{
                const t = i.map(l).filter(a);
                c ? c.push(...t) : r(t),
                e.$$.on_mount = []
            }
            )),
            u.forEach(pe)
        }
        function je(e, t) {
            const n = e.$$;
            null !== n.fragment && (r(n.on_destroy),
            n.fragment && n.fragment.d(t),
            n.on_destroy = n.fragment = null,
            n.ctx = [])
        }
        function Fe(t, n, s, l, a, i, c, u=[-1]) {
            const d = J;
            te(t);
            const f = t.$$ = {
                fragment: null,
                ctx: null,
                props: i,
                update: e,
                not_equal: a,
                bound: o(),
                on_mount: [],
                on_destroy: [],
                on_disconnect: [],
                before_update: [],
                after_update: [],
                context: new Map(n.context || (d ? d.$$.context : [])),
                callbacks: o(),
                dirty: u,
                skip_bound: !1,
                root: n.target || d.$$.root
            };
            c && c(f.root);
            let m = !1;
            if (f.ctx = s ? s(t, n.props || {}, ((e,n,...s)=>{
                const l = s.length ? s[0] : n;
                return f.ctx && a(f.ctx[e], f.ctx[e] = l) && (!f.skip_bound && f.bound[e] && f.bound[e](l),
                m && function(e, t) {
                    -1 === e.$$.dirty[0] && (re.push(e),
                    fe(),
                    e.$$.dirty.fill(0)),
                    e.$$.dirty[t / 31 | 0] |= 1 << t % 31
                }(t, e)),
                n
            }
            )) : [],
            f.update(),
            m = !0,
            r(f.before_update),
            f.fragment = !!l && l(f.ctx),
            n.target) {
                if (n.hydrate) {
                    T = !0;
                    const e = (p = n.target,
                    Array.from(p.childNodes));
                    f.fragment && f.fragment.l(e),
                    e.forEach(D)
                } else
                    f.fragment && f.fragment.c();
                n.intro && Ie(t.$$.fragment),
                Ue(t, n.target, n.anchor, n.customElement),
                T = !1,
                ye()
            }
            var p;
            te(d)
        }
        new Set(["allowfullscreen", "allowpaymentrequest", "async", "autofocus", "autoplay", "checked", "controls", "default", "defer", "disabled", "formnovalidate", "hidden", "ismap", "loop", "multiple", "muted", "nomodule", "novalidate", "open", "playsinline", "readonly", "required", "reversed", "selected"]),
        "function" == typeof HTMLElement && (Be = class extends HTMLElement {
            constructor() {
                super(),
                this.attachShadow({
                    mode: "open"
                })
            }
            connectedCallback() {
                const {on_mount: e} = this.$$;
                this.$$.on_disconnect = e.map(l).filter(a);
                for (const e in this.$$.slotted)
                    this.appendChild(this.$$.slotted[e])
            }
            attributeChangedCallback(e, t, n) {
                this[e] = n
            }
            disconnectedCallback() {
                r(this.$$.on_disconnect)
            }
            $destroy() {
                je(this, 1),
                this.$destroy = e
            }
            $on(e, t) {
                const n = this.$$.callbacks[e] || (this.$$.callbacks[e] = []);
                return n.push(t),
                ()=>{
                    const e = n.indexOf(t);
                    -1 !== e && n.splice(e, 1)
                }
            }
            $set(e) {
                this.$$set && !d(e) && (this.$$.skip_bound = !0,
                this.$$set(e),
                this.$$.skip_bound = !1)
            }
        }
        );
        class Ye {
            $destroy() {
                je(this, 1),
                this.$destroy = e
            }
            $on(e, t) {
                const n = this.$$.callbacks[e] || (this.$$.callbacks[e] = []);
                return n.push(t),
                ()=>{
                    const e = n.indexOf(t);
                    -1 !== e && n.splice(e, 1)
                }
            }
            $set(e) {
                this.$$set && !d(e) && (this.$$.skip_bound = !0,
                this.$$set(e),
                this.$$.skip_bound = !1)
            }
        }
        function Ke(e) {
            const t = e - 1;
            return t * t * t + 1
        }
        function We(e) {
            return e * e
        }
        function Ge(e) {
            return -e * (e - 2)
        }
        function qe(e, {delay: n=0, duration: s=400, easing: l=t}={}) {
            const o = +getComputedStyle(e).opacity;
            return {
                delay: n,
                duration: s,
                easing: l,
                css: e=>"opacity: " + e * o
            }
        }
        function Ve(e, {delay: t=0, duration: n=400, easing: s=Ke, x: l=0, y: o=0, opacity: r=0}={}) {
            const a = getComputedStyle(e)
              , i = +a.opacity
              , c = "none" === a.transform ? "" : a.transform
              , u = i * (1 - r);
            return {
                delay: t,
                duration: n,
                easing: s,
                css: (e,t)=>`\n\t\t\ttransform: ${c} translate(${(1 - e) * l}px, ${(1 - e) * o}px);\n\t\t\topacity: ${i - u * t}`
            }
        }
        function Xe(e, {delay: t=0, duration: n=400, easing: s=Ke}={}) {
            const l = getComputedStyle(e)
              , o = +l.opacity
              , r = parseFloat(l.height)
              , a = parseFloat(l.paddingTop)
              , i = parseFloat(l.paddingBottom)
              , c = parseFloat(l.marginTop)
              , u = parseFloat(l.marginBottom)
              , d = parseFloat(l.borderTopWidth)
              , f = parseFloat(l.borderBottomWidth);
            return {
                delay: t,
                duration: n,
                easing: s,
                css: e=>`overflow: hidden;opacity: ${Math.min(20 * e, 1) * o};height: ${e * r}px;padding-top: ${e * a}px;padding-bottom: ${e * i}px;margin-top: ${e * c}px;margin-bottom: ${e * u}px;border-top-width: ${e * d}px;border-bottom-width: ${e * f}px;`
            }
        }
        function Je(e, {delay: t=0, duration: n=400, easing: s=Ke, start: l=0, opacity: o=0}={}) {
            const r = getComputedStyle(e)
              , a = +r.opacity
              , i = "none" === r.transform ? "" : r.transform
              , c = 1 - l
              , u = a * (1 - o);
            return {
                delay: t,
                duration: n,
                easing: s,
                css: (e,t)=>`\n\t\t\ttransform: ${i} scale(${1 - c * t});\n\t\t\topacity: ${a - u * t}\n\t\t`
            }
        }
        const Ze = [];
        function Qe(e, t) {
            return {
                subscribe: et(e, t).subscribe
            }
        }
        function et(t, n=e) {
            let s;
            const l = new Set;
            function o(e) {
                if (i(t, e) && (t = e,
                s)) {
                    const e = !Ze.length;
                    for (const e of l)
                        e[1](),
                        Ze.push(e, t);
                    if (e) {
                        for (let e = 0; e < Ze.length; e += 2)
                            Ze[e][0](Ze[e + 1]);
                        Ze.length = 0
                    }
                }
            }
            return {
                set: o,
                update: function(e) {
                    o(e(t))
                },
                subscribe: function(r, a=e) {
                    const i = [r, a];
                    return l.add(i),
                    1 === l.size && (s = n(o) || e),
                    r(t),
                    ()=>{
                        l.delete(i),
                        0 === l.size && (s(),
                        s = null)
                    }
                }
            }
        }
        function tt(t, n, s) {
            const l = !Array.isArray(t)
              , o = l ? [t] : t
              , i = n.length < 2;
            return Qe(s, (t=>{
                let s = !1;
                const c = [];
                let u = 0
                  , d = e;
                const m = ()=>{
                    if (u)
                        return;
                    d();
                    const s = n(l ? c[0] : c, t);
                    i ? t(s) : d = a(s) ? s : e
                }
                  , p = o.map(((e,t)=>f(e, (e=>{
                    c[t] = e,
                    u &= ~(1 << t),
                    s && m()
                }
                ), (()=>{
                    u |= 1 << t
                }
                ))));
                return s = !0,
                m(),
                function() {
                    r(p),
                    d()
                }
            }
            ))
        }
        let nt;
        function st(e=!1, t="mode-dark") {
            return "undefined" == typeof window ? et(e) : (nt || (nt = et(e || !!window.matchMedia && (!!window.matchMedia("(prefers-color-scheme: dark)").matches || void 0))),
            {
                subscribe: nt.subscribe,
                set: e=>{
                    t.split(" ").forEach((t=>{
                        e ? document.body.classList.add(t) : document.body.classList.remove(t)
                    }
                    )),
                    nt.set(e)
                }
            })
        }
        const lt = {
            af: "Afrikaans",
            sq: "Albanian",
            am: "Amharic",
            ar: "Arabic",
            hy: "Armenian",
            az: "Azerbaijani",
            eu: "Basque",
            be: "Belarusian",
            bn: "Bengali",
            bs: "Bosnian",
            bg: "Bulgarian",
            ca: "Catalan",
            ceb: "Cebuano",
            ny: "Chichewa",
            "zh-CN": "Chinese (Simplified)",
            "zh-TW": "Chinese (Traditional)",
            co: "Corsican",
            hr: "Croatian",
            cs: "Czech",
            da: "Danish",
            nl: "Dutch",
            en: "English",
            eo: "Esperanto",
            et: "Estonian",
            tl: "Filipino",
            fi: "Finnish",
            fr: "French",
            fy: "Frisian",
            gl: "Galician",
            ka: "Georgian",
            de: "German",
            el: "Greek",
            gu: "Gujarati",
            ht: "Haitian Creole",
            ha: "Hausa",
            haw: "Hawaiian",
            iw: "Hebrew",
            hi: "Hindi",
            hmn: "Hmong",
            hu: "Hungarian",
            is: "Icelandic",
            ig: "Igbo",
            id: "Indonesian",
            ga: "Irish",
            it: "Italian",
            ja: "Japanese",
            jw: "Javanese",
            kn: "Kannada",
            kk: "Kazakh",
            km: "Khmer",
            rw: "Kinyarwanda",
            ko: "Korean",
            ku: "Kurdish (Kurmanji)",
            ky: "Kyrgyz",
            lo: "Lao",
            la: "Latin",
            lv: "Latvian",
            lt: "Lithuanian",
            lb: "Luxembourgish",
            mk: "Macedonian",
            mg: "Malagasy",
            ms: "Malay",
            ml: "Malayalam",
            mt: "Maltese",
            mi: "Maori",
            mr: "Marathi",
            mn: "Mongolian",
            my: "Myanmar (Burmese)",
            ne: "Nepali",
            no: "Norwegian",
            or: "Odia (Oriya)",
            ps: "Pashto",
            fa: "Persian",
            pl: "Polish",
            pt: "Portuguese",
            pa: "Punjabi",
            ro: "Romanian",
            ru: "Russian",
            sm: "Samoan",
            gd: "Scots Gaelic",
            sr: "Serbian",
            st: "Sesotho",
            sn: "Shona",
            sd: "Sindhi",
            si: "Sinhala",
            sk: "Slovak",
            sl: "Slovenian",
            so: "Somali",
            es: "Spanish",
            su: "Sundanese",
            sw: "Swahili",
            sv: "Swedish",
            tg: "Tajik",
            ta: "Tamil",
            tt: "Tatar",
            te: "Telugu",
            th: "Thai",
            tr: "Turkish",
            tk: "Turkmen",
            uk: "Ukrainian",
            ur: "Urdu",
            ug: "Uyghur",
            uz: "Uzbek",
            vi: "Vietnamese",
            cy: "Welsh",
            xh: "Xhosa",
            yi: "Yiddish",
            yo: "Yoruba",
            zu: "Zulu"
        };
        var ot;
        !function(e) {
            e[e.FIREFOX = 0] = "FIREFOX",
            e[e.CHROME = 1] = "CHROME",
            e[e.SAFARI = 2] = "SAFARI",
            e[e.ANDROID = 3] = "ANDROID"
        }(ot || (ot = {}));
        const rt = new URLSearchParams(window.location.search)
          , at = rt.get("tabid")
          , it = rt.get("frameid")
          , ct = rt.get("isReplay");
        var ut, dt, ft, mt;
        !function(e) {
            e.YOUTUBE = "YOUTUBE",
            e.LIGHT = "LIGHT",
            e.DARK = "DARK"
        }(ut || (ut = {})),
        ut.YOUTUBE,
        ut.LIGHT,
        ut.DARK,
        function(e) {
            e.SHOW_ALL = "SHOW_ALL",
            e.BLOCK_SPAM = "BLOCK_SPAM",
            e.HIDE_ALL = "HIDE_ALL"
        }(dt || (dt = {})),
        dt.SHOW_ALL,
        dt.BLOCK_SPAM,
        dt.HIDE_ALL,
        function(e) {
            e.BLOCK = "BLOCK",
            e.REPORT_USER = "REPORT_USER"
        }(ft || (ft = {})),
        function(e) {
            e.UNWANTED_SPAM = "UNWANTED_SPAM",
            e.PORN_OR_SEX = "PORN_OR_SEX",
            e.CHILD_ABUSE = "CHILD_ABUSE",
            e.HATE_SPEECH = "HATE_SPEECH",
            e.TERRORISM = "TERRORISM",
            e.HARASSMENT = "HARASSMENT",
            e.SUICIDE = "SUICIDE",
            e.MISINFORMATION = "MISINFORMATION"
        }(mt || (mt = {}));
        const pt = [{
            value: mt.UNWANTED_SPAM,
            label: "Unwanted commercial content or spam"
        }, {
            value: mt.PORN_OR_SEX,
            label: "Pornography or sexually explicit material"
        }, {
            value: mt.CHILD_ABUSE,
            label: "Child abuse"
        }, {
            value: mt.HATE_SPEECH,
            label: "Hate speech or graphic violence"
        }, {
            value: mt.TERRORISM,
            label: "Promotes terrorism"
        }, {
            value: mt.HARASSMENT,
            label: "Harassment or bullying"
        }, {
            value: mt.SUICIDE,
            label: "Suicide or self injury"
        }, {
            value: mt.MISINFORMATION,
            label: "Misinformation"
        }]
          , $t = [{
            value: ft.BLOCK,
            text: "Block user",
            icon: "block",
            messages: {
                success: "The user has been blocked, and you will no longer see their messages. It may take several minutes for the setting to take full effect. You can unblock users in the settings panel at any time.",
                error: "There was an error blocking the user. It is possible that this user has already been blocked. If not, please try again later."
            }
        }, {
            value: ft.REPORT_USER,
            text: "Report user",
            icon: "flag",
            messages: {
                success: "The user has been reported for review by YouTube staff.",
                error: "There was an error reporting the user. Please try again later."
            }
        }]
          , gt = "0f9d58"
          , ht = "107516"
          , bt = (location.protocol.includes("youtube") && (location.protocol,
        location.host),
        function(e=function(e="local") {
            const {storageArea: t, addOnChangedListener: n, cleanUp: s} = function(e, t) {
                const n = []
                  , s = "webExt" === e ? browser.storage : chrome.storage;
                if (null == s)
                    throw new TypeError("storage is undefined. Perhaps the storage permission is not granted?");
                return {
                    storageArea: s[t],
                    addOnChangedListener: function(e) {
                        const l = (n,s)=>{
                            s === t && e(n)
                        }
                        ;
                        s.onChanged.addListener(l),
                        n.push(l)
                    },
                    cleanUp: function() {
                        n.forEach((e=>s.onChanged.removeListener(e)))
                    }
                }
            }("chrome", e);
            function l(e, t, n) {
                const s = chrome.runtime.lastError;
                null == s ? t(e) : n(s)
            }
            return {
                get: async function(e) {
                    return await new Promise(((n,s)=>t.get(e, (t=>l(t[e], n, s)))))
                },
                set: async function(e, n) {
                    return await new Promise(((s,o)=>t.set({
                        [e]: n
                    }, (()=>l(void 0, s, o)))))
                },
                remove: async function(e) {
                    return await new Promise(((n,s)=>t.remove(e, (()=>l(void 0, n, s)))))
                },
                clear: async function() {
                    return await new Promise(((e,n)=>t.clear((()=>l(void 0, e, n)))))
                },
                addOnChangedListener: n,
                cleanUp: s
            }
        }()) {
            const t = new Map;
            function n(n, s, l=!0, o) {
                const r = function(e, t, n, s, l) {
                    let o = t
                      , r = !1;
                    const a = et(t)
                      , i = e;
                    async function c() {
                        if (!r) {
                            if (await async function() {
                                const s = await n.get(e);
                                void 0 !== s ? u(s) : await n.set(e, t)
                            }(),
                            null != (null == l ? void 0 : l.migrations))
                                for (const [e,t] of l.migrations.entries()) {
                                    const s = -1 === e ? i : `${i}${l.seperator}${e}`
                                      , o = await n.get(s);
                                    if (void 0 === o)
                                        continue;
                                    const r = t(o);
                                    await d(r),
                                    await n.remove(s)
                                }
                            r = !0
                        }
                    }
                    function u(e) {
                        a.set(e),
                        o = e
                    }
                    async function d(t) {
                        t !== o && (u(t),
                        await n.set(e, t))
                    }
                    return null != l && (e = `${i}${l.seperator}${l.version}`),
                    {
                        subscribe: function(e) {
                            return c().then((()=>{
                                "function" != typeof e && console.log(e),
                                e(o)
                            }
                            )).catch((e=>console.error(e))),
                            a.subscribe(e)
                        },
                        get: async function() {
                            return await c(),
                            o
                        },
                        set: d,
                        setRaw: function(e) {
                            e !== o && u(e)
                        },
                        getCurrent: function() {
                            return o
                        },
                        reset: async function() {
                            await d(t)
                        },
                        ready: c,
                        syncFromExternal: s,
                        key: e,
                        update: async function(e) {
                            return await d(e(o))
                        }
                    }
                }(n, s, e, l, o);
                return t.set(n, r),
                r
            }
            return e.addOnChangedListener((e=>{
                Object.keys(e).forEach((n=>{
                    const s = e[n]
                      , l = t.get(n);
                    null != l && l.syncFromExternal && l.setRaw(s.newValue)
                }
                ))
            }
            )),
            {
                addSyncStore: n,
                addLookupStore: function(e, t, s=!0, l) {
                    return o = n(e, t, s, l),
                    Object.assign(Object.assign({}, o), {
                        getItem: async function(e) {
                            return (await o.get())[e]
                        },
                        setItem: async function(e, t) {
                            const n = Object.assign({}, await o.get());
                            n[e] = t,
                            await o.set(n)
                        }
                    });
                },
                addCustomStore: function(n) {
                    const s = n(e);
                    return t.set(s.key, s),
                    s
                },
                _clear: async function() {
                    for (const n of t.keys())
                        await e.remove(n);
                    t.clear()
                },
                exportJson: async function() {
                    const e = {};
                    for (const [n,s] of t)
                        e[n] = await s.get();
                    return JSON.stringify(e)
                },
                importJson: async function(e) {
                    const n = JSON.parse(e);
                    for (const [e,s] of Object.entries(n)) {
                        const n = t.get(e);
                        null != n && await n.set(s)
                    }
                }
            }
        }())
          , yt = (bt.addSyncStore("hc.enabled", !0),
        bt.addSyncStore("hc.translateTargetLanguage", ""))
          , xt = Qe(null, (e=>{
            let t = null;
            const n = ()=>{
                null !== t && (t.destroy(),
                t = null),
                e(null)
            }
              , s = yt.subscribe((async s=>{
                s ? t || (t = await function(e="https://kentonishi.github.io/iframe-translator") {
                    return new Promise((t=>{
                        const n = document.querySelector("#iframe-translator") || document.createElement("iframe");
                        n.src = e,
                        n.id = "iframe-translator",
                        n.style.position = "fixed",
                        n.style.top = "0px",
                        n.style.left = "0px",
                        n.style.width = "100%",
                        n.style.height = "100%",
                        n.style.zIndex = "1000000000",
                        n.style.pointerEvents = "none",
                        n.style.border = "none",
                        n.style.filter = "opacity(0)",
                        n.style.touchAction = "none";
                        let s = {};
                        function l(e, t="en") {
                            const l = `iframe-translator-${function(e) {
                                lett = "";
                                for (lete = 0; e < 69; e++)
                                    t += "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789".charAt(Math.floor(62 * Math.random()));
                                return t
                            }()}`;
                            return new Promise((o=>{
                                s[l] = o,
                                n.contentWindow.postMessage(JSON.stringify({
                                    messageID: l,
                                    type: "request",
                                    targetLanguage: lt[t],
                                    text: e
                                }), "*")
                            }
                            ))
                        }
                        function o(e) {
                            try {
                                const n = JSON.parse(e.data);
                                if ("loaded" === n.type)
                                    return void t({
                                        translate: l,
                                        destroy: r
                                    });
                                const {messageID: o, type: a, text: i} = n;
                                "response" === a && (s[o](i),
                                delete s[o])
                            } catch (e) {}
                        }
                        function r() {
                            document.body.removeChild(n),
                            s = {},
                            window.removeEventListener("message", o)
                        }
                        window.addEventListener("message", o),
                        document.body.appendChild(n)
                    }
                    ))
                }(),
                e(t)) : n()
            }
            ));
            return yt.ready().then((()=>{
                const e = yt.getCurrent();
                if (!(e in lt)) {
                    const t = Object.keys(lt).find((t=>lt[t] === e));
                    yt.set(t ?? "").catch(console.error)
                }
            }
            )).catch(console.error),
            ()=>{
                s(),
                n()
            }
        }
        ))
          , vt = et(!1)
          , wt = bt.addSyncStore("hc.theme", ut.YOUTUBE)
          , kt = bt.addSyncStore("hc.messages.showProfileIcons", !1)
          , Ct = bt.addSyncStore("hc.messages.showUsernames", !0)
          , St = bt.addSyncStore("hc.messages.showTimestamps", !1)
          , Et = bt.addSyncStore("hc.messages.showUserBadges", !0)
          , It = bt.addSyncStore("hc.lastClosedVersion", "")
          , Lt = bt.addSyncStore("hc.showOnlyMemberChat", !1)
          , Tt = bt.addSyncStore("hc.emojiRenderMode", dt.SHOW_ALL)
          , _t = (bt.addSyncStore("hc.autoLiveChat", !1),
        bt.addSyncStore("hc.useSystemEmojis", !1))
          , Ot = et(null)
          , Rt = et(null)
          , At = et(null)
          , Pt = et(null)
          , Mt = tt(Pt, (e=>e?.channelId))
          , Dt = tt(Pt, (e=>e?.name))
          , Ht = et(null)
          , Bt = et(null)
          , zt = et([])
          , Nt = (tt(wt, (e=>e === ut.DARK || e === ut.YOUTUBE && window.location.search.includes("dark"))),
        et(!1))
          , Ut = et(null)
          , jt = bt.addSyncStore("hc.enableStickySuperchatBar", !0)
          , Ft = bt.addSyncStore("hc.enableHighlightedMentions", !0)
          , Yt = bt.addSyncStore("hc.lastOpenedVersion", "");
        function Kt(t) {
            let n, s, l;
            return {
                c() {
                    n = B("ul"),
                    n.innerHTML = '<strong>On today&#39;s KFP menu:</strong> \n  <li class="ml-3.5">Fixed hangs caused by malformed blue superchats</li> \n  <li class="ml-3.5">Fixed role indicators for verified moderators</li>',
                    s = U(),
                    l = B("ul"),
                    l.innerHTML = '<strong>What we&#39;re still cooking:</strong> \n  <li class="ml-3.5">Manifest v3 migration (nearing completion!)</li> \n  <li class="ml-3.5">Cross-extension compatibility (e.g. rikaikun, 10ten)</li> \n  <li class="ml-3.5">Improved support for raids, polls, Q&amp;A, etc.</li>',
                    Y(n, "class", "list-disc list-inside"),
                    Y(l, "class", "list-disc list-inside")
                },
                m(e, t) {
                    M(e, n, t),
                    M(e, s, t),
                    M(e, l, t)
                },
                p: e,
                i: e,
                o: e,
                d(e) {
                    e && D(n),
                    e && D(s),
                    e && D(l)
                }
            }
        }
        function Wt(e) {
            return []
        }
        const Gt = class extends Ye {
            constructor(e) {
                super(),
                Fe(this, e, Wt, Kt, i, {})
            }
        }
          , qt = {
            i8: "2.6.11"
        };
        function Vt(e) {
            let t, n, s, l, o;
            const r = e[7].default
              , a = p(r, e, e[6], null);
            return {
                c() {
                    t = B("i"),
                    a && a.c(),
                    Y(t, "aria-hidden", "true"),
                    Y(t, "class", e[3]),
                    Y(t, "style", n = e[4].style ?? ""),
                    q(t, "block", e[0]),
                    q(t, "text-base", e[1]),
                    q(t, "text-xs", e[2])
                },
                m(n, r) {
                    M(n, t, r),
                    a && a.m(t, null),
                    s = !0,
                    l || (o = F(t, "click", e[8]),
                    l = !0)
                },
                p(e, [l]) {
                    a && a.p && (!s || 64 & l) && h(a, r, e, e[6], s ? g(r, e[6], l, null) : b(e[6]), null),
                    (!s || 8 & l) && Y(t, "class", e[3]),
                    (!s || 16 & l && n !== (n = e[4].style ?? "")) && Y(t, "style", n),
                    9 & l && q(t, "block", e[0]),
                    10 & l && q(t, "text-base", e[1]),
                    12 & l && q(t, "text-xs", e[2])
                },
                i(e) {
                    s || (Ie(a, e),
                    s = !0)
                },
                o(e) {
                    Le(a, e),
                    s = !1
                },
                d(e) {
                    e && D(t),
                    a && a.d(e),
                    l = !1,
                    o()
                }
            }
        }
        function Xt(e, t, n) {
            let l, {$$slots: o={}, $$scope: r} = t;
            var a;
            let {block: i=!0} = t
              , {small: c=!1} = t
              , {xs: u=!1} = t;
            return e.$$set = e=>{
                n(4, t = s(s({}, t), y(e))),
                "block"in e && n(0, i = e.block),
                "small"in e && n(1, c = e.small),
                "xs"in e && n(2, u = e.xs),
                "$$scope"in e && n(6, r = e.$$scope)
            }
            ,
            e.$$.update = ()=>{
                n(3, l = "material-icons icon select-none duration-200 ease-in " + (null !== n(5, a = t.class) && void 0 !== a ? a : ""))
            }
            ,
            t = y(t),
            [i, c, u, l, t, a, r, o, function(t) {
                oe.call(this, e, t)
            }
            ]
        }
        const Jt = class extends Ye {
            constructor(e) {
                super(),
                Fe(this, e, Xt, Vt, i, {
                    block: 0,
                    small: 1,
                    xs: 2
                })
            }
        }
        ;
        function Zt(e) {
            O(e, "svelte-18qz4tx", "@keyframes svelte-18qz4tx-float{0%{transform:translateY(0)}50%{transform:translateY(-3px)}100%{transform:translateY(0)}}.kiwawa-hat.svelte-18qz4tx{position:absolute;top:-10px;left:-5px;max-width:unset;width:55px;animation:svelte-18qz4tx-float 1s ease-in-out infinite}")
        }
        function Qt(e, t, n) {
            const s = e.slice();
            return s[9] = t[n],
            s[11] = n,
            s
        }
        function en(t) {
            let n, s;
            return {
                c() {
                    n = N("v"),
                    s = N(qt.i8)
                },
                m(e, t) {
                    M(e, n, t),
                    M(e, s, t)
                },
                p: e,
                d(e) {
                    e && D(n),
                    e && D(s)
                }
            }
        }
        function tn(t) {
            let n, s, l;
            return {
                c() {
                    n = B("a"),
                    n.textContent = `v${qt.i8}`,
                    Y(n, "href", "/"),
                    Y(n, "class", "underline text-primary-900 dark:text-primary-50")
                },
                m(e, o) {
                    M(e, n, o),
                    s || (l = F(n, "click", t[6]),
                    s = !0)
                },
                p: e,
                d(e) {
                    e && D(n),
                    s = !1,
                    l()
                }
            }
        }
        function nn(t) {
            let n, s, l, o, r, a, i = t[9].name + "", c = t[11] !== t[5].length - 1 && function(e) {
                let t;
                return {
                    c() {
                        t = B("span"),
                        t.textContent = "/",
                        G(t, "margin", "0px 0.2em")
                    },
                    m(e, n) {
                        M(e, t, n)
                    },
                    d(e) {
                        e && D(t)
                    }
                }
            }();
            return {
                c() {
                    n = B("p"),
                    s = B("a"),
                    l = N(i),
                    r = U(),
                    c && c.c(),
                    a = j(),
                    Y(s, "href", o = t[9].href),
                    Y(s, "class", "underline text-primary-900 dark:text-primary-50"),
                    Y(s, "target", "_blank")
                },
                m(e, t) {
                    M(e, n, t),
                    _(n, s),
                    _(s, l),
                    M(e, r, t),
                    c && c.m(e, t),
                    M(e, a, t)
                },
                p: e,
                d(e) {
                    e && D(n),
                    e && D(r),
                    c && c.d(e),
                    e && D(a)
                }
            }
        }
        function sn(e) {
            let t, n, s, l, o, r, a, i, c;
            return s = new Jt({
                props: {
                    xs: !0,
                    class: "text-error-500 dark:text-error-200 font-bold",
                    $$slots: {
                        default: [ln]
                    },
                    $$scope: {
                        ctx: e
                    }
                }
            }),
            r = new Gt({}),
            {
                c() {
                    t = B("p"),
                    n = B("span"),
                    Ne(s.$$.fragment),
                    l = U(),
                    o = B("span"),
                    Ne(r.$$.fragment),
                    Y(n, "href", "/"),
                    Y(n, "class", "inline-block align-middle cursor-pointer pt-0.5 h-fit"),
                    Y(o, "class", "mr-0.5 w-full"),
                    Y(t, "class", "leading-tight mt-1.5 flex flex-row")
                },
                m(u, d) {
                    M(u, t, d),
                    _(t, n),
                    Ue(s, n, null),
                    _(t, l),
                    _(t, o),
                    Ue(r, o, null),
                    a = !0,
                    i || (c = F(n, "click", e[7]),
                    i = !0)
                },
                p(e, t) {
                    const n = {};
                    4096 & t && (n.$$scope = {
                        dirty: t,
                        ctx: e
                    }),
                    s.$set(n)
                },
                i(e) {
                    a || (Ie(s.$$.fragment, e),
                    Ie(r.$$.fragment, e),
                    a = !0)
                },
                o(e) {
                    Le(s.$$.fragment, e),
                    Le(r.$$.fragment, e),
                    a = !1
                },
                d(e) {
                    e && D(t),
                    je(s),
                    je(r),
                    i = !1,
                    c()
                }
            }
        }
        function ln(e) {
            let t;
            return {
                c() {
                    t = N("close")
                },
                m(e, n) {
                    M(e, t, n)
                },
                d(e) {
                    e && D(t)
                }
            }
        }
        function on(e) {
            let t, n, s, l, o, r, a, i, c, d, f, m, p, $, g, h;
            function b(e, t) {
                return e[1] ? en : tn
            }
            let y = b(e)
              , v = y(e)
              , w = e[5]
              , k = [];
            for (let t = 0; t < w.length; t += 1)
                k[t] = nn(Qt(e, w, t));
            let C = e[1] && sn(e);
            return {
                c() {
                    t = B("div"),
                    n = B("div"),
                    s = B("div"),
                    l = B("img"),
                    r = U(),
                    a = B("span"),
                    i = B("h5"),
                    i.textContent = "HyperChat by LiveTL",
                    c = U(),
                    d = B("p"),
                    f = N("Optimized YouTube Chat\n        /\n        "),
                    v.c(),
                    m = U(),
                    p = B("div");
                    for (let e = 0; e < k.length; e += 1)
                        k[e].c();
                    $ = U(),
                    C && C.c(),
                    Y(l, "class", "rounded-full"),
                    Y(l, "width", "44"),
                    Y(l, "height", "44"),
                    u(l.src, o = e[3]) || Y(l, "src", o),
                    Y(l, "alt", "logo"),
                    Y(s, "class", "relative"),
                    Y(i, "class", "font-bold"),
                    Y(p, "class", "flex flex-wrap"),
                    Y(a, "class", "ml-2 leading-tight"),
                    Y(n, "class", "flex items-center w-full"),
                    Y(t, "class", g = x(e[4]) + " svelte-18qz4tx")
                },
                m(e, o) {
                    M(e, t, o),
                    _(t, n),
                    _(n, s),
                    _(s, l),
                    _(n, r),
                    _(n, a),
                    _(a, i),
                    _(a, c),
                    _(a, d),
                    _(d, f),
                    v.m(d, null),
                    _(a, m),
                    _(a, p);
                    for (let e = 0; e < k.length; e += 1)
                        k[e].m(p, null);
                    _(t, $),
                    C && C.m(t, null),
                    h = !0
                },
                p(e, [n]) {
                    if (y === (y = b(e)) && v ? v.p(e, n) : (v.d(1),
                    v = y(e),
                    v && (v.c(),
                    v.m(d, null))),
                    32 & n) {
                        let t;
                        for (w = e[5],
                        t = 0; t < w.length; t += 1) {
                            const s = Qt(e, w, t);
                            k[t] ? k[t].p(s, n) : (k[t] = nn(s),
                            k[t].c(),
                            k[t].m(p, null))
                        }
                        for (; t < k.length; t += 1)
                            k[t].d(1);
                        k.length = w.length
                    }
                    e[1] ? C ? (C.p(e, n),
                    2 & n && Ie(C, 1)) : (C = sn(e),
                    C.c(),
                    Ie(C, 1),
                    C.m(t, null)) : C && (Se(),
                    Le(C, 1, 1, (()=>{
                        C = null
                    }
                    )),
                    Ee())
                },
                i(e) {
                    h || (Ie(C),
                    h = !0)
                },
                o(e) {
                    Le(C),
                    h = !1
                },
                d(e) {
                    e && D(t),
                    v.d(),
                    H(k, e),
                    C && C.d()
                }
            }
        }
        function rn(e, t, n) {
            let s, l, o;
            m(e, It, (e=>n(0, l = e))),
            m(e, vt, (e=>n(2, o = e)));
            const r = chrome.runtime.getURL("hyperchat/logo.png")
              , a = [{
                name: "Review",
                href: (navigator.userAgent.includes("Firefox") ? ot.FIREFOX : null == window.chrome ? ot.ANDROID : /^((?!chrome|android).)*safari/i.test(navigator.userAgent) ? ot.SAFARI : ot.CHROME) === ot.FIREFOX ? "https://addons.mozilla.org/en-US/firefox/addon/hyperchat/" : "https://chrome.google.com/webstore/detail/hyperchat-optimized-youtu/naipgebhooiiccifflecbffmnjbabdbh"
            }, {
                name: "GitHub",
                href: "https://github.com/LiveTL/HyperChat/"
            }, {
                name: "Discord",
                href: "https://discord.gg/uJrV3tmthg"
            }, {
                name: "Donate",
                href: "https://opencollective.com/livetl"
            }];
            return e.$$.update = ()=>{
                1 & e.$$.dirty && n(1, s = l !== qt.i8)
            }
            ,
            [l, s, o, r, "p-2 rounded inline-flex flex-col overflow-hidden bg-secondary-50 dark:bg-secondary-600 w-full", a, e=>{
                v(It, l = "", l),
                v(vt, o = !0, o),
                e.preventDefault()
            }
            , e=>{
                v(It, l = qt.i8, l),
                v(vt, o = !0, o),
                e.preventDefault()
            }
            ]
        }
        const an = class extends Ye {
            constructor(e) {
                super(),
                Fe(this, e, rn, on, i, {}, Zt)
            }
        }
        ;
        function cn(e) {
            O(e, "svelte-g0o36m", ".shifted-icon.svelte-g0o36m .material-icons{transform:translateY(1px)}")
        }
        function un(e) {
            let t, n, s;
            return n = new Jt({
                props: {
                    xs: !0,
                    block: !1,
                    $$slots: {
                        default: [dn]
                    },
                    $$scope: {
                        ctx: e
                    }
                }
            }),
            {
                c() {
                    t = B("span"),
                    Ne(n.$$.fragment),
                    Y(t, "class", "shifted-icon svelte-g0o36m")
                },
                m(e, l) {
                    M(e, t, l),
                    Ue(n, t, null),
                    s = !0
                },
                i(e) {
                    s || (Ie(n.$$.fragment, e),
                    s = !0)
                },
                o(e) {
                    Le(n.$$.fragment, e),
                    s = !1
                },
                d(e) {
                    e && D(t),
                    je(n)
                }
            }
        }
        function dn(e) {
            let t;
            return {
                c() {
                    t = N("translate")
                },
                m(e, n) {
                    M(e, t, n)
                },
                d(e) {
                    e && D(t)
                }
            }
        }
        function fn(e) {
            let t, n, s, l, o, r, a, i, c = (e[4] ? e[1] : e[0]) + "", u = e[1] && un(e);
            return {
                c() {
                    t = B("span"),
                    n = B("span"),
                    s = N(c),
                    l = U(),
                    u && u.c(),
                    Y(t, "class", o = x(e[4] ? e[3] : "") + " svelte-g0o36m"),
                    q(t, "cursor-pointer", e[1]),
                    q(t, "entrance-animation", e[1])
                },
                m(o, c) {
                    M(o, t, c),
                    _(t, n),
                    _(n, s),
                    _(t, l),
                    u && u.m(t, null),
                    r = !0,
                    a || (i = F(t, "click", e[10]),
                    a = !0)
                },
                p(e, [n]) {
                    (!r || 19 & n) && c !== (c = (e[4] ? e[1] : e[0]) + "") && W(s, c),
                    e[1] ? u ? 2 & n && Ie(u, 1) : (u = un(e),
                    u.c(),
                    Ie(u, 1),
                    u.m(t, null)) : u && (Se(),
                    Le(u, 1, 1, (()=>{
                        u = null
                    }
                    )),
                    Ee()),
                    (!r || 24 & n && o !== (o = x(e[4] ? e[3] : "") + " svelte-g0o36m")) && Y(t, "class", o),
                    26 & n && q(t, "cursor-pointer", e[1]),
                    26 & n && q(t, "entrance-animation", e[1])
                },
                i(e) {
                    r || (Ie(u),
                    r = !0)
                },
                o(e) {
                    Le(u),
                    r = !1
                },
                d(e) {
                    e && D(t),
                    u && u.d(),
                    a = !1,
                    i()
                }
            }
        }
        function mn(e, t, n) {
            let s, l, o, r, a;
            m(e, yt, (e=>n(8, o = e))),
            m(e, vt, (e=>n(5, r = e))),
            m(e, xt, (e=>n(9, a = e)));
            let {forceTLColor: i=ut.YOUTUBE} = t
              , {text: c} = t
              , u = ""
              , d = ""
              , f = !1;
            return e.$$set = e=>{
                "forceTLColor"in e && n(6, i = e.forceTLColor),
                "text"in e && n(0, c = e.text)
            }
            ,
            e.$$.update = ()=>{
                769 & e.$$.dirty && o && a && a.translate(c, o).then((e=>{
                    e !== c && (n(7, d = o),
                    n(1, u = e),
                    v(vt, r = !0, r))
                }
                )),
                384 & e.$$.dirty && o !== d && (n(1, u = ""),
                n(7, d = "")),
                7 & e.$$.dirty && n(4, s = Boolean(u && !f && u.trim() !== c.trim())),
                64 & e.$$.dirty && n(3, l = i === ut.DARK ? "text-translated-dark" : "text-translated-light " + (i === ut.YOUTUBE ? "dark:text-translated-dark" : ""))
            }
            ,
            [c, u, f, l, s, r, i, d, o, a, ()=>{
                u && (n(2, f = !f),
                v(vt, r = !0, r))
            }
            ]
        }
        const pn = class extends Ye {
            constructor(e) {
                super(),
                Fe(this, e, mn, fn, i, {
                    forceTLColor: 6,
                    text: 0
                }, cn)
            }
        }
        ;
        function $n(e, t, n) {
            const s = e.slice();
            return s[8] = t[n],
            s
        }
        function gn(e) {
            let t, n, s, l = e[0], o = [];
            for (let t = 0; t < l.length; t += 1)
                o[t] = Cn($n(e, l, t));
            const r = e=>Le(o[e], 1, 1, (()=>{
                o[e] = null
            }
            ));
            return {
                c() {
                    t = B("span");
                    for (let e = 0; e < o.length; e += 1)
                        o[e].c();
                    Y(t, "class", n = "cursor-auto align-middle " + e[3] + " " + (e[6].class ?? "")),
                    G(t, "word-break", "break-word")
                },
                m(e, n) {
                    M(e, t, n);
                    for (let e = 0; e < o.length; e += 1)
                        o[e].m(t, null);
                    s = !0
                },
                p(e, a) {
                    if (55 & a) {
                        let n;
                        for (l = e[0],
                        n = 0; n < l.length; n += 1) {
                            const s = $n(e, l, n);
                            o[n] ? (o[n].p(s, a),
                            Ie(o[n], 1)) : (o[n] = Cn(s),
                            o[n].c(),
                            Ie(o[n], 1),
                            o[n].m(t, null))
                        }
                        for (Se(),
                        n = l.length; n < o.length; n += 1)
                            r(n);
                        Ee()
                    }
                    (!s || 72 & a && n !== (n = "cursor-auto align-middle " + e[3] + " " + (e[6].class ?? ""))) && Y(t, "class", n)
                },
                i(e) {
                    if (!s) {
                        for (let e = 0; e < l.length; e += 1)
                            Ie(o[e]);
                        s = !0
                    }
                },
                o(e) {
                    o = o.filter(Boolean);
                    for (let e = 0; e < o.length; e += 1)
                        Le(o[e]);
                    s = !1
                },
                d(e) {
                    e && D(t),
                    H(o, e)
                }
            }
        }
        function hn(t) {
            let n;
            function s(e, t) {
                return e[8].standardEmoji && e[5] ? vn : e[8].src ? xn : void 0
            }
            let l = s(t)
              , o = l && l(t);
            return {
                c() {
                    o && o.c(),
                    n = j()
                },
                m(e, t) {
                    o && o.m(e, t),
                    M(e, n, t)
                },
                p(e, t) {
                    l === (l = s(e)) && o ? o.p(e, t) : (o && o.d(1),
                    o = l && l(e),
                    o && (o.c(),
                    o.m(n.parentNode, n)))
                },
                i: e,
                o: e,
                d(e) {
                    o && o.d(e),
                    e && D(n)
                }
            }
        }
        function bn(t) {
            let n, s, l, o, r = t[8].text + "";
            return {
                c() {
                    n = B("a"),
                    s = N(r),
                    l = U(),
                    Y(n, "class", "inline underline align-middle"),
                    Y(n, "href", o = t[8].url),
                    Y(n, "target", "_blank")
                },
                m(e, t) {
                    M(e, n, t),
                    _(n, s),
                    _(n, l)
                },
                p(e, t) {
                    1 & t && r !== (r = e[8].text + "") && W(s, r),
                    1 & t && o !== (o = e[8].url) && Y(n, "href", o)
                },
                i: e,
                o: e,
                d(e) {
                    e && D(n)
                }
            }
        }
        function yn(e) {
            let t, n, s, l;
            const o = [kn, wn]
              , r = [];
            function a(e, t) {
                return e[1] ? 0 : 1
            }
            return t = a(e),
            n = r[t] = o[t](e),
            {
                c() {
                    n.c(),
                    s = j()
                },
                m(e, n) {
                    r[t].m(e, n),
                    M(e, s, n),
                    l = !0
                },
                p(e, l) {
                    let i = t;
                    t = a(e),
                    t === i ? r[t].p(e, l) : (Se(),
                    Le(r[i], 1, 1, (()=>{
                        r[i] = null
                    }
                    )),
                    Ee(),
                    n = r[t],
                    n ? n.p(e, l) : (n = r[t] = o[t](e),
                    n.c()),
                    Ie(n, 1),
                    n.m(s.parentNode, s))
                },
                i(e) {
                    l || (Ie(n),
                    l = !0)
                },
                o(e) {
                    Le(n),
                    l = !1
                },
                d(e) {
                    r[t].d(e),
                    e && D(s)
                }
            }
        }
        function xn(e) {
            let t, n, s, l;
            return {
                c() {
                    t = B("img"),
                    Y(t, "class", "h-5 w-5 inline mx-0.5 align-middle"),
                    u(t.src, n = e[8].src) || Y(t, "src", n),
                    Y(t, "alt", s = e[8].alt),
                    Y(t, "title", l = e[8].alt)
                },
                m(e, n) {
                    M(e, t, n)
                },
                p(e, o) {
                    1 & o && !u(t.src, n = e[8].src) && Y(t, "src", n),
                    1 & o && s !== (s = e[8].alt) && Y(t, "alt", s),
                    1 & o && l !== (l = e[8].alt) && Y(t, "title", l)
                },
                d(e) {
                    e && D(t)
                }
            }
        }
        function vn(e) {
            let t, n, s, l = e[8].alt + "";
            return {
                c() {
                    t = B("span"),
                    n = N(l),
                    s = U(),
                    Y(t, "class", "cursor-auto align-middle text-base")
                },
                m(e, l) {
                    M(e, t, l),
                    _(t, n),
                    _(t, s)
                },
                p(e, t) {
                    1 & t && l !== (l = e[8].alt + "") && W(n, l)
                },
                d(e) {
                    e && D(t)
                }
            }
        }
        function wn(e) {
            let t, n;
            return t = new pn({
                props: {
                    text: e[8].text,
                    forceTLColor: e[2]
                }
            }),
            {
                c() {
                    Ne(t.$$.fragment)
                },
                m(e, s) {
                    Ue(t, e, s),
                    n = !0
                },
                p(e, n) {
                    const s = {};
                    1 & n && (s.text = e[8].text),
                    4 & n && (s.forceTLColor = e[2]),
                    t.$set(s)
                },
                i(e) {
                    n || (Ie(t.$$.fragment, e),
                    n = !0)
                },
                o(e) {
                    Le(t.$$.fragment, e),
                    n = !1
                },
                d(e) {
                    je(t, e)
                }
            }
        }
        function kn(t) {
            let n, s, l = t[8].text + "";
            return {
                c() {
                    n = B("span"),
                    s = N(l)
                },
                m(e, t) {
                    M(e, n, t),
                    _(n, s)
                },
                p(e, t) {
                    1 & t && l !== (l = e[8].text + "") && W(s, l)
                },
                i: e,
                o: e,
                d(e) {
                    e && D(n)
                }
            }
        }
        function Cn(e) {
            let t, n, s, l;
            const o = [yn, bn, hn]
              , r = [];
            function a(e, t) {
                return "text" === e[8].type ? 0 : "link" === e[8].type ? 1 : "emoji" === e[8].type && e[4] !== dt.HIDE_ALL ? 2 : -1
            }
            return ~(t = a(e)) && (n = r[t] = o[t](e)),
            {
                c() {
                    n && n.c(),
                    s = j()
                },
                m(e, n) {
                    ~t && r[t].m(e, n),
                    M(e, s, n),
                    l = !0
                },
                p(e, l) {
                    let i = t;
                    t = a(e),
                    t === i ? ~t && r[t].p(e, l) : (n && (Se(),
                    Le(r[i], 1, 1, (()=>{
                        r[i] = null
                    }
                    )),
                    Ee()),
                    ~t ? (n = r[t],
                    n ? n.p(e, l) : (n = r[t] = o[t](e),
                    n.c()),
                    Ie(n, 1),
                    n.m(s.parentNode, s)) : n = null)
                },
                i(e) {
                    l || (Ie(n),
                    l = !0)
                },
                o(e) {
                    Le(n),
                    l = !1
                },
                d(e) {
                    ~t && r[t].d(e),
                    e && D(s)
                }
            }
        }
        function Sn(e) {
            let t, n, s = e[0]?.length && gn(e);
            return {
                c() {
                    s && s.c(),
                    t = j()
                },
                m(e, l) {
                    s && s.m(e, l),
                    M(e, t, l),
                    n = !0
                },
                p(e, [n]) {
                    e[0]?.length ? s ? (s.p(e, n),
                    1 & n && Ie(s, 1)) : (s = gn(e),
                    s.c(),
                    Ie(s, 1),
                    s.m(t.parentNode, t)) : s && (Se(),
                    Le(s, 1, 1, (()=>{
                        s = null
                    }
                    )),
                    Ee())
                },
                i(e) {
                    n || (Ie(s),
                    n = !0)
                },
                o(e) {
                    Le(s),
                    n = !1
                },
                d(e) {
                    s && s.d(e),
                    e && D(t)
                }
            }
        }
        function En(e, t, n) {
            let l, o;
            m(e, Tt, (e=>n(4, l = e))),
            m(e, _t, (e=>n(5, o = e)));
            let {runs: r} = t
              , {forceDark: a=!1} = t
              , {deleted: i=!1} = t
              , {forceTLColor: c=ut.YOUTUBE} = t
              , u = "";
            return e.$$set = e=>{
                n(6, t = s(s({}, t), y(e))),
                "runs"in e && n(0, r = e.runs),
                "forceDark"in e && n(7, a = e.forceDark),
                "deleted"in e && n(1, i = e.deleted),
                "forceTLColor"in e && n(2, c = e.forceTLColor)
            }
            ,
            e.$$.update = ()=>{
                130 & e.$$.dirty && (i && a ? n(3, u = "text-deleted-dark italic") : i ? n(3, u = "text-deleted-light dark:text-deleted-dark italic") : i || n(3, u = ""))
            }
            ,
            t = y(t),
            [r, i, c, u, l, o, t, a]
        }
        const In = class extends Ye {
            constructor(e) {
                super(),
                Fe(this, e, En, Sn, i, {
                    runs: 0,
                    forceDark: 7,
                    deleted: 1,
                    forceTLColor: 2
                })
            }
        }
          , Ln = ["white", "black", "transparent"];
        function Tn(e, t, n, s) {
            return Ln.includes(t) ? `${e}-${t}` : `${e}-${t}-${n || s} `
        }
        class _n {
            constructor(e, t) {
                this.defaults = ("function" == typeof e ? e(t) : e) || t,
                this.classes = this.defaults
            }
            flush() {
                return this.classes = this.defaults,
                this
            }
            extend(...e) {
                return this
            }
            get() {
                return this.classes
            }
            replace(e, t=!0) {
                return t && e && (this.classes = Object.keys(e).reduce(((t,n)=>t.replace(new RegExp(n,"g"), e[n])), this.classes)),
                this
            }
            remove(e, t=!0) {
                return t && e && (this.classes = e.split(" ").reduce(((e,t)=>e.replace(new RegExp(t,"g"), "")), this.classes)),
                this
            }
            add(e, t=!0, n) {
                if (!t || !e)
                    return this;
                switch (typeof e) {
                case "string":
                default:
                    return this.classes += ` ${e} `,
                    this;
                case "function":
                    return this.classes += ` ${e(n || this.classes)} `,
                    this
                }
            }
        }
        const On = ["class", "add", "remove", "replace", "value"];
        function Rn(e) {
            O(e, "svelte-zzky5a", ".reverse.svelte-zzky5a{transform:rotate(180deg)}.tip.svelte-zzky5a{transform:rotate(90deg)}")
        }
        function An(e) {
            let t, n, s, l, o, r;
            const a = e[7].default
              , i = p(a, e, e[6], null);
            return {
                c() {
                    t = B("i"),
                    i && i.c(),
                    Y(t, "aria-hidden", "true"),
                    Y(t, "class", n = "material-icons icon text-xl select-none " + e[5].class + " duration-200 ease-in svelte-zzky5a"),
                    Y(t, "style", s = e[4] ? `color: ${e[4]}` : ""),
                    q(t, "reverse", e[2]),
                    q(t, "tip", e[3]),
                    q(t, "text-base", e[0]),
                    q(t, "text-xs", e[1])
                },
                m(n, s) {
                    M(n, t, s),
                    i && i.m(t, null),
                    l = !0,
                    o || (r = F(t, "click", e[8]),
                    o = !0)
                },
                p(e, [o]) {
                    i && i.p && (!l || 64 & o) && h(i, a, e, e[6], l ? g(a, e[6], o, null) : b(e[6]), null),
                    (!l || 32 & o && n !== (n = "material-icons icon text-xl select-none " + e[5].class + " duration-200 ease-in svelte-zzky5a")) && Y(t, "class", n),
                    (!l || 16 & o && s !== (s = e[4] ? `color: ${e[4]}` : "")) && Y(t, "style", s),
                    36 & o && q(t, "reverse", e[2]),
                    40 & o && q(t, "tip", e[3]),
                    33 & o && q(t, "text-base", e[0]),
                    34 & o && q(t, "text-xs", e[1])
                },
                i(e) {
                    l || (Ie(i, e),
                    l = !0)
                },
                o(e) {
                    Le(i, e),
                    l = !1
                },
                d(e) {
                    e && D(t),
                    i && i.d(e),
                    o = !1,
                    r()
                }
            }
        }
        function Pn(e, t, n) {
            let {$$slots: l={}, $$scope: o} = t
              , {small: r=!1} = t
              , {xs: a=!1} = t
              , {reverse: i=!1} = t
              , {tip: c=!1} = t
              , {color: u="default"} = t;
            return e.$$set = e=>{
                n(5, t = s(s({}, t), y(e))),
                "small"in e && n(0, r = e.small),
                "xs"in e && n(1, a = e.xs),
                "reverse"in e && n(2, i = e.reverse),
                "tip"in e && n(3, c = e.tip),
                "color"in e && n(4, u = e.color),
                "$$scope"in e && n(6, o = e.$$scope)
            }
            ,
            t = y(t),
            [r, a, i, c, u, t, o, l, function(t) {
                oe.call(this, e, t)
            }
            ]
        }
        const Mn = class extends Ye {
            constructor(e) {
                super(),
                Fe(this, e, Pn, An, i, {
                    small: 0,
                    xs: 1,
                    reverse: 2,
                    tip: 3,
                    color: 4
                }, Rn)
            }
        }
        ;
        function Dn(e="primary", t=!1) {
            return function(n) {
                const s = function(e, t) {
                    return function(n) {
                        const s = n.currentTarget
                          , l = document.createElement("span")
                          , o = Math.max(s.clientWidth, s.clientHeight)
                          , r = ()=>{
                            l.remove(),
                            l.removeEventListener("animationend", r)
                        }
                        ;
                        l.addEventListener("animationend", r),
                        l.style.width = l.style.height = `${o}px`;
                        const a = s.getBoundingClientRect();
                        t ? l.classList.add("absolute", "top-0", "left-0", "ripple-centered", `bg-${e}-transDark`) : (l.style.left = n.clientX - a.left - o / 2 + "px",
                        l.style.top = n.clientY - a.top - o / 2 + "px",
                        l.classList.add("ripple-normal", `bg-${e}-trans`)),
                        l.classList.add("ripple"),
                        s.appendChild(l)
                    }
                }(e, t);
                return n.addEventListener("mousedown", s),
                {
                    onDestroy: ()=>n.removeEventListener("mousedown", s)
                }
            }
        }
        function Hn(e) {
            let t, n;
            return t = new Mn({
                props: {
                    class: "pr-6",
                    small: e[3],
                    $$slots: {
                        default: [Bn]
                    },
                    $$scope: {
                        ctx: e
                    }
                }
            }),
            {
                c() {
                    Ne(t.$$.fragment)
                },
                m(e, s) {
                    Ue(t, e, s),
                    n = !0
                },
                p(e, n) {
                    const s = {};
                    8 & n && (s.small = e[3]),
                    8388609 & n && (s.$$scope = {
                        dirty: n,
                        ctx: e
                    }),
                    t.$set(s)
                },
                i(e) {
                    n || (Ie(t.$$.fragment, e),
                    n = !0)
                },
                o(e) {
                    Le(t.$$.fragment, e),
                    n = !1
                },
                d(e) {
                    je(t, e)
                }
            }
        }
        function Bn(e) {
            let t;
            return {
                c() {
                    t = N(e[0])
                },
                m(e, n) {
                    M(e, t, n)
                },
                p(e, n) {
                    1 & n && W(t, e[0])
                },
                d(e) {
                    e && D(t)
                }
            }
        }
        function zn(e) {
            let t, n;
            return {
                c() {
                    t = B("div"),
                    n = N(e[2]),
                    Y(t, "class", e[5])
                },
                m(e, s) {
                    M(e, t, s),
                    _(t, n)
                },
                p(e, s) {
                    4 & s && W(n, e[2]),
                    32 & s && Y(t, "class", e[5])
                },
                d(e) {
                    e && D(t)
                }
            }
        }
        function Nn(e) {
            let t, n, s, l, o, a, i, c, u, d, f = e[0] && Hn(e);
            const m = e[21].default
              , $ = p(m, e, e[23], null)
              , y = $ || function(e) {
                let t;
                return {
                    c() {
                        t = N(e[1])
                    },
                    m(e, n) {
                        M(e, t, n)
                    },
                    p(e, n) {
                        2 & n && W(t, e[1])
                    },
                    d(e) {
                        e && D(t)
                    }
                }
            }(e);
            let x = e[2] && zn(e);
            return {
                c() {
                    t = B("li"),
                    f && f.c(),
                    n = U(),
                    s = B("div"),
                    l = B("div"),
                    y && y.c(),
                    a = U(),
                    x && x.c(),
                    Y(l, "class", o = e[9].class),
                    Y(s, "class", "flex flex-col p-0"),
                    Y(t, "class", e[6]),
                    Y(t, "tabindex", e[4])
                },
                m(o, r) {
                    M(o, t, r),
                    f && f.m(t, null),
                    _(t, n),
                    _(t, s),
                    _(s, l),
                    y && y.m(l, null),
                    _(s, a),
                    x && x.m(s, null),
                    c = !0,
                    u || (d = [w(i = e[7].call(null, t)), F(t, "keypress", e[8]), F(t, "click", e[8]), F(t, "click", e[22])],
                    u = !0)
                },
                p(e, [r]) {
                    e[0] ? f ? (f.p(e, r),
                    1 & r && Ie(f, 1)) : (f = Hn(e),
                    f.c(),
                    Ie(f, 1),
                    f.m(t, n)) : f && (Se(),
                    Le(f, 1, 1, (()=>{
                        f = null
                    }
                    )),
                    Ee()),
                    $ ? $.p && (!c || 8388608 & r) && h($, m, e, e[23], c ? g(m, e[23], r, null) : b(e[23]), null) : y && y.p && (!c || 2 & r) && y.p(e, c ? r : -1),
                    (!c || 512 & r && o !== (o = e[9].class)) && Y(l, "class", o),
                    e[2] ? x ? x.p(e, r) : (x = zn(e),
                    x.c(),
                    x.m(s, null)) : x && (x.d(1),
                    x = null),
                    (!c || 64 & r) && Y(t, "class", e[6]),
                    (!c || 16 & r) && Y(t, "tabindex", e[4])
                },
                i(e) {
                    c || (Ie(f),
                    Ie(y, e),
                    c = !0)
                },
                o(e) {
                    Le(f),
                    Le(y, e),
                    c = !1
                },
                d(e) {
                    e && D(t),
                    f && f.d(),
                    y && y.d(e),
                    x && x.d(),
                    u = !1,
                    r(d)
                }
            }
        }
        const Un = "focus:bg-gray-50 dark-focus:bg-gray-700 hover:bg-gray-transDark relative overflow-hidden duration-100 p-4 cursor-pointer text-gray-700 dark:text-gray-100 flex items-center z-10"
          , jn = "bg-gray-200 dark:bg-primary-transLight"
          , Fn = "text-gray-600 p-0 text-sm"
          , Yn = "text-gray-600";
        function Kn(e, t, n) {
            let l, {$$slots: o={}, $$scope: r} = t, {icon: a=""} = t, {id: i=""} = t, {value: c=""} = t, {text: u=""} = t, {subheading: d=""} = t, {disabled: f=!1} = t, {dense: m=!1} = t, {selected: p=!1} = t, {tabindex: $=null} = t, {selectedClasses: g=jn} = t, {subheadingClasses: h=Fn} = t, {disabledClasses: b=Yn} = t, {to: x=""} = t;
            const v = Dn()
              , w = le();
            let {classes: k=Un} = t;
            const C = new _n(k,Un);
            return e.$$set = e=>{
                n(9, t = s(s({}, t), y(e))),
                "icon"in e && n(0, a = e.icon),
                "id"in e && n(11, i = e.id),
                "value"in e && n(10, c = e.value),
                "text"in e && n(1, u = e.text),
                "subheading"in e && n(2, d = e.subheading),
                "disabled"in e && n(12, f = e.disabled),
                "dense"in e && n(3, m = e.dense),
                "selected"in e && n(13, p = e.selected),
                "tabindex"in e && n(4, $ = e.tabindex),
                "selectedClasses"in e && n(14, g = e.selectedClasses),
                "subheadingClasses"in e && n(5, h = e.subheadingClasses),
                "disabledClasses"in e && n(15, b = e.disabledClasses),
                "to"in e && n(16, x = e.to),
                "classes"in e && n(20, k = e.classes),
                "$$scope"in e && n(23, r = e.$$scope)
            }
            ,
            e.$$.update = ()=>{
                n(6, l = C.flush().add(g, p, jn).add("py-2", m).add(b, f).add(t.class).get())
            }
            ,
            t = y(t),
            [a, u, d, m, $, h, l, v, function() {
                f || (n(10, c = i),
                w("change", i, x))
            }
            , t, c, i, f, p, g, b, x, null, [], null, k, o, function(t) {
                oe.call(this, e, t)
            }
            , r]
        }
        const Wn = class extends Ye {
            constructor(e) {
                super(),
                Fe(this, e, Kn, Nn, i, {
                    icon: 0,
                    id: 11,
                    value: 10,
                    text: 1,
                    subheading: 2,
                    disabled: 12,
                    dense: 3,
                    selected: 13,
                    tabindex: 4,
                    selectedClasses: 14,
                    subheadingClasses: 5,
                    disabledClasses: 15,
                    to: 16,
                    item: 17,
                    items: 18,
                    level: 19,
                    classes: 20
                })
            }
            get item() {
                return this.$$.ctx[17]
            }
            get items() {
                return this.$$.ctx[18]
            }
            get level() {
                return this.$$.ctx[19]
            }
        }
        ;
        function Gn(e, t, n) {
            const s = e.slice();
            return s[7] = t[n],
            s[23] = n,
            s
        }
        const qn = e=>({
            item: 2 & e,
            dense: 4 & e,
            value: 1 & e
        })
          , Vn = e=>({
            item: e[7],
            dense: e[2],
            value: e[0]
        })
          , Xn = e=>({
            item: 2 & e,
            dense: 4 & e,
            value: 1 & e
        })
          , Jn = e=>({
            item: e[7],
            dense: e[2],
            value: e[0]
        })
          , Zn = e=>({
            dense: 4 & e,
            value: 1 & e
        })
          , Qn = e=>({
            dense: e[2],
            value: e[0]
        });
        function es(e) {
            let t;
            const n = e[13].item
              , l = p(n, e, e[19], Vn)
              , o = l || function(e) {
                let t, n, l, o;
                const r = [{
                    selectedClasses: e[4]
                }, {
                    itemClasses: e[5]
                }, {
                    disabledClasses: e[6]
                }, e[7], {
                    tabindex: e[23] + 1
                }, {
                    id: as(e[7])
                }, {
                    selected: e[0] === as(e[7])
                }, {
                    dense: e[2]
                }];
                function a(t) {
                    e[16](t)
                }
                let i = {
                    $$slots: {
                        default: [ns]
                    },
                    $$scope: {
                        ctx: e
                    }
                };
                for (let e = 0; e < r.length; e += 1)
                    i = s(i, r[e]);
                return void 0 !== e[0] && (i.value = e[0]),
                t = new Wn({
                    props: i
                }),
                ae.push((()=>ze(t, "value", a))),
                t.$on("change", e[17]),
                t.$on("click", e[18]),
                {
                    c() {
                        Ne(t.$$.fragment),
                        l = U()
                    },
                    m(e, n) {
                        Ue(t, e, n),
                        M(e, l, n),
                        o = !0
                    },
                    p(e, s) {
                        const l = 119 & s ? De(r, [16 & s && {
                            selectedClasses: e[4]
                        }, 32 & s && {
                            itemClasses: e[5]
                        }, 64 & s && {
                            disabledClasses: e[6]
                        }, 2 & s && He(e[7]), r[4], 2 & s && {
                            id: as(e[7])
                        }, 3 & s && {
                            selected: e[0] === as(e[7])
                        }, 4 & s && {
                            dense: e[2]
                        }]) : {};
                        524290 & s && (l.$$scope = {
                            dirty: s,
                            ctx: e
                        }),
                        !n && 1 & s && (n = !0,
                        l.value = e[0],
                        $e((()=>n = !1))),
                        t.$set(l)
                    },
                    i(e) {
                        o || (Ie(t.$$.fragment, e),
                        o = !0)
                    },
                    o(e) {
                        Le(t.$$.fragment, e),
                        o = !1
                    },
                    d(e) {
                        je(t, e),
                        e && D(l)
                    }
                }
            }(e);
            return {
                c() {
                    o && o.c()
                },
                m(e, n) {
                    o && o.m(e, n),
                    t = !0
                },
                p(e, s) {
                    l ? l.p && (!t || 524295 & s) && h(l, n, e, e[19], t ? g(n, e[19], s, qn) : b(e[19]), Vn) : o && o.p && (!t || 7 & s) && o.p(e, t ? s : -1)
                },
                i(e) {
                    t || (Ie(o, e),
                    t = !0)
                },
                o(e) {
                    Le(o, e),
                    t = !1
                },
                d(e) {
                    o && o.d(e)
                }
            }
        }
        function ts(e) {
            let t;
            const n = e[13].item
              , l = p(n, e, e[19], Jn)
              , o = l || function(e) {
                let t, n, l, o, r, a, i;
                const c = [e[7], {
                    id: as(e[7])
                }, {
                    dense: e[2]
                }];
                function u(t) {
                    e[14](t)
                }
                let d = {
                    $$slots: {
                        default: [ss]
                    },
                    $$scope: {
                        ctx: e
                    }
                };
                for (let e = 0; e < c.length; e += 1)
                    d = s(d, c[e]);
                return void 0 !== e[0] && (d.value = e[0]),
                n = new Wn({
                    props: d
                }),
                ae.push((()=>ze(n, "value", u))),
                n.$on("change", e[15]),
                {
                    c() {
                        t = B("a"),
                        Ne(n.$$.fragment),
                        a = U(),
                        Y(t, "tabindex", o = e[23] + 1),
                        Y(t, "href", r = e[7].to)
                    },
                    m(e, s) {
                        M(e, t, s),
                        Ue(n, t, null),
                        M(e, a, s),
                        i = !0
                    },
                    p(e, s) {
                        const o = 6 & s ? De(c, [2 & s && He(e[7]), 2 & s && {
                            id: as(e[7])
                        }, 4 & s && {
                            dense: e[2]
                        }]) : {};
                        524290 & s && (o.$$scope = {
                            dirty: s,
                            ctx: e
                        }),
                        !l && 1 & s && (l = !0,
                        o.value = e[0],
                        $e((()=>l = !1))),
                        n.$set(o),
                        (!i || 2 & s && r !== (r = e[7].to)) && Y(t, "href", r)
                    },
                    i(e) {
                        i || (Ie(n.$$.fragment, e),
                        i = !0)
                    },
                    o(e) {
                        Le(n.$$.fragment, e),
                        i = !1
                    },
                    d(e) {
                        e && D(t),
                        je(n),
                        e && D(a)
                    }
                }
            }(e);
            return {
                c() {
                    o && o.c()
                },
                m(e, n) {
                    o && o.m(e, n),
                    t = !0
                },
                p(e, s) {
                    l ? l.p && (!t || 524295 & s) && h(l, n, e, e[19], t ? g(n, e[19], s, Xn) : b(e[19]), Jn) : o && o.p && (!t || 7 & s) && o.p(e, t ? s : -1)
                },
                i(e) {
                    t || (Ie(o, e),
                    t = !0)
                },
                o(e) {
                    Le(o, e),
                    t = !1
                },
                d(e) {
                    o && o.d(e)
                }
            }
        }
        function ns(e) {
            let t, n = is(e[7]) + "";
            return {
                c() {
                    t = N(n)
                },
                m(e, n) {
                    M(e, t, n)
                },
                p(e, s) {
                    2 & s && n !== (n = is(e[7]) + "") && W(t, n)
                },
                d(e) {
                    e && D(t)
                }
            }
        }
        function ss(e) {
            let t, n = e[7].text + "";
            return {
                c() {
                    t = N(n)
                },
                m(e, n) {
                    M(e, t, n)
                },
                p(e, s) {
                    2 & s && n !== (n = e[7].text + "") && W(t, n)
                },
                d(e) {
                    e && D(t)
                }
            }
        }
        function ls(e) {
            let t, n, s, l;
            const o = [ts, es]
              , r = [];
            function a(e, t) {
                return void 0 !== e[7].to ? 0 : 1
            }
            return t = a(e),
            n = r[t] = o[t](e),
            {
                c() {
                    n.c(),
                    s = j()
                },
                m(e, n) {
                    r[t].m(e, n),
                    M(e, s, n),
                    l = !0
                },
                p(e, l) {
                    let i = t;
                    t = a(e),
                    t === i ? r[t].p(e, l) : (Se(),
                    Le(r[i], 1, 1, (()=>{
                        r[i] = null
                    }
                    )),
                    Ee(),
                    n = r[t],
                    n ? n.p(e, l) : (n = r[t] = o[t](e),
                    n.c()),
                    Ie(n, 1),
                    n.m(s.parentNode, s))
                },
                i(e) {
                    l || (Ie(n),
                    l = !0)
                },
                o(e) {
                    Le(n),
                    l = !1
                },
                d(e) {
                    r[t].d(e),
                    e && D(s)
                }
            }
        }
        function os(e) {
            let t, n;
            const s = e[13].items
              , l = p(s, e, e[19], Qn)
              , o = l || function(e) {
                let t, n, s = e[1], l = [];
                for (let t = 0; t < s.length; t += 1)
                    l[t] = ls(Gn(e, s, t));
                const o = e=>Le(l[e], 1, 1, (()=>{
                    l[e] = null
                }
                ));
                return {
                    c() {
                        for (let e = 0; e < l.length; e += 1)
                            l[e].c();
                        t = j()
                    },
                    m(e, s) {
                        for (let t = 0; t < l.length; t += 1)
                            l[t].m(e, s);
                        M(e, t, s),
                        n = !0
                    },
                    p(e, n) {
                        if (524407 & n) {
                            let r;
                            for (s = e[1],
                            r = 0; r < s.length; r += 1) {
                                const o = Gn(e, s, r);
                                l[r] ? (l[r].p(o, n),
                                Ie(l[r], 1)) : (l[r] = ls(o),
                                l[r].c(),
                                Ie(l[r], 1),
                                l[r].m(t.parentNode, t))
                            }
                            for (Se(),
                            r = s.length; r < l.length; r += 1)
                                o(r);
                            Ee()
                        }
                    },
                    i(e) {
                        if (!n) {
                            for (let e = 0; e < s.length; e += 1)
                                Ie(l[e]);
                            n = !0
                        }
                    },
                    o(e) {
                        l = l.filter(Boolean);
                        for (let e = 0; e < l.length; e += 1)
                            Le(l[e]);
                        n = !1
                    },
                    d(e) {
                        H(l, e),
                        e && D(t)
                    }
                }
            }(e);
            return {
                c() {
                    t = B("ul"),
                    o && o.c(),
                    Y(t, "class", e[8]),
                    q(t, "rounded-t-none", e[3])
                },
                m(e, s) {
                    M(e, t, s),
                    o && o.m(t, null),
                    n = !0
                },
                p(e, [r]) {
                    l ? l.p && (!n || 524293 & r) && h(l, s, e, e[19], n ? g(s, e[19], r, Zn) : b(e[19]), Qn) : o && o.p && (!n || 524295 & r) && o.p(e, n ? r : -1),
                    (!n || 256 & r) && Y(t, "class", e[8]),
                    264 & r && q(t, "rounded-t-none", e[3])
                },
                i(e) {
                    n || (Ie(o, e),
                    n = !0)
                },
                o(e) {
                    Le(o, e),
                    n = !1
                },
                d(e) {
                    e && D(t),
                    o && o.d(e)
                }
            }
        }
        const rs = "py-2 rounded";
        function as(e) {
            return void 0 !== e.id ? e.id : void 0 !== e.value ? e.value : void 0 !== e.to ? e.to : void 0 !== e.text ? e.text : e
        }
        function is(e) {
            return void 0 !== e.text ? e.text : void 0 !== e.value ? e.value : e
        }
        function cs(e, t, n) {
            let l, {$$slots: o={}, $$scope: r} = t, {items: a=[]} = t, {value: i=""} = t, {dense: c=!1} = t, {select: u=!1} = t, {classes: d=rs} = t;
            const f = new _n(t.class);
            return e.$$set = e=>{
                n(21, t = s(s({}, t), y(e))),
                "items"in e && n(1, a = e.items),
                "value"in e && n(0, i = e.value),
                "dense"in e && n(2, c = e.dense),
                "select"in e && n(3, u = e.select),
                "classes"in e && n(12, d = e.classes),
                "$$scope"in e && n(19, r = e.$$scope)
            }
            ,
            e.$$.update = ()=>{
                n(8, l = f.flush().add(d, !0, rs).add(t.class).get())
            }
            ,
            t = y(t),
            [i, a, c, u, e=>e, e=>e, e=>e, {}, l, null, "", null, d, o, function(e) {
                i = e,
                n(0, i)
            }
            , function(t) {
                oe.call(this, e, t)
            }
            , function(e) {
                i = e,
                n(0, i)
            }
            , function(t) {
                oe.call(this, e, t)
            }
            , function(t) {
                oe.call(this, e, t)
            }
            , r]
        }
        const us = class extends Ye {
            constructor(e) {
                super(),
                Fe(this, e, cs, os, i, {
                    items: 1,
                    value: 0,
                    dense: 2,
                    select: 3,
                    level: 9,
                    text: 10,
                    item: 7,
                    to: 11,
                    selectedClasses: 4,
                    itemClasses: 5,
                    disabledClasses: 6,
                    classes: 12
                })
            }
            get level() {
                return this.$$.ctx[9]
            }
            get text() {
                return this.$$.ctx[10]
            }
            get item() {
                return this.$$.ctx[7]
            }
            get to() {
                return this.$$.ctx[11]
            }
            get selectedClasses() {
                return this.$$.ctx[4]
            }
            get itemClasses() {
                return this.$$.ctx[5]
            }
            get disabledClasses() {
                return this.$$.ctx[6]
            }
        }
          , ds = e=>({})
          , fs = e=>({})
          , ms = e=>({})
          , ps = e=>({});
        function $s(e) {
            let t, n, l, o, r, a;
            const i = [{
                select: !0
            }, {
                dense: !0
            }, {
                items: e[2]
            }, e[3]];
            function c(t) {
                e[14](t)
            }
            let u = {};
            for (let e = 0; e < i.length; e += 1)
                u = s(u, i[e]);
            return void 0 !== e[1] && (u.value = e[1]),
            n = new us({
                props: u
            }),
            ae.push((()=>ze(n, "value", c))),
            n.$on("change", e[15]),
            n.$on("change", e[16]),
            {
                c() {
                    t = B("div"),
                    Ne(n.$$.fragment),
                    Y(t, "class", e[4])
                },
                m(e, s) {
                    M(e, t, s),
                    Ue(n, t, null),
                    a = !0
                },
                p(s, o) {
                    e = s;
                    const r = 12 & o ? De(i, [i[0], i[1], 4 & o && {
                        items: e[2]
                    }, 8 & o && He(e[3])]) : {};
                    !l && 2 & o && (l = !0,
                    r.value = e[1],
                    $e((()=>l = !1))),
                    n.$set(r),
                    (!a || 16 & o) && Y(t, "class", e[4])
                },
                i(s) {
                    a || (Ie(n.$$.fragment, s),
                    pe((()=>{
                        r && r.end(1),
                        o = _e(t, Ve, e[6]),
                        o.start()
                    }
                    )),
                    a = !0)
                },
                o(s) {
                    Le(n.$$.fragment, s),
                    o && o.invalidate(),
                    r = Oe(t, Ve, e[7]),
                    a = !1
                },
                d(e) {
                    e && D(t),
                    je(n),
                    e && r && r.end()
                }
            }
        }
        function gs(e) {
            let t, n, s, l, o;
            const a = e[11].activator
              , i = p(a, e, e[10], ps)
              , c = e[11].menu
              , u = p(c, e, e[10], fs)
              , d = u || function(e) {
                let t, n, s = e[0] && $s(e);
                return {
                    c() {
                        s && s.c(),
                        t = j()
                    },
                    m(e, l) {
                        s && s.m(e, l),
                        M(e, t, l),
                        n = !0
                    },
                    p(e, n) {
                        e[0] ? s ? (s.p(e, n),
                        1 & n && Ie(s, 1)) : (s = $s(e),
                        s.c(),
                        Ie(s, 1),
                        s.m(t.parentNode, t)) : s && (Se(),
                        Le(s, 1, 1, (()=>{
                            s = null
                        }
                        )),
                        Ee())
                    },
                    i(e) {
                        n || (Ie(s),
                        n = !0)
                    },
                    o(e) {
                        Le(s),
                        n = !1
                    },
                    d(e) {
                        s && s.d(e),
                        e && D(t)
                    }
                }
            }(e);
            return {
                c() {
                    t = B("div"),
                    i && i.c(),
                    n = U(),
                    d && d.c(),
                    Y(t, "class", e[5])
                },
                m(r, a) {
                    var c;
                    M(r, t, a),
                    i && i.m(t, null),
                    _(t, n),
                    d && d.m(t, null),
                    s = !0,
                    l || (o = [F(window, "click", e[13]), F(t, "click", (c = e[12],
                    function(e) {
                        return e.stopPropagation(),
                        c.call(this, e)
                    }
                    ))],
                    l = !0)
                },
                p(e, [n]) {
                    i && i.p && (!s || 1024 & n) && h(i, a, e, e[10], s ? g(a, e[10], n, ms) : b(e[10]), ps),
                    u ? u.p && (!s || 1024 & n) && h(u, c, e, e[10], s ? g(c, e[10], n, ds) : b(e[10]), fs) : d && d.p && (!s || 31 & n) && d.p(e, s ? n : -1),
                    (!s || 32 & n) && Y(t, "class", e[5])
                },
                i(e) {
                    s || (Ie(i, e),
                    Ie(d, e),
                    s = !0)
                },
                o(e) {
                    Le(i, e),
                    Le(d, e),
                    s = !1
                },
                d(e) {
                    e && D(t),
                    i && i.d(e),
                    d && d.d(e),
                    l = !1,
                    r(o)
                }
            }
        }
        const hs = "cursor-pointer relative"
          , bs = "absolute w-auto top-10 bg-white left-0 bg-white rounded shadow z-20 dark:bg-dark-500";
        function ys(e, t, n) {
            let l, o, {$$slots: r={}, $$scope: a} = t, {items: i=[]} = t, {open: c=!1} = t, {value: u=null} = t, {classes: d=hs} = t, {listClasses: f=bs} = t, {listProps: m={}} = t;
            const p = new _n(t.class)
              , $ = new _n(f,bs)
              , g = (le(),
            {
                y: 10,
                duration: 200,
                easing: We
            })
              , h = {
                y: -10,
                duration: 100,
                easing: Ge,
                delay: 100
            };
            return e.$$set = e=>{
                n(20, t = s(s({}, t), y(e))),
                "items"in e && n(2, i = e.items),
                "open"in e && n(0, c = e.open),
                "value"in e && n(1, u = e.value),
                "classes"in e && n(8, d = e.classes),
                "listClasses"in e && n(9, f = e.listClasses),
                "listProps"in e && n(3, m = e.listProps),
                "$$scope"in e && n(10, a = e.$$scope)
            }
            ,
            e.$$.update = ()=>{
                n(5, l = p.flush().add(d, !0, hs).add(t.class).get())
            }
            ,
            n(4, o = $.flush().get()),
            t = y(t),
            [c, u, i, m, o, l, g, h, d, f, a, r, function(t) {
                oe.call(this, e, t)
            }
            , ()=>n(0, c = !1), function(e) {
                u = e,
                n(1, u)
            }
            , function(t) {
                oe.call(this, e, t)
            }
            , ()=>n(0, c = !1)]
        }
        const xs = class extends Ye {
            constructor(e) {
                super(),
                Fe(this, e, ys, gs, i, {
                    items: 2,
                    open: 0,
                    value: 1,
                    classes: 8,
                    listClasses: 9,
                    listProps: 3
                })
            }
        }
          , vs = e=>({})
          , ws = e=>({});
        function ks(e, t, n) {
            const s = e.slice();
            return s[25] = t[n],
            s
        }
        function Cs(e) {
            let t, n, s, l, o;
            const r = e[14].activator
              , a = p(r, e, e[21], ws);
            return {
                c() {
                    t = B("div"),
                    a && a.c(),
                    Y(t, "slot", "activator"),
                    Y(t, "class", n = e[2] || e[1] ? "opacity-100" : "opacity-0")
                },
                m(n, r) {
                    M(n, t, r),
                    a && a.m(t, null),
                    e[19](t),
                    s = !0,
                    l || (o = F(t, "click", e[18]),
                    l = !0)
                },
                p(e, l) {
                    a && a.p && (!s || 2097152 & l) && h(a, r, e, e[21], s ? g(r, e[21], l, vs) : b(e[21]), ws),
                    (!s || 6 & l && n !== (n = e[2] || e[1] ? "opacity-100" : "opacity-0")) && Y(t, "class", n)
                },
                i(e) {
                    s || (Ie(a, e),
                    s = !0)
                },
                o(e) {
                    Le(a, e),
                    s = !1
                },
                d(n) {
                    n && D(t),
                    a && a.d(n),
                    e[19](null),
                    l = !1,
                    o()
                }
            }
        }
        function Ss(e) {
            let t, n, s, l, o;
            return n = new us({
                props: {
                    select: !0,
                    dense: !0,
                    $$slots: {
                        items: [Ls]
                    },
                    $$scope: {
                        ctx: e
                    }
                }
            }),
            {
                c() {
                    t = B("div"),
                    Ne(n.$$.fragment),
                    Y(t, "class", e[8]),
                    Y(t, "style", s = "max-width: 20em; font-size: 0.9em; " + e[7])
                },
                m(s, l) {
                    M(s, t, l),
                    Ue(n, t, null),
                    e[17](t),
                    o = !0
                },
                p(e, l) {
                    const r = {};
                    2097153 & l && (r.$$scope = {
                        dirty: l,
                        ctx: e
                    }),
                    n.$set(r),
                    (!o || 256 & l) && Y(t, "class", e[8]),
                    (!o || 128 & l && s !== (s = "max-width: 20em; font-size: 0.9em; " + e[7])) && Y(t, "style", s)
                },
                i(e) {
                    o || (Ie(n.$$.fragment, e),
                    pe((()=>{
                        l || (l = Re(t, qe, {
                            duration: 150
                        }, !0)),
                        l.run(1)
                    }
                    )),
                    o = !0)
                },
                o(e) {
                    Le(n.$$.fragment, e),
                    l || (l = Re(t, qe, {
                        duration: 150
                    }, !1)),
                    l.run(0),
                    o = !1
                },
                d(s) {
                    s && D(t),
                    je(n),
                    e[17](null),
                    s && l && l.end()
                }
            }
        }
        function Es(e) {
            let t, n = e[25].icon + "";
            return {
                c() {
                    t = N(n)
                },
                m(e, n) {
                    M(e, t, n)
                },
                p(e, s) {
                    1 & s && n !== (n = e[25].icon + "") && W(t, n)
                },
                d(e) {
                    e && D(t)
                }
            }
        }
        function Is(e) {
            let t, n, s, l, o, r, a, i, c, u = e[25].text + "";
            function d() {
                return e[16](e[25])
            }
            return n = new Jt({
                props: {
                    class: "pr-6",
                    $$slots: {
                        default: [Es]
                    },
                    $$scope: {
                        ctx: e
                    }
                }
            }),
            {
                c() {
                    t = B("li"),
                    Ne(n.$$.fragment),
                    s = U(),
                    l = B("span"),
                    o = N(u),
                    r = U(),
                    Y(t, "class", e[11]),
                    G(t, "padding", "0.5em 1em")
                },
                m(e, u) {
                    M(e, t, u),
                    Ue(n, t, null),
                    _(t, s),
                    _(t, l),
                    _(l, o),
                    _(t, r),
                    a = !0,
                    i || (c = F(t, "click", d),
                    i = !0)
                },
                p(t, s) {
                    e = t;
                    const l = {};
                    2097153 & s && (l.$$scope = {
                        dirty: s,
                        ctx: e
                    }),
                    n.$set(l),
                    (!a || 1 & s) && u !== (u = e[25].text + "") && W(o, u)
                },
                i(e) {
                    a || (Ie(n.$$.fragment, e),
                    a = !0)
                },
                o(e) {
                    Le(n.$$.fragment, e),
                    a = !1
                },
                d(e) {
                    e && D(t),
                    je(n),
                    i = !1,
                    c()
                }
            }
        }
        function Ls(e) {
            let t, n, s = e[0], l = [];
            for (let t = 0; t < s.length; t += 1)
                l[t] = Is(ks(e, s, t));
            const o = e=>Le(l[e], 1, 1, (()=>{
                l[e] = null
            }
            ));
            return {
                c() {
                    for (let e = 0; e < l.length; e += 1)
                        l[e].c();
                    t = j()
                },
                m(e, s) {
                    for (let t = 0; t < l.length; t += 1)
                        l[t].m(e, s);
                    M(e, t, s),
                    n = !0
                },
                p(e, n) {
                    if (3073 & n) {
                        let r;
                        for (s = e[0],
                        r = 0; r < s.length; r += 1) {
                            const o = ks(e, s, r);
                            l[r] ? (l[r].p(o, n),
                            Ie(l[r], 1)) : (l[r] = Is(o),
                            l[r].c(),
                            Ie(l[r], 1),
                            l[r].m(t.parentNode, t))
                        }
                        for (Se(),
                        r = s.length; r < l.length; r += 1)
                            o(r);
                        Ee()
                    }
                },
                i(e) {
                    if (!n) {
                        for (let e = 0; e < s.length; e += 1)
                            Ie(l[e]);
                        n = !0
                    }
                },
                o(e) {
                    l = l.filter(Boolean);
                    for (let e = 0; e < l.length; e += 1)
                        Le(l[e]);
                    n = !1
                },
                d(e) {
                    H(l, e),
                    e && D(t)
                }
            }
        }
        function Ts(e) {
            let t, n, s = e[2] && Ss(e);
            return {
                c() {
                    s && s.c(),
                    t = j()
                },
                m(e, l) {
                    s && s.m(e, l),
                    M(e, t, l),
                    n = !0
                },
                p(e, n) {
                    e[2] ? s ? (s.p(e, n),
                    4 & n && Ie(s, 1)) : (s = Ss(e),
                    s.c(),
                    Ie(s, 1),
                    s.m(t.parentNode, t)) : s && (Se(),
                    Le(s, 1, 1, (()=>{
                        s = null
                    }
                    )),
                    Ee())
                },
                i(e) {
                    n || (Ie(s),
                    n = !0)
                },
                o(e) {
                    Le(s),
                    n = !1
                },
                d(e) {
                    s && s.d(e),
                    e && D(t)
                }
            }
        }
        function _s(e) {
            let t, n, s, l, o, r;
            function a(t) {
                e[20](t)
            }
            pe(e[15]);
            let i = {
                classes: "h-full flex items-center justify-center cursor-pointer relative",
                $$slots: {
                    menu: [Ts],
                    activator: [Cs]
                },
                $$scope: {
                    ctx: e
                }
            };
            return void 0 !== e[2] && (i.open = e[2]),
            n = new xs({
                props: i
            }),
            ae.push((()=>ze(n, "open", a))),
            {
                c() {
                    t = B("div"),
                    Ne(n.$$.fragment),
                    Y(t, "class", e[9])
                },
                m(s, a) {
                    M(s, t, a),
                    Ue(n, t, null),
                    l = !0,
                    o || (r = F(window, "resize", e[15]),
                    o = !0)
                },
                p(e, [o]) {
                    const r = {};
                    2097567 & o && (r.$$scope = {
                        dirty: o,
                        ctx: e
                    }),
                    !s && 4 & o && (s = !0,
                    r.open = e[2],
                    $e((()=>s = !1))),
                    n.$set(r),
                    (!l || 512 & o) && Y(t, "class", e[9])
                },
                i(e) {
                    l || (Ie(n.$$.fragment, e),
                    l = !0)
                },
                o(e) {
                    Le(n.$$.fragment, e),
                    l = !1
                },
                d(e) {
                    e && D(t),
                    je(n),
                    o = !1,
                    r()
                }
            }
        }
        let Os = 0;
        const Rs = ()=>"ltl-menu-" + Os++
          , As = et(Rs());
        function Ps(e, t, n) {
            let l, o, r;
            m(e, As, (e=>n(13, r = e)));
            let {$$slots: a={}, $$scope: i} = t
              , {items: c} = t
              , {visible: u=!0} = t;
            const d = Rs();
            let f, p, $ = !1, g = 0, h = 0, b = "", x = "";
            const v = e=>{
                n(2, $ = !1),
                e && e.onClick && e.onClick()
            }
            ;
            return e.$$set = e=>{
                n(24, t = s(s({}, t), y(e))),
                "items"in e && n(0, c = e.items),
                "visible"in e && n(1, u = e.visible),
                "$$scope"in e && n(21, i = e.$$scope)
            }
            ,
            e.$$.update = ()=>{
                8192 & e.$$.dirty && n(2, $ = r === d),
                4 & e.$$.dirty && (async e=>{
                    if (e || d !== r || As.set(""),
                    !e)
                        return;
                    if (As.set(d),
                    await me(),
                    !f || !p)
                        return void console.error("Menu activator or listDiv undefined");
                    const t = f.getBoundingClientRect()
                      , s = f.clientHeight + 5;
                    t.bottom + p.clientHeight > g ? n(7, x = `bottom: ${s}px;`) : n(7, x = `top: ${s}px;`),
                    t.right + p.clientWidth > h ? n(12, b = "right-0") : n(12, b = "left-0")
                }
                )($),
                n(9, l = t.class ? t.class : ""),
                4096 & e.$$.dirty && n(8, o = `absolute bg-white rounded shadow z-20 dark:bg-dark-500 w-max ${b}`)
            }
            ,
            t = y(t),
            [c, u, $, f, p, g, h, x, o, l, v, "focus:bg-gray-50 dark-focus:bg-gray-700 hover:bg-gray-transDark relative overflow-hidden duration-100 cursor-pointer text-gray-700 dark:text-gray-100 flex items-center z-10", b, r, a, function() {
                n(5, g = window.innerHeight),
                n(6, h = window.innerWidth)
            }
            , e=>v(e), function(e) {
                ae[e ? "unshift" : "push"]((()=>{
                    p = e,
                    n(4, p)
                }
                ))
            }
            , ()=>n(2, $ = !$), function(e) {
                ae[e ? "unshift" : "push"]((()=>{
                    f = e,
                    n(3, f)
                }
                ))
            }
            , function(e) {
                $ = e,
                n(2, $),
                n(13, r)
            }
            , i]
        }
        const Ms = class extends Ye {
            constructor(e) {
                super(),
                Fe(this, e, Ps, _s, i, {
                    items: 0,
                    visible: 1
                })
            }
        }
        ;
        var Ds = "M9.06,1.93C7.17,1.92 5.33,3.74 6.17,6H3A2,2 0 0,0 1,8V10A1,1 0 0,0 2,11H11V8H13V11H22A1,1 0 0,0 23,10V8A2,2 0 0,0 21,6H17.83C19,2.73 14.6,0.42 12.57,3.24L12,4L11.43,3.22C10.8,2.33 9.93,1.94 9.06,1.93M9,4C9.89,4 10.34,5.08 9.71,5.71C9.08,6.34 8,5.89 8,5A1,1 0 0,1 9,4M15,4C15.89,4 16.34,5.08 15.71,5.71C15.08,6.34 14,5.89 14,5A1,1 0 0,1 15,4M2,12V20A2,2 0 0,0 4,22H20A2,2 0 0,0 22,20V12H13V20H11V12H2Z";
        function Hs(e) {
            let t, n, s, l, o, r;
            return {
                c() {
                    t = B("a"),
                    n = B("img"),
                    Y(n, "class", "h-5 w-5 inline align-middle rounded-full flex-none"),
                    u(n.src, s = e[0].author.profileIcon.src) || Y(n, "src", s),
                    Y(n, "alt", l = e[0].author.profileIcon.alt),
                    Y(t, "href", o = e[0].author.url),
                    Y(t, "class", r = "flex-shrink-0 " + (e[0].author.url ? "cursor-pointer" : "cursor-auto")),
                    Y(t, "target", "_blank")
                },
                m(e, s) {
                    M(e, t, s),
                    _(t, n)
                },
                p(e, a) {
                    1 & a && !u(n.src, s = e[0].author.profileIcon.src) && Y(n, "src", s),
                    1 & a && l !== (l = e[0].author.profileIcon.alt) && Y(n, "alt", l),
                    1 & a && o !== (o = e[0].author.url) && Y(t, "href", o),
                    1 & a && r !== (r = "flex-shrink-0 " + (e[0].author.url ? "cursor-pointer" : "cursor-auto")) && Y(t, "class", r)
                },
                d(e) {
                    e && D(t)
                }
            }
        }
        function Bs(e) {
            let t, n, s, l, o, r, a, i, c, u, d, f, m, p, $, g = e[0].timestamp + "", h = e[0].author.name + "", b = e[8] && zs(e), y = e[7] && Us(e), x = e[6] && e[0].author.customBadge && Fs(e);
            return {
                c() {
                    t = B("span"),
                    n = N(g),
                    s = U(),
                    l = B("a"),
                    o = B("span"),
                    r = N(h),
                    c = U(),
                    u = B("span"),
                    b && b.c(),
                    d = U(),
                    y && y.c(),
                    f = U(),
                    x && x.c(),
                    m = U(),
                    p = B("span"),
                    Y(t, "class", "text-xs mr-1 text-gray-700 dark:text-gray-600 align-middle"),
                    q(t, "hidden", !e[10]),
                    Y(o, "class", a = Vs + " " + e[14]),
                    q(o, "hidden", !e[11]),
                    Y(l, "href", i = e[0].author.url),
                    Y(l, "target", "_blank"),
                    q(l, "cursor-pointer", e[0].author.url),
                    q(l, "cursor-auto", !e[0].author.url),
                    Y(u, "class", "align-middle"),
                    q(u, "hidden", !e[9]),
                    Y(p, "class", "mr-1.5"),
                    q(p, "hidden", !e[13])
                },
                m(e, a) {
                    M(e, t, a),
                    _(t, n),
                    M(e, s, a),
                    M(e, l, a),
                    _(l, o),
                    _(o, r),
                    M(e, c, a),
                    M(e, u, a),
                    b && b.m(u, null),
                    _(u, d),
                    y && y.m(u, null),
                    _(u, f),
                    x && x.m(u, null),
                    M(e, m, a),
                    M(e, p, a),
                    $ = !0
                },
                p(e, s) {
                    (!$ || 1 & s) && g !== (g = e[0].timestamp + "") && W(n, g),
                    1024 & s && q(t, "hidden", !e[10]),
                    (!$ || 1 & s) && h !== (h = e[0].author.name + "") && W(r, h),
                    (!$ || 16384 & s && a !== (a = Vs + " " + e[14])) && Y(o, "class", a),
                    18432 & s && q(o, "hidden", !e[11]),
                    (!$ || 1 & s && i !== (i = e[0].author.url)) && Y(l, "href", i),
                    1 & s && q(l, "cursor-pointer", e[0].author.url),
                    1 & s && q(l, "cursor-auto", !e[0].author.url),
                    e[8] ? b ? 256 & s && Ie(b, 1) : (b = zs(e),
                    b.c(),
                    Ie(b, 1),
                    b.m(u, d)) : b && (Se(),
                    Le(b, 1, 1, (()=>{
                        b = null
                    }
                    )),
                    Ee()),
                    e[7] ? y ? 128 & s && Ie(y, 1) : (y = Us(e),
                    y.c(),
                    Ie(y, 1),
                    y.m(u, f)) : y && (Se(),
                    Le(y, 1, 1, (()=>{
                        y = null
                    }
                    )),
                    Ee()),
                    e[6] && e[0].author.customBadge ? x ? x.p(e, s) : (x = Fs(e),
                    x.c(),
                    x.m(u, null)) : x && (x.d(1),
                    x = null),
                    512 & s && q(u, "hidden", !e[9]),
                    8192 & s && q(p, "hidden", !e[13])
                },
                i(e) {
                    $ || (Ie(b),
                    Ie(y),
                    $ = !0)
                },
                o(e) {
                    Le(b),
                    Le(y),
                    $ = !1
                },
                d(e) {
                    e && D(t),
                    e && D(s),
                    e && D(l),
                    e && D(c),
                    e && D(u),
                    b && b.d(),
                    y && y.d(),
                    x && x.d(),
                    e && D(m),
                    e && D(p)
                }
            }
        }
        function zs(e) {
            let t, n;
            return t = new Jt({
                props: {
                    class: "inline align-middle",
                    small: !0,
                    $$slots: {
                        default: [Ns]
                    },
                    $$scope: {
                        ctx: e
                    }
                }
            }),
            {
                c() {
                    Ne(t.$$.fragment)
                },
                m(e, s) {
                    Ue(t, e, s),
                    n = !0
                },
                i(e) {
                    n || (Ie(t.$$.fragment, e),
                    n = !0)
                },
                o(e) {
                    Le(t.$$.fragment, e),
                    n = !1
                },
                d(e) {
                    je(t, e)
                }
            }
        }
        function Ns(e) {
            let t;
            return {
                c() {
                    t = N("build")
                },
                m(e, n) {
                    M(e, t, n)
                },
                d(e) {
                    e && D(t)
                }
            }
        }
        function Us(e) {
            let t, n;
            return t = new Jt({
                props: {
                    class: "inline align-middle text-gray-500",
                    small: !0,
                    $$slots: {
                        default: [js]
                    },
                    $$scope: {
                        ctx: e
                    }
                }
            }),
            {
                c() {
                    Ne(t.$$.fragment)
                },
                m(e, s) {
                    Ue(t, e, s),
                    n = !0
                },
                i(e) {
                    n || (Ie(t.$$.fragment, e),
                    n = !0)
                },
                o(e) {
                    Le(t.$$.fragment, e),
                    n = !1
                },
                d(e) {
                    je(t, e)
                }
            }
        }
        function js(e) {
            let t;
            return {
                c() {
                    t = N("verified")
                },
                m(e, n) {
                    M(e, t, n)
                },
                d(e) {
                    e && D(t)
                }
            }
        }
        function Fs(e) {
            let t, n, s, l;
            return {
                c() {
                    t = B("img"),
                    Y(t, "class", "h-4 w-4 inline align-middle"),
                    u(t.src, n = e[0].author.customBadge.src) || Y(t, "src", n),
                    Y(t, "alt", s = e[0].author.customBadge.alt),
                    Y(t, "title", l = e[0].author.customBadge.alt)
                },
                m(e, n) {
                    M(e, t, n)
                },
                p(e, o) {
                    1 & o && !u(t.src, n = e[0].author.customBadge.src) && Y(t, "src", n),
                    1 & o && s !== (s = e[0].author.customBadge.alt) && Y(t, "alt", s),
                    1 & o && l !== (l = e[0].author.customBadge.alt) && Y(t, "title", l)
                },
                d(e) {
                    e && D(t)
                }
            }
        }
        function Ys(t) {
            let n, s;
            return {
                c() {
                    n = z("svg"),
                    s = z("path"),
                    Y(s, "d", Ds),
                    Y(s, "fill", "currentColor"),
                    Y(n, "height", "1em"),
                    Y(n, "width", "1em"),
                    Y(n, "viewBox", "0 0 24 24"),
                    Y(n, "class", "inline align-middle ml-1 text-gray-700 dark:text-gray-600"),
                    G(n, "transform", "translateY(-1px)")
                },
                m(e, t) {
                    M(e, n, t),
                    _(n, s)
                },
                p: e,
                d(e) {
                    e && D(n)
                }
            }
        }
        function Ks(e) {
            let t, n;
            return t = new Ms({
                props: {
                    items: e[17],
                    visible: e[16] === e[0].messageId,
                    class: "mr-2 ml-auto context-menu",
                    $$slots: {
                        activator: [Gs]
                    },
                    $$scope: {
                        ctx: e
                    }
                }
            }),
            {
                c() {
                    Ne(t.$$.fragment)
                },
                m(e, s) {
                    Ue(t, e, s),
                    n = !0
                },
                p(e, n) {
                    const s = {};
                    65537 & n && (s.visible = e[16] === e[0].messageId),
                    2097152 & n && (s.$$scope = {
                        dirty: n,
                        ctx: e
                    }),
                    t.$set(s)
                },
                i(e) {
                    n || (Ie(t.$$.fragment, e),
                    n = !0)
                },
                o(e) {
                    Le(t.$$.fragment, e),
                    n = !1
                },
                d(e) {
                    je(t, e)
                }
            }
        }
        function Ws(e) {
            let t;
            return {
                c() {
                    t = N("more_vert")
                },
                m(e, n) {
                    M(e, t, n)
                },
                d(e) {
                    e && D(t)
                }
            }
        }
        function Gs(e) {
            let t, n;
            return t = new Jt({
                props: {
                    slot: "activator",
                    style: "font-size: 1.5em;",
                    $$slots: {
                        default: [Ws]
                    },
                    $$scope: {
                        ctx: e
                    }
                }
            }),
            {
                c() {
                    Ne(t.$$.fragment)
                },
                m(e, s) {
                    Ue(t, e, s),
                    n = !0
                },
                p(e, n) {
                    const s = {};
                    2097152 & n && (s.$$scope = {
                        dirty: n,
                        ctx: e
                    }),
                    t.$set(s)
                },
                i(e) {
                    n || (Ie(t.$$.fragment, e),
                    n = !0)
                },
                o(e) {
                    Le(t.$$.fragment, e),
                    n = !1
                },
                d(e) {
                    je(t, e)
                }
            }
        }
        function qs(e) {
            let t, n, s, l, o, r, a, i, c = !e[3] && e[12] && Hs(e), u = !e[3] && Bs(e);
            o = new In({
                props: {
                    runs: e[0].message,
                    forceDark: e[2],
                    deleted: null != e[1],
                    forceTLColor: e[5],
                    class: e[0].membershipGiftRedeem ? "text-gray-700 dark:text-gray-600 italic font-medium" : ""
                }
            });
            let d = e[0].membershipGiftRedeem && Ys()
              , f = e[0].author.id !== e[15] && !e[4] && Ks(e);
            return {
                c() {
                    t = B("div"),
                    c && c.c(),
                    n = U(),
                    s = B("div"),
                    u && u.c(),
                    l = U(),
                    Ne(o.$$.fragment),
                    r = U(),
                    d && d.c(),
                    a = U(),
                    f && f.c(),
                    Y(t, "class", "inline-flex flex-row gap-2 break-words w-full overflow-visible")
                },
                m(e, m) {
                    M(e, t, m),
                    c && c.m(t, null),
                    _(t, n),
                    _(t, s),
                    u && u.m(s, null),
                    _(s, l),
                    Ue(o, s, null),
                    _(s, r),
                    d && d.m(s, null),
                    _(t, a),
                    f && f.m(t, null),
                    i = !0
                },
                p(e, [r]) {
                    !e[3] && e[12] ? c ? c.p(e, r) : (c = Hs(e),
                    c.c(),
                    c.m(t, n)) : c && (c.d(1),
                    c = null),
                    e[3] ? u && (Se(),
                    Le(u, 1, 1, (()=>{
                        u = null
                    }
                    )),
                    Ee()) : u ? (u.p(e, r),
                    8 & r && Ie(u, 1)) : (u = Bs(e),
                    u.c(),
                    Ie(u, 1),
                    u.m(s, l));
                    const a = {};
                    1 & r && (a.runs = e[0].message),
                    4 & r && (a.forceDark = e[2]),
                    2 & r && (a.deleted = null != e[1]),
                    32 & r && (a.forceTLColor = e[5]),
                    1 & r && (a.class = e[0].membershipGiftRedeem ? "text-gray-700 dark:text-gray-600 italic font-medium" : ""),
                    o.$set(a),
                    e[0].membershipGiftRedeem ? d ? d.p(e, r) : (d = Ys(),
                    d.c(),
                    d.m(s, null)) : d && (d.d(1),
                    d = null),
                    e[0].author.id === e[15] || e[4] ? f && (Se(),
                    Le(f, 1, 1, (()=>{
                        f = null
                    }
                    )),
                    Ee()) : f ? (f.p(e, r),
                    32785 & r && Ie(f, 1)) : (f = Ks(e),
                    f.c(),
                    Ie(f, 1),
                    f.m(t, null))
                },
                i(e) {
                    i || (Ie(u),
                    Ie(o.$$.fragment, e),
                    Ie(f),
                    i = !0)
                },
                o(e) {
                    Le(u),
                    Le(o.$$.fragment, e),
                    Le(f),
                    i = !1
                },
                d(e) {
                    e && D(t),
                    c && c.d(),
                    u && u.d(),
                    je(o),
                    d && d.d(),
                    f && f.d()
                }
            }
        }
        const Vs = "font-bold tracking-wide align-middle";
        function Xs(e, t, n) {
            let s, l, o, r, a, i, c, u, d;
            m(e, At, (e=>n(19, o = e))),
            m(e, Et, (e=>n(9, r = e))),
            m(e, St, (e=>n(10, a = e))),
            m(e, Ct, (e=>n(11, i = e))),
            m(e, kt, (e=>n(12, c = e))),
            m(e, Mt, (e=>n(15, u = e))),
            m(e, Ot, (e=>n(16, d = e)));
            let {message: f} = t
              , {deleted: p=null} = t
              , {forceDark: $=!1} = t
              , {hideName: g=!1} = t
              , {hideDropdown: h=!1} = t
              , b = !1
              , y = !1
              , x = !1
              , v = !1
              , {forceTLColor: w=ut.YOUTUBE} = t;
            const k = $t.map((e=>({
                icon: e.icon,
                text: e.text,
                value: e.value.toString(),
                onClick: ()=>function(e, t, n) {
                    if (t === ft.BLOCK)
                        n?.postMessage({
                            type: "executeChatAction",
                            message: e,
                            action: t
                        });
                    else if (t === ft.REPORT_USER) {
                        const s = et(null);
                        Ht.set({
                            callback: s=>{
                                n?.postMessage({
                                    type: "executeChatAction",
                                    message: e,
                                    action: t,
                                    reportOption: s
                                })
                            }
                            ,
                            optionStore: s
                        })
                    }
                }(f, e.value, o)
            })));
            return e.$$set = e=>{
                "message"in e && n(0, f = e.message),
                "deleted"in e && n(1, p = e.deleted),
                "forceDark"in e && n(2, $ = e.forceDark),
                "hideName"in e && n(3, g = e.hideName),
                "hideDropdown"in e && n(4, h = e.hideDropdown),
                "forceTLColor"in e && n(5, w = e.forceTLColor)
            }
            ,
            e.$$.update = ()=>{
                2 & e.$$.dirty && null != p && n(0, f.message = p.replace, f),
                1 & e.$$.dirty && f.author.types.forEach((e=>{
                    "member" === e ? n(6, b = !0) : "verified" === e ? n(7, y = !0) : "moderator" === e ? n(8, x = !0) : "owner" === e && n(18, v = !0)
                }
                )),
                262468 & e.$$.dirty && n(14, s = ((e,t,n,s)=>n && s ? "text-owner-dark" : n ? "text-owner-light dark:text-owner-dark" : t && s ? "text-moderator-dark" : t ? "text-moderator-light dark:text-moderator-dark" : e && s ? "text-member-dark" : e ? "text-member-light dark:text-member-dark" : s ? "text-gray-500" : "text-gray-700 dark:text-gray-500")(b, x, v, $)),
                8128 & e.$$.dirty && n(13, l = c || i || a || r && (x || y || b))
            }
            ,
            [f, p, $, g, h, w, b, y, x, r, a, i, c, l, s, u, d, k, v]
        }
        const Js = class extends Ye {
            constructor(e) {
                super(),
                Fe(this, e, Xs, qs, i, {
                    message: 0,
                    deleted: 1,
                    forceDark: 2,
                    hideName: 3,
                    hideDropdown: 4,
                    forceTLColor: 5
                })
            }
        }
          , Zs = e=>({})
          , Qs = e=>({});
        function el(e) {
            let t, n, s, l;
            const o = e[12].default
              , r = p(o, e, e[11], null);
            return {
                c() {
                    t = B("div"),
                    r && r.c(),
                    Y(t, "class", e[6]),
                    Y(t, "style", e[5])
                },
                m(n, s) {
                    M(n, t, s),
                    r && r.m(t, null),
                    e[17](t),
                    l = !0
                },
                p(e, n) {
                    r && r.p && (!l || 2048 & n) && h(r, o, e, e[11], l ? g(o, e[11], n, null) : b(e[11]), null),
                    (!l || 64 & n) && Y(t, "class", e[6]),
                    (!l || 32 & n) && Y(t, "style", e[5])
                },
                i(e) {
                    l || (Ie(r, e),
                    e && pe((()=>{
                        s && s.end(1),
                        n = _e(t, Je, {
                            duration: 200
                        }),
                        n.start()
                    }
                    )),
                    l = !0)
                },
                o(e) {
                    Le(r, e),
                    n && n.invalidate(),
                    e && (s = Oe(t, qe, {
                        duration: 200,
                        delay: 100
                    })),
                    l = !1
                },
                d(n) {
                    n && D(t),
                    r && r.d(n),
                    e[17](null),
                    n && s && s.end()
                }
            }
        }
        function tl(e) {
            let t, n, s, l, o, a;
            pe(e[13]);
            const i = e[12].activator
              , c = p(i, e, e[11], Qs);
            let u = e[0] && el(e);
            return {
                c() {
                    t = B("div"),
                    n = B("div"),
                    c && c.c(),
                    s = U(),
                    u && u.c(),
                    Y(t, "class", "relative inline-block")
                },
                m(r, i) {
                    M(r, t, i),
                    _(t, n),
                    c && c.m(n, null),
                    e[16](n),
                    _(t, s),
                    u && u.m(t, null),
                    l = !0,
                    o || (a = [F(window, "resize", e[13]), F(n, "mouseenter", e[14]), F(n, "mouseleave", e[15])],
                    o = !0)
                },
                p(e, [n]) {
                    c && c.p && (!l || 2048 & n) && h(c, i, e, e[11], l ? g(i, e[11], n, Zs) : b(e[11]), Qs),
                    e[0] ? u ? (u.p(e, n),
                    1 & n && Ie(u, 1)) : (u = el(e),
                    u.c(),
                    Ie(u, 1),
                    u.m(t, null)) : u && (Se(),
                    Le(u, 1, 1, (()=>{
                        u = null
                    }
                    )),
                    Ee())
                },
                i(e) {
                    l || (Ie(c, e),
                    Ie(u),
                    l = !0)
                },
                o(e) {
                    Le(c, e),
                    Le(u),
                    l = !1
                },
                d(n) {
                    n && D(t),
                    c && c.d(n),
                    e[16](null),
                    u && u.d(),
                    o = !1,
                    r(a)
                }
            }
        }
        function nl(e, t, n) {
            let l, {$$slots: o={}, $$scope: r} = t;
            var a;
            let i, c, {offsetY: u=5} = t, {small: d=!1} = t, f = !1, m = 0, p = 0, $ = "", g = "";
            return e.$$set = e=>{
                n(19, t = s(s({}, t), y(e))),
                "offsetY"in e && n(7, u = e.offsetY),
                "small"in e && n(8, d = e.small),
                "$$scope"in e && n(11, r = e.$$scope)
            }
            ,
            e.$$.update = ()=>{
                1 & e.$$.dirty && (async e=>{
                    if (!e)
                        return;
                    if (await me(),
                    !i || !c)
                        return void console.error("Tooltip activator or tooltipDiv undefined");
                    const t = i.getBoundingClientRect()
                      , s = c.clientWidth / 2;
                    t.left - s < 0 ? n(10, $ = "left-0") : t.right + s > p ? n(10, $ = "right-0") : n(10, $ = "left-1/2 transform -translate-x-1/2");
                    const l = c.clientHeight + u;
                    t.bottom + l > m ? n(5, g = `top: -${l}px`) : n(5, g = `bottom: -${l}px`)
                }
                )(f),
                n(6, l = `whitespace-nowrap absolute bg-gray-800 text-gray-50 z-30 rounded shadow-lg ${$} ${null !== n(9, a = t.class) && void 0 !== a ? a : ""} ` + (d ? "text-xs py-1 px-2" : "text-sm py-2 px-3"))
            }
            ,
            t = y(t),
            [f, i, c, m, p, g, l, u, d, a, $, r, o, function() {
                n(3, m = window.innerHeight),
                n(4, p = window.innerWidth)
            }
            , ()=>n(0, f = !0), ()=>n(0, f = !1), function(e) {
                ae[e ? "unshift" : "push"]((()=>{
                    i = e,
                    n(1, i)
                }
                ))
            }
            , function(e) {
                ae[e ? "unshift" : "push"]((()=>{
                    c = e,
                    n(2, c)
                }
                ))
            }
            ]
        }
        const sl = class extends Ye {
            constructor(e) {
                super(),
                Fe(this, e, nl, tl, i, {
                    offsetY: 7,
                    small: 8
                })
            }
        }
        ;
        function ll(e, t, n) {
            const s = e.slice();
            return s[7] = t[n],
            s
        }
        function ol(e) {
            let t, n, s, l, o, r, a, i, c, u, d, f, m, p;
            o = new Mn({
                props: {
                    small: !0,
                    $$slots: {
                        default: [il]
                    },
                    $$scope: {
                        ctx: e
                    }
                }
            });
            let $ = e[0].item.header
              , g = [];
            for (let t = 0; t < $.length; t += 1)
                g[t] = ul(ll(e, $, t));
            c = new sl({
                props: {
                    offsetY: 0,
                    small: !0,
                    $$slots: {
                        activator: [ml],
                        default: [dl]
                    },
                    $$scope: {
                        ctx: e
                    }
                }
            });
            let h = !e[2] && !e[1] && pl(e);
            return {
                c() {
                    t = B("div"),
                    n = B("div"),
                    s = B("div"),
                    l = B("span"),
                    Ne(o.$$.fragment),
                    r = U();
                    for (let e = 0; e < g.length; e += 1)
                        g[e].c();
                    a = U(),
                    i = B("div"),
                    Ne(c.$$.fragment),
                    u = U(),
                    h && h.c(),
                    Y(l, "class", "mr-1 inline-block"),
                    G(l, "transform", "translateY(3px)"),
                    Y(s, "class", "font-medium tracking-wide text-white flex-1"),
                    Y(i, "class", "flex-none self-end"),
                    G(i, "transform", "translateY(3px)"),
                    Y(n, "class", "flex flex-row items-center cursor-pointer"),
                    Y(t, "class", e[3])
                },
                m(d, $) {
                    M(d, t, $),
                    _(t, n),
                    _(n, s),
                    _(s, l),
                    Ue(o, l, null),
                    _(s, r);
                    for (let e = 0; e < g.length; e += 1)
                        g[e].m(s, null);
                    _(n, a),
                    _(n, i),
                    Ue(c, i, null),
                    _(t, u),
                    h && h.m(t, null),
                    f = !0,
                    m || (p = F(n, "click", e[4]),
                    m = !0)
                },
                p(e, n) {
                    const l = {};
                    if (1028 & n && (l.$$scope = {
                        dirty: n,
                        ctx: e
                    }),
                    o.$set(l),
                    1 & n) {
                        let t;
                        for ($ = e[0].item.header,
                        t = 0; t < $.length; t += 1) {
                            const l = ll(e, $, t);
                            g[t] ? g[t].p(l, n) : (g[t] = ul(l),
                            g[t].c(),
                            g[t].m(s, null))
                        }
                        for (; t < g.length; t += 1)
                            g[t].d(1);
                        g.length = $.length
                    }
                    const r = {};
                    1026 & n && (r.$$scope = {
                        dirty: n,
                        ctx: e
                    }),
                    c.$set(r),
                    e[2] || e[1] ? h && (Se(),
                    Le(h, 1, 1, (()=>{
                        h = null
                    }
                    )),
                    Ee()) : h ? (h.p(e, n),
                    6 & n && Ie(h, 1)) : (h = pl(e),
                    h.c(),
                    Ie(h, 1),
                    h.m(t, null))
                },
                i(e) {
                    f || (Ie(o.$$.fragment, e),
                    Ie(c.$$.fragment, e),
                    Ie(h),
                    pe((()=>{
                        d || (d = Re(t, qe, {
                            duration: 250
                        }, !0)),
                        d.run(1)
                    }
                    )),
                    f = !0)
                },
                o(e) {
                    Le(o.$$.fragment, e),
                    Le(c.$$.fragment, e),
                    Le(h),
                    d || (d = Re(t, qe, {
                        duration: 250
                    }, !1)),
                    d.run(0),
                    f = !1
                },
                d(e) {
                    e && D(t),
                    je(o),
                    H(g, e),
                    je(c),
                    h && h.d(),
                    e && d && d.end(),
                    m = !1,
                    p()
                }
            }
        }
        function rl(e) {
            let t;
            return {
                c() {
                    t = N("expand_less")
                },
                m(e, n) {
                    M(e, t, n)
                },
                d(e) {
                    e && D(t)
                }
            }
        }
        function al(e) {
            let t;
            return {
                c() {
                    t = N("expand_more")
                },
                m(e, n) {
                    M(e, t, n)
                },
                d(e) {
                    e && D(t)
                }
            }
        }
        function il(e) {
            let t;
            function n(e, t) {
                return e[2] ? al : rl
            }
            let s = n(e)
              , l = s(e);
            return {
                c() {
                    l.c(),
                    t = j()
                },
                m(e, n) {
                    l.m(e, n),
                    M(e, t, n)
                },
                p(e, o) {
                    s !== (s = n(e)) && (l.d(1),
                    l = s(e),
                    l && (l.c(),
                    l.m(t.parentNode, t)))
                },
                d(e) {
                    l.d(e),
                    e && D(t)
                }
            }
        }
        function cl(e) {
            let t, n, s = e[7].text + "";
            return {
                c() {
                    t = B("span"),
                    n = N(s),
                    Y(t, "class", "align-middle")
                },
                m(e, s) {
                    M(e, t, s),
                    _(t, n)
                },
                p(e, t) {
                    1 & t && s !== (s = e[7].text + "") && W(n, s)
                },
                d(e) {
                    e && D(t)
                }
            }
        }
        function ul(e) {
            let t, n = "text" === e[7].type && cl(e);
            return {
                c() {
                    n && n.c(),
                    t = j()
                },
                m(e, s) {
                    n && n.m(e, s),
                    M(e, t, s)
                },
                p(e, s) {
                    "text" === e[7].type ? n ? n.p(e, s) : (n = cl(e),
                    n.c(),
                    n.m(t.parentNode, t)) : n && (n.d(1),
                    n = null)
                },
                d(e) {
                    n && n.d(e),
                    e && D(t)
                }
            }
        }
        function dl(e) {
            let t;
            return {
                c() {
                    t = N("Dismiss")
                },
                m(e, n) {
                    M(e, t, n)
                },
                d(e) {
                    e && D(t)
                }
            }
        }
        function fl(e) {
            let t;
            return {
                c() {
                    t = N("close")
                },
                m(e, n) {
                    M(e, t, n)
                },
                d(e) {
                    e && D(t)
                }
            }
        }
        function ml(e) {
            let t, n;
            return t = new Mn({
                props: {
                    slot: "activator",
                    class: "cursor-pointer text-lg",
                    $$slots: {
                        default: [fl]
                    },
                    $$scope: {
                        ctx: e
                    }
                }
            }),
            t.$on("click", e[5]),
            {
                c() {
                    Ne(t.$$.fragment)
                },
                m(e, s) {
                    Ue(t, e, s),
                    n = !0
                },
                p(e, n) {
                    const s = {};
                    1024 & n && (s.$$scope = {
                        dirty: n,
                        ctx: e
                    }),
                    t.$set(s)
                },
                i(e) {
                    n || (Ie(t.$$.fragment, e),
                    n = !0)
                },
                o(e) {
                    Le(t.$$.fragment, e),
                    n = !1
                },
                d(e) {
                    je(t, e)
                }
            }
        }
        function pl(e) {
            let t, n, s, l;
            return n = new Js({
                props: {
                    message: e[0].item.contents,
                    forceDark: !0,
                    forceTLColor: ut.DARK,
                    hideDropdown: !0
                }
            }),
            {
                c() {
                    t = B("div"),
                    Ne(n.$$.fragment),
                    Y(t, "class", "mt-1")
                },
                m(e, s) {
                    M(e, t, s),
                    Ue(n, t, null),
                    l = !0
                },
                p(e, t) {
                    const s = {};
                    1 & t && (s.message = e[0].item.contents),
                    n.$set(s)
                },
                i(e) {
                    l || (Ie(n.$$.fragment, e),
                    e && pe((()=>{
                        s || (s = Re(t, Xe, {
                            duration: 300
                        }, !0)),
                        s.run(1)
                    }
                    )),
                    l = !0)
                },
                o(e) {
                    Le(n.$$.fragment, e),
                    e && (s || (s = Re(t, Xe, {
                        duration: 300
                    }, !1)),
                    s.run(0)),
                    l = !1
                },
                d(e) {
                    e && D(t),
                    je(n),
                    e && s && s.end()
                }
            }
        }
        function $l(e) {
            let t, n, s = !e[1] && ol(e);
            return {
                c() {
                    s && s.c(),
                    t = j()
                },
                m(e, l) {
                    s && s.m(e, l),
                    M(e, t, l),
                    n = !0
                },
                p(e, [n]) {
                    e[1] ? s && (Se(),
                    Le(s, 1, 1, (()=>{
                        s = null
                    }
                    )),
                    Ee()) : s ? (s.p(e, n),
                    2 & n && Ie(s, 1)) : (s = ol(e),
                    s.c(),
                    Ie(s, 1),
                    s.m(t.parentNode, t))
                },
                i(e) {
                    n || (Ie(s),
                    n = !0)
                },
                o(e) {
                    Le(s),
                    n = !1
                },
                d(e) {
                    s && s.d(e),
                    e && D(t)
                }
            }
        }
        function gl(e, t, n) {
            let {pinned: s} = t
              , l = !1
              , o = !1;
            const r = le();
            return e.$$set = e=>{
                "pinned"in e && n(0, s = e.pinned)
            }
            ,
            e.$$.update = ()=>{
                1 & e.$$.dirty && s && (n(1, l = !1),
                n(2, o = !1)),
                6 & e.$$.dirty && r("resize")
            }
            ,
            [s, l, o, "rounded inline-flex flex-col overflow-visible bg-secondary-900 p-2 w-full text-white z-10 shadow", ()=>{
                n(2, o = !o)
            }
            , ()=>{
                n(1, l = !0)
            }
            ]
        }
        const hl = class extends Ye {
            constructor(e) {
                super(),
                Fe(this, e, gl, $l, i, {
                    pinned: 0
                })
            }
        }
        ;
        var bl = n(6537)
          , yl = n.n(bl);
        function xl(e) {
            let t, n, s, l, o, r, a, i, c, u, d, f, m = e[0].author.name + "", p = e[7] && vl(e), $ = e[0].superSticker && wl(e), g = e[0].message.length > 0 && kl(e);
            return {
                c() {
                    t = B("div"),
                    n = B("div"),
                    p && p.c(),
                    s = U(),
                    l = B("span"),
                    o = N(e[6]),
                    r = U(),
                    a = B("span"),
                    i = N(m),
                    c = U(),
                    $ && $.c(),
                    u = U(),
                    g && g.c(),
                    Y(l, "class", "mr-1 underline font-bold"),
                    Y(a, "class", "font-bold tracking-wide"),
                    Y(a, "style", e[3]),
                    Y(n, "class", "p-2"),
                    Y(n, "style", e[2]),
                    Y(t, "class", Sl),
                    Y(t, "style", d = e[5] + e[4])
                },
                m(e, d) {
                    M(e, t, d),
                    _(t, n),
                    p && p.m(n, null),
                    _(n, s),
                    _(n, l),
                    _(l, o),
                    _(n, r),
                    _(n, a),
                    _(a, i),
                    _(n, c),
                    $ && $.m(n, null),
                    _(t, u),
                    g && g.m(t, null),
                    f = !0
                },
                p(e, l) {
                    e[7] ? p ? p.p(e, l) : (p = vl(e),
                    p.c(),
                    p.m(n, s)) : p && (p.d(1),
                    p = null),
                    (!f || 64 & l) && W(o, e[6]),
                    (!f || 1 & l) && m !== (m = e[0].author.name + "") && W(i, m),
                    (!f || 8 & l) && Y(a, "style", e[3]),
                    e[0].superSticker ? $ ? $.p(e, l) : ($ = wl(e),
                    $.c(),
                    $.m(n, null)) : $ && ($.d(1),
                    $ = null),
                    (!f || 4 & l) && Y(n, "style", e[2]),
                    e[0].message.length > 0 ? g ? (g.p(e, l),
                    1 & l && Ie(g, 1)) : (g = kl(e),
                    g.c(),
                    Ie(g, 1),
                    g.m(t, null)) : g && (Se(),
                    Le(g, 1, 1, (()=>{
                        g = null
                    }
                    )),
                    Ee()),
                    (!f || 48 & l && d !== (d = e[5] + e[4])) && Y(t, "style", d)
                },
                i(e) {
                    f || (Ie(g),
                    f = !0)
                },
                o(e) {
                    Le(g),
                    f = !1
                },
                d(e) {
                    e && D(t),
                    p && p.d(),
                    $ && $.d(),
                    g && g.d()
                }
            }
        }
        function vl(e) {
            let t, n, s;
            return {
                c() {
                    t = B("img"),
                    Y(t, "class", "h-5 w-5 inline align-middle rounded-full flex-none mr-1"),
                    u(t.src, n = e[0].author.profileIcon.src) || Y(t, "src", n),
                    Y(t, "alt", s = e[0].author.profileIcon.alt)
                },
                m(e, n) {
                    M(e, t, n)
                },
                p(e, l) {
                    1 & l && !u(t.src, n = e[0].author.profileIcon.src) && Y(t, "src", n),
                    1 & l && s !== (s = e[0].author.profileIcon.alt) && Y(t, "alt", s)
                },
                d(e) {
                    e && D(t)
                }
            }
        }
        function wl(e) {
            let t, n, s, l;
            return {
                c() {
                    t = B("img"),
                    Y(t, "class", "h-10 w-10 float-right"),
                    u(t.src, n = e[0].superSticker.src) || Y(t, "src", n),
                    Y(t, "alt", s = e[0].superSticker.alt),
                    Y(t, "title", l = e[0].superSticker.alt)
                },
                m(e, n) {
                    M(e, t, n)
                },
                p(e, o) {
                    1 & o && !u(t.src, n = e[0].superSticker.src) && Y(t, "src", n),
                    1 & o && s !== (s = e[0].superSticker.alt) && Y(t, "alt", s),
                    1 & o && l !== (l = e[0].superSticker.alt) && Y(t, "title", l)
                },
                d(e) {
                    e && D(t)
                }
            }
        }
        function kl(e) {
            let t, n, s;
            return n = new Js({
                props: {
                    message: e[0],
                    hideName: !0,
                    forceTLColor: e[8]()
                }
            }),
            {
                c() {
                    t = B("div"),
                    Ne(n.$$.fragment),
                    Y(t, "class", "p-2")
                },
                m(e, l) {
                    M(e, t, l),
                    Ue(n, t, null),
                    s = !0
                },
                p(e, t) {
                    const s = {};
                    1 & t && (s.message = e[0]),
                    n.$set(s)
                },
                i(e) {
                    s || (Ie(n.$$.fragment, e),
                    s = !0)
                },
                o(e) {
                    Le(n.$$.fragment, e),
                    s = !1
                },
                d(e) {
                    e && D(t),
                    je(n)
                }
            }
        }
        function Cl(e) {
            let t, n, s = e[1] && xl(e);
            return {
                c() {
                    s && s.c(),
                    t = j()
                },
                m(e, l) {
                    s && s.m(e, l),
                    M(e, t, l),
                    n = !0
                },
                p(e, [n]) {
                    e[1] ? s ? (s.p(e, n),
                    2 & n && Ie(s, 1)) : (s = xl(e),
                    s.c(),
                    Ie(s, 1),
                    s.m(t.parentNode, t)) : s && (Se(),
                    Le(s, 1, 1, (()=>{
                        s = null
                    }
                    )),
                    Ee())
                },
                i(e) {
                    n || (Ie(s),
                    n = !0)
                },
                o(e) {
                    Le(s),
                    n = !1
                },
                d(e) {
                    s && s.d(e),
                    e && D(t)
                }
            }
        }
        const Sl = "inline-flex flex-col rounded break-words overflow-hidden w-full";
        function El(e, t, n) {
            let s, l, o, r, a, i;
            var c;
            m(e, kt, (e=>n(7, i = e)));
            let {message: u} = t
              , d = "";
            return e.$$set = e=>{
                "message"in e && n(0, u = e.message)
            }
            ,
            e.$$.update = ()=>{
                if (513 & e.$$.dirty && n(1, s = null !== n(9, c = u.superChat) && void 0 !== c ? c : u.superSticker),
                2 & e.$$.dirty && n(6, l = null == s ? void 0 : s.amount),
                2 & e.$$.dirty && n(5, o = `background-color: #${null == s ? void 0 : s.bodyBackgroundColor};`),
                2 & e.$$.dirty && n(4, r = `color: #${null == s ? void 0 : s.bodyTextColor};`),
                2 & e.$$.dirty && n(3, a = `color: #${null == s ? void 0 : s.nameColor};`),
                1 & e.$$.dirty)
                    if (u.superChat) {
                        const e = u.superChat.headerBackgroundColor
                          , t = u.superChat.headerTextColor;
                        n(2, d = `background-color: #${e}; color: #${t};`)
                    } else
                        n(2, d = "");
                3 & e.$$.dirty && (s || console.error("Not a paid message", {
                    message: u
                }))
            }
            ,
            [u, s, d, a, r, o, l, i, ()=>{
                var e;
                if ("superChat"in u)
                    return yl()(`#${null === (e = u.superChat) || void 0 === e ? void 0 : e.headerTextColor}`) ? ut.LIGHT : ut.DARK
            }
            , c]
        }
        const Il = class extends Ye {
            constructor(e) {
                super(),
                Fe(this, e, El, Cl, i, {
                    message: 0
                })
            }
        }
        ;
        function Ll(e) {
            let t, n, s, l, o, r, a, i, c, u, d, f = e[0].author.name + "", m = e[5] && Tl(e), p = e[3] && e[3].length > 0 && _l(e), $ = e[2] && Ol(e), g = e[1] && Rl(e), h = e[4] && Al(e);
            return {
                c() {
                    t = B("div"),
                    n = B("div"),
                    m && m.c(),
                    s = U(),
                    l = B("span"),
                    o = N(f),
                    r = U(),
                    p && p.c(),
                    a = U(),
                    $ && $.c(),
                    i = U(),
                    g && g.c(),
                    u = U(),
                    h && h.c(),
                    Y(l, "class", "font-bold tracking-wide align-middle mr-3"),
                    Y(n, "class", "p-2"),
                    Y(n, "style", c = e[4] ? `background-color: #${ht};` : ""),
                    Y(t, "class", Ml),
                    G(t, "background-color", "#" + gt)
                },
                m(e, c) {
                    M(e, t, c),
                    _(t, n),
                    m && m.m(n, null),
                    _(n, s),
                    _(n, l),
                    _(l, o),
                    _(n, r),
                    p && p.m(n, null),
                    _(n, a),
                    $ && $.m(n, null),
                    _(n, i),
                    g && g.m(n, null),
                    _(t, u),
                    h && h.m(t, null),
                    d = !0
                },
                p(e, l) {
                    e[5] ? m ? m.p(e, l) : (m = Tl(e),
                    m.c(),
                    m.m(n, s)) : m && (m.d(1),
                    m = null),
                    (!d || 1 & l) && f !== (f = e[0].author.name + "") && W(o, f),
                    e[3] && e[3].length > 0 ? p ? (p.p(e, l),
                    8 & l && Ie(p, 1)) : (p = _l(e),
                    p.c(),
                    Ie(p, 1),
                    p.m(n, a)) : p && (Se(),
                    Le(p, 1, 1, (()=>{
                        p = null
                    }
                    )),
                    Ee()),
                    e[2] ? $ ? ($.p(e, l),
                    4 & l && Ie($, 1)) : ($ = Ol(e),
                    $.c(),
                    Ie($, 1),
                    $.m(n, i)) : $ && (Se(),
                    Le($, 1, 1, (()=>{
                        $ = null
                    }
                    )),
                    Ee()),
                    e[1] ? g ? g.p(e, l) : (g = Rl(e),
                    g.c(),
                    g.m(n, null)) : g && (g.d(1),
                    g = null),
                    (!d || 16 & l && c !== (c = e[4] ? `background-color: #${ht};` : "")) && Y(n, "style", c),
                    e[4] ? h ? (h.p(e, l),
                    16 & l && Ie(h, 1)) : (h = Al(e),
                    h.c(),
                    Ie(h, 1),
                    h.m(t, null)) : h && (Se(),
                    Le(h, 1, 1, (()=>{
                        h = null
                    }
                    )),
                    Ee())
                },
                i(e) {
                    d || (Ie(p),
                    Ie($),
                    Ie(h),
                    d = !0)
                },
                o(e) {
                    Le(p),
                    Le($),
                    Le(h),
                    d = !1
                },
                d(e) {
                    e && D(t),
                    m && m.d(),
                    p && p.d(),
                    $ && $.d(),
                    g && g.d(),
                    h && h.d()
                }
            }
        }
        function Tl(e) {
            let t, n, s;
            return {
                c() {
                    t = B("img"),
                    Y(t, "class", "h-5 w-5 inline align-middle rounded-full flex-none mr-1"),
                    u(t.src, n = e[0].author.profileIcon.src) || Y(t, "src", n),
                    Y(t, "alt", s = e[0].author.profileIcon.alt)
                },
                m(e, n) {
                    M(e, t, n)
                },
                p(e, l) {
                    1 & l && !u(t.src, n = e[0].author.profileIcon.src) && Y(t, "src", n),
                    1 & l && s !== (s = e[0].author.profileIcon.alt) && Y(t, "alt", s)
                },
                d(e) {
                    e && D(t)
                }
            }
        }
        function _l(e) {
            let t, n;
            return t = new In({
                props: {
                    class: "font-medium mr-3",
                    runs: e[3]
                }
            }),
            {
                c() {
                    Ne(t.$$.fragment)
                },
                m(e, s) {
                    Ue(t, e, s),
                    n = !0
                },
                p(e, n) {
                    const s = {};
                    8 & n && (s.runs = e[3]),
                    t.$set(s)
                },
                i(e) {
                    n || (Ie(t.$$.fragment, e),
                    n = !0)
                },
                o(e) {
                    Le(t.$$.fragment, e),
                    n = !1
                },
                d(e) {
                    je(t, e)
                }
            }
        }
        function Ol(e) {
            let t, n;
            return t = new In({
                props: {
                    runs: e[2].headerSubtext
                }
            }),
            {
                c() {
                    Ne(t.$$.fragment)
                },
                m(e, s) {
                    Ue(t, e, s),
                    n = !0
                },
                p(e, n) {
                    const s = {};
                    4 & n && (s.runs = e[2].headerSubtext),
                    t.$set(s)
                },
                i(e) {
                    n || (Ie(t.$$.fragment, e),
                    n = !0)
                },
                o(e) {
                    Le(t.$$.fragment, e),
                    n = !1
                },
                d(e) {
                    je(t, e)
                }
            }
        }
        function Rl(e) {
            let t, n, s, l;
            return {
                c() {
                    t = B("img"),
                    Y(t, "class", "h-10 w-10 float-right"),
                    u(t.src, n = e[1].image.src) || Y(t, "src", n),
                    Y(t, "alt", s = e[1].image.alt),
                    Y(t, "title", l = e[1].image.alt)
                },
                m(e, n) {
                    M(e, t, n)
                },
                p(e, o) {
                    2 & o && !u(t.src, n = e[1].image.src) && Y(t, "src", n),
                    2 & o && s !== (s = e[1].image.alt) && Y(t, "alt", s),
                    2 & o && l !== (l = e[1].image.alt) && Y(t, "title", l)
                },
                d(e) {
                    e && D(t)
                }
            }
        }
        function Al(e) {
            let t, n, s;
            return n = new Js({
                props: {
                    message: e[0],
                    hideName: !0
                }
            }),
            {
                c() {
                    t = B("div"),
                    Ne(n.$$.fragment),
                    Y(t, "class", "p-2")
                },
                m(e, l) {
                    M(e, t, l),
                    Ue(n, t, null),
                    s = !0
                },
                p(e, t) {
                    const s = {};
                    1 & t && (s.message = e[0]),
                    n.$set(s)
                },
                i(e) {
                    s || (Ie(n.$$.fragment, e),
                    s = !0)
                },
                o(e) {
                    Le(n.$$.fragment, e),
                    s = !1
                },
                d(e) {
                    e && D(t),
                    je(n)
                }
            }
        }
        function Pl(e) {
            let t, n, s = (e[2] || e[1]) && Ll(e);
            return {
                c() {
                    s && s.c(),
                    t = j()
                },
                m(e, l) {
                    s && s.m(e, l),
                    M(e, t, l),
                    n = !0
                },
                p(e, [n]) {
                    e[2] || e[1] ? s ? (s.p(e, n),
                    6 & n && Ie(s, 1)) : (s = Ll(e),
                    s.c(),
                    Ie(s, 1),
                    s.m(t.parentNode, t)) : s && (Se(),
                    Le(s, 1, 1, (()=>{
                        s = null
                    }
                    )),
                    Ee())
                },
                i(e) {
                    n || (Ie(s),
                    n = !0)
                },
                o(e) {
                    Le(s),
                    n = !1
                },
                d(e) {
                    s && s.d(e),
                    e && D(t)
                }
            }
        }
        const Ml = "inline-flex flex-col rounded break-words overflow-hidden w-full text-white";
        function Dl(e, t, n) {
            let s, l, o, r, a;
            var i;
            m(e, kt, (e=>n(5, a = e)));
            let {message: c} = t;
            return e.$$set = e=>{
                "message"in e && n(0, c = e.message)
            }
            ,
            e.$$.update = ()=>{
                1 & e.$$.dirty && n(2, s = c.membership),
                1 & e.$$.dirty && n(1, l = c.membershipGiftPurchase),
                7 & e.$$.dirty && (s || l || console.error("Not a membership item", {
                    message: c
                })),
                1 & e.$$.dirty && n(4, o = c.message.length > 0),
                70 & e.$$.dirty && n(3, r = null === n(6, i = s || l) || void 0 === i ? void 0 : i.headerPrimaryText)
            }
            ,
            [c, l, s, r, o, a, i]
        }
        const Hl = class extends Ye {
            constructor(e) {
                super(),
                Fe(this, e, Dl, Pl, i, {
                    message: 0
                })
            }
        }
        ;
        function Bl(e) {
            let t, n, s, l, o, r;
            return {
                c() {
                    t = B("div"),
                    Y(t, "class", "bg-black fixed top-0 left-0 z-10 w-full h-full"),
                    G(t, "opacity", e[0])
                },
                m(n, s) {
                    M(n, t, s),
                    l = !0,
                    o || (r = F(t, "click", e[3]),
                    o = !0)
                },
                p(n, [s]) {
                    e = n,
                    (!l || 1 & s) && G(t, "opacity", e[0])
                },
                i(o) {
                    l || (pe((()=>{
                        s && s.end(1),
                        n = _e(t, qe, e[1]),
                        n.start()
                    }
                    )),
                    l = !0)
                },
                o(o) {
                    n && n.invalidate(),
                    s = Oe(t, qe, e[2]),
                    l = !1
                },
                d(e) {
                    e && D(t),
                    e && s && s.end(),
                    o = !1,
                    r()
                }
            }
        }
        function zl(e, t, n) {
            let {opacity: s=.5} = t
              , {inProps: l={
                duration: 200,
                easing: We
            }} = t
              , {outProps: o={
                duration: 200,
                easing: Ge
            }} = t;
            return e.$$set = e=>{
                "opacity"in e && n(0, s = e.opacity),
                "inProps"in e && n(1, l = e.inProps),
                "outProps"in e && n(2, o = e.outProps)
            }
            ,
            [s, l, o, function(t) {
                oe.call(this, e, t)
            }
            ]
        }
        const Nl = class extends Ye {
            constructor(e) {
                super(),
                Fe(this, e, zl, Bl, i, {
                    opacity: 0,
                    inProps: 1,
                    outProps: 2
                })
            }
        }
          , Ul = e=>({})
          , jl = e=>({})
          , Fl = e=>({})
          , Yl = e=>({});
        function Kl(e) {
            let t, n, s, l, o, r, a, i, c, u, d;
            n = new Nl({
                props: {
                    opacity: e[1]
                }
            }),
            n.$on("click", e[12]);
            const f = e[11].title
              , m = p(f, e, e[10], Yl)
              , $ = e[11].default
              , y = p($, e, e[10], null)
              , x = e[11].actions
              , v = p(x, e, e[10], jl);
            return {
                c() {
                    t = B("div"),
                    Ne(n.$$.fragment),
                    s = U(),
                    l = B("div"),
                    o = B("div"),
                    r = B("div"),
                    m && m.c(),
                    a = U(),
                    y && y.c(),
                    i = U(),
                    c = B("div"),
                    v && v.c(),
                    Y(r, "class", e[5]),
                    Y(c, "class", e[4]),
                    Y(o, "class", e[6]),
                    Y(l, "class", "h-full w-full absolute flex items-center justify-center"),
                    Y(t, "class", "fixed w-full h-full top-0 left-0 z-30")
                },
                m(e, u) {
                    M(e, t, u),
                    Ue(n, t, null),
                    _(t, s),
                    _(t, l),
                    _(l, o),
                    _(o, r),
                    m && m.m(r, null),
                    _(o, a),
                    y && y.m(o, null),
                    _(o, i),
                    _(o, c),
                    v && v.m(c, null),
                    d = !0
                },
                p(t, s) {
                    e = t;
                    const l = {};
                    2 & s && (l.opacity = e[1]),
                    n.$set(l),
                    m && m.p && (!d || 1024 & s) && h(m, f, e, e[10], d ? g(f, e[10], s, Fl) : b(e[10]), Yl),
                    (!d || 32 & s) && Y(r, "class", e[5]),
                    y && y.p && (!d || 1024 & s) && h(y, $, e, e[10], d ? g($, e[10], s, null) : b(e[10]), null),
                    v && v.p && (!d || 1024 & s) && h(v, x, e, e[10], d ? g(x, e[10], s, Ul) : b(e[10]), jl),
                    (!d || 16 & s) && Y(c, "class", e[4]),
                    (!d || 64 & s) && Y(o, "class", e[6])
                },
                i(t) {
                    d || (Ie(n.$$.fragment, t),
                    Ie(m, t),
                    Ie(y, t),
                    Ie(v, t),
                    u || pe((()=>{
                        u = _e(o, Je, e[3]),
                        u.start()
                    }
                    )),
                    d = !0)
                },
                o(e) {
                    Le(n.$$.fragment, e),
                    Le(m, e),
                    Le(y, e),
                    Le(v, e),
                    d = !1
                },
                d(e) {
                    e && D(t),
                    je(n),
                    m && m.d(e),
                    y && y.d(e),
                    v && v.d(e)
                }
            }
        }
        function Wl(e) {
            let t, n, s = e[0] && Kl(e);
            return {
                c() {
                    s && s.c(),
                    t = j()
                },
                m(e, l) {
                    s && s.m(e, l),
                    M(e, t, l),
                    n = !0
                },
                p(e, [n]) {
                    e[0] ? s ? (s.p(e, n),
                    1 & n && Ie(s, 1)) : (s = Kl(e),
                    s.c(),
                    Ie(s, 1),
                    s.m(t.parentNode, t)) : s && (Se(),
                    Le(s, 1, 1, (()=>{
                        s = null
                    }
                    )),
                    Ee())
                },
                i(e) {
                    n || (Ie(s),
                    n = !0)
                },
                o(e) {
                    Le(s),
                    n = !1
                },
                d(e) {
                    s && s.d(e),
                    e && D(t)
                }
            }
        }
        const Gl = "items-center z-50 rounded bg-white dark:bg-dark-400 p-4 shadow"
          , ql = "text-lg font-bold pb-4"
          , Vl = "flex w-full justify-end pt-4";
        function Xl(e, t, n) {
            let l, o, r, {$$slots: a={}, $$scope: i} = t, {value: c} = t, {classes: u=Gl} = t, {titleClasses: d=ql} = t, {actionsClasses: f=Vl} = t, {opacity: m=.5} = t, {persistent: p=!1} = t, {transitionProps: $={
                duration: 150,
                easing: We,
                delay: 150
            }} = t;
            const g = new _n(u,Gl)
              , h = new _n(d,ql)
              , b = new _n(f,Vl);
            return e.$$set = e=>{
                n(16, t = s(s({}, t), y(e))),
                "value"in e && n(0, c = e.value),
                "classes"in e && n(7, u = e.classes),
                "titleClasses"in e && n(8, d = e.titleClasses),
                "actionsClasses"in e && n(9, f = e.actionsClasses),
                "opacity"in e && n(1, m = e.opacity),
                "persistent"in e && n(2, p = e.persistent),
                "transitionProps"in e && n(3, $ = e.transitionProps),
                "$$scope"in e && n(10, i = e.$$scope)
            }
            ,
            e.$$.update = ()=>{
                n(6, l = g.flush().add(u, !0, Gl).add(t.class).get()),
                256 & e.$$.dirty && n(5, o = h.flush().add(d, !0, Vl).get()),
                512 & e.$$.dirty && n(4, r = b.flush().add(f, !0, Vl).get())
            }
            ,
            t = y(t),
            [c, m, p, $, r, o, l, u, d, f, i, a, ()=>!p && n(0, c = !1)]
        }
        const Jl = class extends Ye {
            constructor(e) {
                super(),
                Fe(this, e, Xl, Wl, i, {
                    value: 0,
                    classes: 7,
                    titleClasses: 8,
                    actionsClasses: 9,
                    opacity: 1,
                    persistent: 2,
                    transitionProps: 3
                })
            }
        }
        ;
        function Zl(e) {
            let t, n, l, o, a, i, c = e[3] && eo(e);
            const u = e[34].default
              , d = p(u, e, e[43], null);
            let f = [{
                class: e[1]
            }, e[9], {
                type: e[6]
            }, {
                disabled: e[2]
            }]
              , m = {};
            for (let e = 0; e < f.length; e += 1)
                m = s(m, f[e]);
            return {
                c() {
                    t = B("button"),
                    c && c.c(),
                    n = U(),
                    d && d.c(),
                    K(t, m)
                },
                m(s, r) {
                    M(s, t, r),
                    c && c.m(t, null),
                    _(t, n),
                    d && d.m(t, null),
                    t.autofocus && t.focus(),
                    o = !0,
                    a || (i = [w(l = e[8].call(null, t)), F(t, "click", e[42]), F(t, "click", e[38]), F(t, "mouseover", e[39]), F(t, "*", e[40])],
                    a = !0)
                },
                p(e, s) {
                    e[3] ? c ? (c.p(e, s),
                    8 & s[0] && Ie(c, 1)) : (c = eo(e),
                    c.c(),
                    Ie(c, 1),
                    c.m(t, n)) : c && (Se(),
                    Le(c, 1, 1, (()=>{
                        c = null
                    }
                    )),
                    Ee()),
                    d && d.p && (!o || 4096 & s[1]) && h(d, u, e, e[43], o ? g(u, e[43], s, null) : b(e[43]), null),
                    K(t, m = De(f, [(!o || 2 & s[0]) && {
                        class: e[1]
                    }, e[9], (!o || 64 & s[0]) && {
                        type: e[6]
                    }, (!o || 4 & s[0]) && {
                        disabled: e[2]
                    }]))
                },
                i(e) {
                    o || (Ie(c),
                    Ie(d, e),
                    o = !0)
                },
                o(e) {
                    Le(c),
                    Le(d, e),
                    o = !1
                },
                d(e) {
                    e && D(t),
                    c && c.d(),
                    d && d.d(e),
                    a = !1,
                    r(i)
                }
            }
        }
        function Ql(e) {
            let t, n, l, o, a, i, c, u = e[3] && no(e);
            const d = e[34].default
              , f = p(d, e, e[43], null);
            let m = [{
                class: e[1]
            }, e[9], {
                type: e[6]
            }, {
                disabled: e[2]
            }]
              , $ = {};
            for (let e = 0; e < m.length; e += 1)
                $ = s($, m[e]);
            let y = [{
                href: e[5]
            }, e[9]]
              , x = {};
            for (let e = 0; e < y.length; e += 1)
                x = s(x, y[e]);
            return {
                c() {
                    t = B("a"),
                    n = B("button"),
                    u && u.c(),
                    l = U(),
                    f && f.c(),
                    K(n, $),
                    K(t, x)
                },
                m(s, r) {
                    M(s, t, r),
                    _(t, n),
                    u && u.m(n, null),
                    _(n, l),
                    f && f.m(n, null),
                    n.autofocus && n.focus(),
                    a = !0,
                    i || (c = [w(o = e[8].call(null, n)), F(n, "click", e[41]), F(n, "click", e[35]), F(n, "mouseover", e[36]), F(n, "*", e[37])],
                    i = !0)
                },
                p(e, s) {
                    e[3] ? u ? (u.p(e, s),
                    8 & s[0] && Ie(u, 1)) : (u = no(e),
                    u.c(),
                    Ie(u, 1),
                    u.m(n, l)) : u && (Se(),
                    Le(u, 1, 1, (()=>{
                        u = null
                    }
                    )),
                    Ee()),
                    f && f.p && (!a || 4096 & s[1]) && h(f, d, e, e[43], a ? g(d, e[43], s, null) : b(e[43]), null),
                    K(n, $ = De(m, [(!a || 2 & s[0]) && {
                        class: e[1]
                    }, e[9], (!a || 64 & s[0]) && {
                        type: e[6]
                    }, (!a || 4 & s[0]) && {
                        disabled: e[2]
                    }])),
                    K(t, x = De(y, [(!a || 32 & s[0]) && {
                        href: e[5]
                    }, e[9]]))
                },
                i(e) {
                    a || (Ie(u),
                    Ie(f, e),
                    a = !0)
                },
                o(e) {
                    Le(u),
                    Le(f, e),
                    a = !1
                },
                d(e) {
                    e && D(t),
                    u && u.d(),
                    f && f.d(e),
                    i = !1,
                    r(c)
                }
            }
        }
        function eo(e) {
            let t, n;
            return t = new Mn({
                props: {
                    class: e[7],
                    small: e[4],
                    $$slots: {
                        default: [to]
                    },
                    $$scope: {
                        ctx: e
                    }
                }
            }),
            {
                c() {
                    Ne(t.$$.fragment)
                },
                m(e, s) {
                    Ue(t, e, s),
                    n = !0
                },
                p(e, n) {
                    const s = {};
                    128 & n[0] && (s.class = e[7]),
                    16 & n[0] && (s.small = e[4]),
                    8 & n[0] | 4096 & n[1] && (s.$$scope = {
                        dirty: n,
                        ctx: e
                    }),
                    t.$set(s)
                },
                i(e) {
                    n || (Ie(t.$$.fragment, e),
                    n = !0)
                },
                o(e) {
                    Le(t.$$.fragment, e),
                    n = !1
                },
                d(e) {
                    je(t, e)
                }
            }
        }
        function to(e) {
            let t;
            return {
                c() {
                    t = N(e[3])
                },
                m(e, n) {
                    M(e, t, n)
                },
                p(e, n) {
                    8 & n[0] && W(t, e[3])
                },
                d(e) {
                    e && D(t)
                }
            }
        }
        function no(e) {
            let t, n;
            return t = new Mn({
                props: {
                    class: e[7],
                    small: e[4],
                    $$slots: {
                        default: [so]
                    },
                    $$scope: {
                        ctx: e
                    }
                }
            }),
            {
                c() {
                    Ne(t.$$.fragment)
                },
                m(e, s) {
                    Ue(t, e, s),
                    n = !0
                },
                p(e, n) {
                    const s = {};
                    128 & n[0] && (s.class = e[7]),
                    16 & n[0] && (s.small = e[4]),
                    8 & n[0] | 4096 & n[1] && (s.$$scope = {
                        dirty: n,
                        ctx: e
                    }),
                    t.$set(s)
                },
                i(e) {
                    n || (Ie(t.$$.fragment, e),
                    n = !0)
                },
                o(e) {
                    Le(t.$$.fragment, e),
                    n = !1
                },
                d(e) {
                    je(t, e)
                }
            }
        }
        function so(e) {
            let t;
            return {
                c() {
                    t = N(e[3])
                },
                m(e, n) {
                    M(e, t, n)
                },
                p(e, n) {
                    8 & n[0] && W(t, e[3])
                },
                d(e) {
                    e && D(t)
                }
            }
        }
        function lo(e) {
            let t, n, s, l;
            const o = [Ql, Zl]
              , r = [];
            function a(e, t) {
                return e[5] ? 0 : 1
            }
            return t = a(e),
            n = r[t] = o[t](e),
            {
                c() {
                    n.c(),
                    s = j()
                },
                m(e, n) {
                    r[t].m(e, n),
                    M(e, s, n),
                    l = !0
                },
                p(e, l) {
                    let i = t;
                    t = a(e),
                    t === i ? r[t].p(e, l) : (Se(),
                    Le(r[i], 1, 1, (()=>{
                        r[i] = null
                    }
                    )),
                    Ee(),
                    n = r[t],
                    n ? n.p(e, l) : (n = r[t] = o[t](e),
                    n.c()),
                    Ie(n, 1),
                    n.m(s.parentNode, s))
                },
                i(e) {
                    l || (Ie(n),
                    l = !0)
                },
                o(e) {
                    Le(n),
                    l = !1
                },
                d(e) {
                    r[t].d(e),
                    e && D(s)
                }
            }
        }
        const oo = "z-10 py-2 px-4 uppercase text-sm font-medium relative overflow-hidden"
          , ro = "text-white duration-200 ease-in"
          , ao = "bg-transparent border border-solid"
          , io = "bg-transparent border-none px-4 hover:bg-transparent"
          , co = "p-4 flex items-center select-none"
          , uo = "hover:bg-transparent"
          , fo = "pt-1 pb-1 pl-2 pr-2 text-xs"
          , mo = "bg-gray-300 text-gray-500 dark:bg-dark-400 pointer-events-none hover:bg-gray-300 cursor-default"
          , po = "hover:shadow shadow";
        function $o(e, t, n) {
            let l, o, {$$slots: r={}, $$scope: a} = t, {value: i=!1} = t, {outlined: c=!1} = t, {text: u=!1} = t, {block: d=!1} = t, {disabled: f=!1} = t, {icon: m=null} = t, {small: p=!1} = t, {light: $=!1} = t, {dark: g=!1} = t, {flat: h=!1} = t, {iconClass: b=""} = t, {color: x="primary"} = t, {href: v=null} = t, {fab: w=!1} = t, {type: k="button"} = t, {remove: C=""} = t, {add: S=""} = t, {replace: E={}} = t, {classes: I=oo} = t, {basicClasses: L=ro} = t, {outlinedClasses: T=ao} = t, {textClasses: _=io} = t, {iconClasses: O=co} = t, {fabClasses: R=uo} = t, {smallClasses: A=fo} = t, {disabledClasses: P=mo} = t, {elevationClasses: M=po} = t;
            w = w || u && m;
            const D = !c && !u && !w
              , H = (D || m) && !f && !h && !u;
            let B = e=>e
              , z = 0;
            const {bg: N, border: U, txt: j} = function(e, t=500) {
                return {
                    bg: n=>Tn("bg", e, n, t),
                    border: n=>Tn("border", e, n, t),
                    txt: n=>Tn("text", e, n, t),
                    caret: n=>Tn("caret", e, n, t)
                }
            }(x)
              , F = new _n(I,oo);
            let Y;
            m && (Y = new _n(b));
            const K = Dn(u || w || c ? x : "white")
              , W = function(e, t) {
                const n = ["outlined", "text", "color", "block", "disabled", "icon", "small", "light", "dark", "flat", "add", "remove", "replace", ...On];
                return Object.keys(t).reduce(((e,s)=>s.includes("$$") || s.includes("Class") || n.includes(s) ? e : {
                    ...e,
                    [s]: t[s]
                }), {})
            }(0, t);
            return e.$$set = e=>{
                n(51, t = s(s({}, t), y(e))),
                "value"in e && n(0, i = e.value),
                "outlined"in e && n(11, c = e.outlined),
                "text"in e && n(12, u = e.text),
                "block"in e && n(13, d = e.block),
                "disabled"in e && n(2, f = e.disabled),
                "icon"in e && n(3, m = e.icon),
                "small"in e && n(4, p = e.small),
                "light"in e && n(14, $ = e.light),
                "dark"in e && n(15, g = e.dark),
                "flat"in e && n(16, h = e.flat),
                "iconClass"in e && n(17, b = e.iconClass),
                "color"in e && n(18, x = e.color),
                "href"in e && n(5, v = e.href),
                "fab"in e && n(10, w = e.fab),
                "type"in e && n(6, k = e.type),
                "remove"in e && n(19, C = e.remove),
                "add"in e && n(20, S = e.add),
                "replace"in e && n(21, E = e.replace),
                "classes"in e && n(1, I = e.classes),
                "basicClasses"in e && n(22, L = e.basicClasses),
                "outlinedClasses"in e && n(23, T = e.outlinedClasses),
                "textClasses"in e && n(24, _ = e.textClasses),
                "iconClasses"in e && n(25, O = e.iconClasses),
                "fabClasses"in e && n(26, R = e.fabClasses),
                "smallClasses"in e && n(27, A = e.smallClasses),
                "disabledClasses"in e && n(28, P = e.disabledClasses),
                "elevationClasses"in e && n(29, M = e.elevationClasses),
                "$$scope"in e && n(43, a = e.$$scope)
            }
            ,
            e.$$.update = ()=>{
                1073790976 & e.$$.dirty[0] && (n(30, z = $ ? 200 : 0),
                n(30, z = g ? -400 : z)),
                1073741824 & e.$$.dirty[0] && n(33, l = 500 - z),
                1073741824 & e.$$.dirty[0] && n(32, o = 400 - z),
                n(1, I = F.flush().add(L, D, ro).add(`${N(l)} hover:${N(o)}`, D).add(M, H, po).add(T, c, ao).add(`${U(o)} ${j(l)} hover:${N("trans")} dark-hover:${N("transDark")}`, c).add(`${j(o)}`, u).add(_, u, io).add(O, m, co).remove("py-2", m).remove(j(o), w).add(P, f, mo).add(A, p, fo).add("flex items-center justify-center h-8 w-8", p && m).add("border-solid", c).add("rounded-full", m).add("w-full", d).add("rounded", D || c || u).add("button", !m).add(R, w, uo).add(`hover:${N("transLight")}`, w).add(t.class).remove(C).replace(E).add(S).get()),
                132096 & e.$$.dirty[0] | 1 & e.$$.dirty[1] && Y && n(7, B = Y.flush().add(j(), w && !b).get())
            }
            ,
            t = y(t),
            [i, I, f, m, p, v, k, B, K, W, w, c, u, d, $, g, h, b, x, C, S, E, L, T, _, O, R, A, P, M, z, Y, o, l, r, function(t) {
                oe.call(this, e, t)
            }
            , function(t) {
                oe.call(this, e, t)
            }
            , function(t) {
                oe.call(this, e, t)
            }
            , function(t) {
                oe.call(this, e, t)
            }
            , function(t) {
                oe.call(this, e, t)
            }
            , function(t) {
                oe.call(this, e, t)
            }
            , ()=>n(0, i = !i), ()=>n(0, i = !i), a]
        }
        const go = class extends Ye {
            constructor(e) {
                super(),
                Fe(this, e, $o, lo, i, {
                    value: 0,
                    outlined: 11,
                    text: 12,
                    block: 13,
                    disabled: 2,
                    icon: 3,
                    small: 4,
                    light: 14,
                    dark: 15,
                    flat: 16,
                    iconClass: 17,
                    color: 18,
                    href: 5,
                    fab: 10,
                    type: 6,
                    remove: 19,
                    add: 20,
                    replace: 21,
                    classes: 1,
                    basicClasses: 22,
                    outlinedClasses: 23,
                    textClasses: 24,
                    iconClasses: 25,
                    fabClasses: 26,
                    smallClasses: 27,
                    disabledClasses: 28,
                    elevationClasses: 29
                }, null, [-1, -1])
            }
        }
        ;
        function ho(e) {
            let t, n;
            return t = new go({
                props: {
                    icon: e[0],
                    color: e[1],
                    text: !e[2],
                    remove: "p-4 px-4 rounded-full",
                    add: e[4],
                    iconClass: e[3]
                }
            }),
            t.$on("click", e[7]),
            {
                c() {
                    Ne(t.$$.fragment)
                },
                m(e, s) {
                    Ue(t, e, s),
                    n = !0
                },
                p(e, [n]) {
                    const s = {};
                    1 & n && (s.icon = e[0]),
                    2 & n && (s.color = e[1]),
                    4 & n && (s.text = !e[2]),
                    16 & n && (s.add = e[4]),
                    8 & n && (s.iconClass = e[3]),
                    t.$set(s)
                },
                i(e) {
                    n || (Ie(t.$$.fragment, e),
                    n = !0)
                },
                o(e) {
                    Le(t.$$.fragment, e),
                    n = !1
                },
                d(e) {
                    je(t, e)
                }
            }
        }
        function bo(e, t, n) {
            let l, {icon: o} = t, {color: r="primary"} = t, {filled: a=!1} = t, {noRound: i=!1} = t, {noPadding: c=!1} = t, {iconClass: u=""} = t;
            return e.$$set = e=>{
                n(9, t = s(s({}, t), y(e))),
                "icon"in e && n(0, o = e.icon),
                "color"in e && n(1, r = e.color),
                "filled"in e && n(2, a = e.filled),
                "noRound"in e && n(5, i = e.noRound),
                "noPadding"in e && n(6, c = e.noPadding),
                "iconClass"in e && n(3, u = e.iconClass)
            }
            ,
            e.$$.update = ()=>{
                96 & e.$$.dirty && n(4, l = ((e,n)=>{
                    let s = "";
                    return e || (s += " rounded-full"),
                    n || (s += " p-2"),
                    `${s} ${t.class ? t.class : ""}`
                }
                )(i, c))
            }
            ,
            t = y(t),
            [o, r, a, u, l, i, c, function(t) {
                oe.call(this, e, t)
            }
            ]
        }
        const yo = class extends Ye {
            constructor(e) {
                super(),
                Fe(this, e, bo, ho, i, {
                    icon: 0,
                    color: 1,
                    filled: 2,
                    noRound: 5,
                    noPadding: 6,
                    iconClass: 3
                })
            }
        }
          , xo = e=>({})
          , vo = e=>({})
          , wo = e=>({})
          , ko = e=>({
            slot: "actions"
        });
        function Co(e) {
            let t;
            const n = e[7].default
              , s = p(n, e, e[10], null);
            return {
                c() {
                    s && s.c()
                },
                m(e, n) {
                    s && s.m(e, n),
                    t = !0
                },
                p(e, l) {
                    s && s.p && (!t || 1024 & l) && h(s, n, e, e[10], t ? g(n, e[10], l, null) : b(e[10]), null)
                },
                i(e) {
                    t || (Ie(s, e),
                    t = !0)
                },
                o(e) {
                    Le(s, e),
                    t = !1
                },
                d(e) {
                    s && s.d(e)
                }
            }
        }
        function So(t) {
            let n, s;
            return n = new yo({
                props: {
                    color: "error",
                    icon: "close"
                }
            }),
            n.$on("click", t[8]),
            {
                c() {
                    Ne(n.$$.fragment)
                },
                m(e, t) {
                    Ue(n, e, t),
                    s = !0
                },
                p: e,
                i(e) {
                    s || (Ie(n.$$.fragment, e),
                    s = !0)
                },
                o(e) {
                    Le(n.$$.fragment, e),
                    s = !1
                },
                d(e) {
                    je(n, e)
                }
            }
        }
        function Eo(e) {
            let t, n, s, l;
            const o = e[7].title
              , r = p(o, e, e[10], vo)
              , a = r || function(e) {
                let t, n;
                return {
                    c() {
                        t = B("h6"),
                        n = N(e[1])
                    },
                    m(e, s) {
                        M(e, t, s),
                        _(t, n)
                    },
                    p(e, t) {
                        2 & t && W(n, e[1])
                    },
                    d(e) {
                        e && D(t)
                    }
                }
            }(e);
            let i = !e[2] && So(e);
            return {
                c() {
                    t = B("div"),
                    n = B("div"),
                    a && a.c(),
                    s = U(),
                    i && i.c(),
                    Y(n, "class", "flex-1"),
                    Y(t, "slot", "title"),
                    Y(t, "class", "flex flex-row items-center")
                },
                m(e, o) {
                    M(e, t, o),
                    _(t, n),
                    a && a.m(n, null),
                    _(t, s),
                    i && i.m(t, null),
                    l = !0
                },
                p(e, n) {
                    r ? r.p && (!l || 1024 & n) && h(r, o, e, e[10], l ? g(o, e[10], n, xo) : b(e[10]), vo) : a && a.p && (!l || 2 & n) && a.p(e, l ? n : -1),
                    e[2] ? i && (Se(),
                    Le(i, 1, 1, (()=>{
                        i = null
                    }
                    )),
                    Ee()) : i ? (i.p(e, n),
                    4 & n && Ie(i, 1)) : (i = So(e),
                    i.c(),
                    Ie(i, 1),
                    i.m(t, null))
                },
                i(e) {
                    l || (Ie(a, e),
                    Ie(i),
                    l = !0)
                },
                o(e) {
                    Le(a, e),
                    Le(i),
                    l = !1
                },
                d(e) {
                    e && D(t),
                    a && a.d(e),
                    i && i.d()
                }
            }
        }
        function Io(e) {
            let t;
            const n = e[7].actions
              , s = p(n, e, e[10], ko);
            return {
                c() {
                    s && s.c()
                },
                m(e, n) {
                    s && s.m(e, n),
                    t = !0
                },
                p(e, l) {
                    s && s.p && (!t || 1024 & l) && h(s, n, e, e[10], t ? g(n, e[10], l, wo) : b(e[10]), ko)
                },
                i(e) {
                    t || (Ie(s, e),
                    t = !0)
                },
                o(e) {
                    Le(s, e),
                    t = !1
                },
                d(e) {
                    s && s.d(e)
                }
            }
        }
        function Lo(e) {
            let t, n, s;
            function l(t) {
                e[9](t)
            }
            let o = {
                classes: e[3],
                $$slots: {
                    actions: [Io],
                    title: [Eo],
                    default: [Co]
                },
                $$scope: {
                    ctx: e
                }
            };
            return void 0 !== e[0] && (o.value = e[0]),
            t = new Jl({
                props: o
            }),
            ae.push((()=>ze(t, "value", l))),
            {
                c() {
                    Ne(t.$$.fragment)
                },
                m(e, n) {
                    Ue(t, e, n),
                    s = !0
                },
                p(e, [s]) {
                    const l = {};
                    8 & s && (l.classes = e[3]),
                    1031 & s && (l.$$scope = {
                        dirty: s,
                        ctx: e
                    }),
                    !n && 1 & s && (n = !0,
                    l.value = e[0],
                    $e((()=>n = !1))),
                    t.$set(l)
                },
                i(e) {
                    s || (Ie(t.$$.fragment, e),
                    s = !0)
                },
                o(e) {
                    Le(t.$$.fragment, e),
                    s = !1
                },
                d(e) {
                    je(t, e)
                }
            }
        }
        function To(e, t, n) {
            let l, {$$slots: o={}, $$scope: r} = t;
            var a;
            let {title: i=""} = t
              , {active: c=!1} = t
              , {expandWidth: u=!1} = t
              , {bgColor: d="bg-white dark:bg-dark-800"} = t
              , {noCloseButton: f=!1} = t;
            return e.$$set = e=>{
                n(11, t = s(s({}, t), y(e))),
                "title"in e && n(1, i = e.title),
                "active"in e && n(0, c = e.active),
                "expandWidth"in e && n(4, u = e.expandWidth),
                "bgColor"in e && n(5, d = e.bgColor),
                "noCloseButton"in e && n(2, f = e.noCloseButton),
                "$$scope"in e && n(10, r = e.$$scope)
            }
            ,
            e.$$.update = ()=>{
                n(3, l = `items-center z-50 rounded p-4 shadow ${d} max-h-full overflow-y-auto text-xs ` + (u ? "w-full mx-2 " : " ") + (null !== n(6, a = t.class) && void 0 !== a ? a : ""))
            }
            ,
            t = y(t),
            [c, i, f, l, u, d, a, o, ()=>n(0, c = !1), function(e) {
                c = e,
                n(0, c)
            }
            , r]
        }
        const _o = class extends Ye {
            constructor(e) {
                super(),
                Fe(this, e, To, Lo, i, {
                    title: 1,
                    active: 0,
                    expandWidth: 4,
                    bgColor: 5,
                    noCloseButton: 2
                })
            }
        }
        ;
        function Oo(e) {
            O(e, "svelte-1o8z87d", ".ripple.svelte-1o8z87d{position:absolute !important}")
        }
        function Ro(e) {
            let t, n, s, l, o, r;
            const a = e[6].default
              , i = p(a, e, e[5], null);
            return {
                c() {
                    t = B("span"),
                    i && i.c(),
                    Y(t, "class", n = "z-40 " + e[3].class + " p-2 rounded-full flex items-center justify-center top-0 left-0 " + (e[0] ? "" : e[1]) + " svelte-1o8z87d")
                },
                m(n, a) {
                    M(n, t, a),
                    i && i.m(t, null),
                    l = !0,
                    o || (r = w(s = e[2].call(null, t)),
                    o = !0)
                },
                p(e, [s]) {
                    i && i.p && (!l || 32 & s) && h(i, a, e, e[5], l ? g(a, e[5], s, null) : b(e[5]), null),
                    (!l || 11 & s && n !== (n = "z-40 " + e[3].class + " p-2 rounded-full flex items-center justify-center top-0 left-0 " + (e[0] ? "" : e[1]) + " svelte-1o8z87d")) && Y(t, "class", n)
                },
                i(e) {
                    l || (Ie(i, e),
                    l = !0)
                },
                o(e) {
                    Le(i, e),
                    l = !1
                },
                d(e) {
                    e && D(t),
                    i && i.d(e),
                    o = !1,
                    r()
                }
            }
        }
        function Ao(e, t, n) {
            let l, o, {$$slots: r={}, $$scope: a} = t, {color: i="primary"} = t, {noHover: c=!1} = t;
            return e.$$set = e=>{
                n(3, t = s(s({}, t), y(e))),
                "color"in e && n(4, i = e.color),
                "noHover"in e && n(0, c = e.noHover),
                "$$scope"in e && n(5, a = e.$$scope)
            }
            ,
            e.$$.update = ()=>{
                16 & e.$$.dirty && n(2, l = Dn(i, !0)),
                16 & e.$$.dirty && n(1, o = `hover:bg-${i}-transLight`)
            }
            ,
            t = y(t),
            [c, o, l, t, i, a, r]
        }
        const Po = class extends Ye {
            constructor(e) {
                super(),
                Fe(this, e, Ao, Ro, i, {
                    color: 4,
                    noHover: 0
                }, Oo)
            }
        }
        ;
        function Mo(e) {
            let t, n;
            const l = e[7].default
              , o = p(l, e, e[6], null)
              , r = o || function(e) {
                let t;
                return {
                    c() {
                        t = N(e[0])
                    },
                    m(e, n) {
                        M(e, t, n)
                    },
                    p(e, n) {
                        1 & n && W(t, e[0])
                    },
                    d(e) {
                        e && D(t)
                    }
                }
            }(e);
            let a = [{
                "aria-hidden": "true"
            }, e[2], {
                class: e[1]
            }]
              , i = {};
            for (let e = 0; e < a.length; e += 1)
                i = s(i, a[e]);
            return {
                c() {
                    t = B("label"),
                    r && r.c(),
                    K(t, i)
                },
                m(e, s) {
                    M(e, t, s),
                    r && r.m(t, null),
                    n = !0
                },
                p(e, [s]) {
                    o ? o.p && (!n || 64 & s) && h(o, l, e, e[6], n ? g(l, e[6], s, null) : b(e[6]), null) : r && r.p && (!n || 1 & s) && r.p(e, n ? s : -1),
                    K(t, i = De(a, [{
                        "aria-hidden": "true"
                    }, 4 & s && e[2], (!n || 2 & s) && {
                        class: e[1]
                    }]))
                },
                i(e) {
                    n || (Ie(r, e),
                    n = !0)
                },
                o(e) {
                    Le(r, e),
                    n = !1
                },
                d(e) {
                    e && D(t),
                    r && r.d(e)
                }
            }
        }
        const Do = "pl-2 cursor-pointer 'text-gray-700 dark:text-gray-300'";
        function Ho(e, t, n) {
            let l, {$$slots: o={}, $$scope: r} = t, {classes: a=Do} = t, {label: i=""} = t, {disabled: c=!1} = t, {disabledClasses: u="text-gray-500 dark:text-gray-600"} = t;
            const d = new _n(a,Do);
            return e.$$set = e=>{
                n(2, t = s(s({}, t), y(e))),
                "classes"in e && n(3, a = e.classes),
                "label"in e && n(0, i = e.label),
                "disabled"in e && n(4, c = e.disabled),
                "disabledClasses"in e && n(5, u = e.disabledClasses),
                "$$scope"in e && n(6, r = e.$$scope)
            }
            ,
            e.$$.update = ()=>{
                n(1, l = d.flush().add(a, !0, Do).add(u, c).add(t.class).get())
            }
            ,
            t = y(t),
            [i, l, t, a, c, u, r, o]
        }
        const Bo = class extends Ye {
            constructor(e) {
                super(),
                Fe(this, e, Ho, Mo, i, {
                    classes: 3,
                    label: 0,
                    disabled: 4,
                    disabledClasses: 5
                })
            }
        }
          , zo = e=>({})
          , No = e=>({});
        function Uo(e) {
            let t, n;
            return t = new Mn({
                props: {
                    small: e[6],
                    class: e[3] ? "text-gray-500 dark:text-gray-600" : "text-gray-600",
                    $$slots: {
                        default: [Fo]
                    },
                    $$scope: {
                        ctx: e
                    }
                }
            }),
            {
                c() {
                    Ne(t.$$.fragment)
                },
                m(e, s) {
                    Ue(t, e, s),
                    n = !0
                },
                p(e, n) {
                    const s = {};
                    64 & n && (s.small = e[6]),
                    8 & n && (s.class = e[3] ? "text-gray-500 dark:text-gray-600" : "text-gray-600"),
                    8192 & n && (s.$$scope = {
                        dirty: n,
                        ctx: e
                    }),
                    t.$set(s)
                },
                i(e) {
                    n || (Ie(t.$$.fragment, e),
                    n = !0)
                },
                o(e) {
                    Le(t.$$.fragment, e),
                    n = !1
                },
                d(e) {
                    je(t, e)
                }
            }
        }
        function jo(e) {
            let t, n;
            return t = new Mn({
                props: {
                    small: e[6],
                    class: "text-" + (e[3] ? "gray" : e[2]) + "-500",
                    $$slots: {
                        default: [Yo]
                    },
                    $$scope: {
                        ctx: e
                    }
                }
            }),
            {
                c() {
                    Ne(t.$$.fragment)
                },
                m(e, s) {
                    Ue(t, e, s),
                    n = !0
                },
                p(e, n) {
                    const s = {};
                    64 & n && (s.small = e[6]),
                    12 & n && (s.class = "text-" + (e[3] ? "gray" : e[2]) + "-500"),
                    8192 & n && (s.$$scope = {
                        dirty: n,
                        ctx: e
                    }),
                    t.$set(s)
                },
                i(e) {
                    n || (Ie(t.$$.fragment, e),
                    n = !0)
                },
                o(e) {
                    Le(t.$$.fragment, e),
                    n = !1
                },
                d(e) {
                    je(t, e)
                }
            }
        }
        function Fo(e) {
            let t;
            return {
                c() {
                    t = N("radio_button_unchecked")
                },
                m(e, n) {
                    M(e, t, n)
                },
                d(e) {
                    e && D(t)
                }
            }
        }
        function Yo(e) {
            let t;
            return {
                c() {
                    t = N("radio_button_checked")
                },
                m(e, n) {
                    M(e, t, n)
                },
                d(e) {
                    e && D(t)
                }
            }
        }
        function Ko(e) {
            let t, n, s, l;
            const o = [jo, Uo]
              , r = [];
            function a(e, t) {
                return e[0] === e[5] ? 0 : 1
            }
            return t = a(e),
            n = r[t] = o[t](e),
            {
                c() {
                    n.c(),
                    s = j()
                },
                m(e, n) {
                    r[t].m(e, n),
                    M(e, s, n),
                    l = !0
                },
                p(e, l) {
                    let i = t;
                    t = a(e),
                    t === i ? r[t].p(e, l) : (Se(),
                    Le(r[i], 1, 1, (()=>{
                        r[i] = null
                    }
                    )),
                    Ee(),
                    n = r[t],
                    n ? n.p(e, l) : (n = r[t] = o[t](e),
                    n.c()),
                    Ie(n, 1),
                    n.m(s.parentNode, s))
                },
                i(e) {
                    l || (Ie(n),
                    l = !0)
                },
                o(e) {
                    Le(n),
                    l = !1
                },
                d(e) {
                    r[t].d(e),
                    e && D(s)
                }
            }
        }
        function Wo(e) {
            let t, n, s, l, o, r, a, i, c, u;
            r = new Po({
                props: {
                    color: e[8],
                    $$slots: {
                        default: [Ko]
                    },
                    $$scope: {
                        ctx: e
                    }
                }
            });
            const d = e[12].label
              , f = p(d, e, e[13], No)
              , m = f || function(e) {
                let t, n;
                return t = new Bo({
                    props: {
                        disabled: e[3],
                        label: e[1],
                        class: e[7]
                    }
                }),
                {
                    c() {
                        Ne(t.$$.fragment)
                    },
                    m(e, s) {
                        Ue(t, e, s),
                        n = !0
                    },
                    p(e, n) {
                        const s = {};
                        8 & n && (s.disabled = e[3]),
                        2 & n && (s.label = e[1]),
                        128 & n && (s.class = e[7]),
                        t.$set(s)
                    },
                    i(e) {
                        n || (Ie(t.$$.fragment, e),
                        n = !0)
                    },
                    o(e) {
                        Le(t.$$.fragment, e),
                        n = !1
                    },
                    d(e) {
                        je(t, e)
                    }
                }
            }(e);
            return {
                c() {
                    t = B("div"),
                    n = B("input"),
                    l = U(),
                    o = B("div"),
                    Ne(r.$$.fragment),
                    a = U(),
                    m && m.c(),
                    Y(n, "aria-label", e[1]),
                    Y(n, "class", "hidden"),
                    Y(n, "type", "radio"),
                    Y(n, "role", "radio"),
                    n.disabled = e[3],
                    Y(n, "name", e[4]),
                    Y(n, "selected", s = e[0] === e[5]),
                    Y(o, "class", "relative"),
                    Y(t, "class", e[9])
                },
                m(s, d) {
                    M(s, t, d),
                    _(t, n),
                    _(t, l),
                    _(t, o),
                    Ue(r, o, null),
                    _(t, a),
                    m && m.m(t, null),
                    i = !0,
                    c || (u = F(t, "click", e[10]),
                    c = !0)
                },
                p(e, [l]) {
                    (!i || 2 & l) && Y(n, "aria-label", e[1]),
                    (!i || 8 & l) && (n.disabled = e[3]),
                    (!i || 16 & l) && Y(n, "name", e[4]),
                    (!i || 33 & l && s !== (s = e[0] === e[5])) && Y(n, "selected", s);
                    const o = {};
                    256 & l && (o.color = e[8]),
                    8301 & l && (o.$$scope = {
                        dirty: l,
                        ctx: e
                    }),
                    r.$set(o),
                    f ? f.p && (!i || 8192 & l) && h(f, d, e, e[13], i ? g(d, e[13], l, zo) : b(e[13]), No) : m && m.p && (!i || 138 & l) && m.p(e, i ? l : -1),
                    (!i || 512 & l) && Y(t, "class", e[9])
                },
                i(e) {
                    i || (Ie(r.$$.fragment, e),
                    Ie(m, e),
                    i = !0)
                },
                o(e) {
                    Le(r.$$.fragment, e),
                    Le(m, e),
                    i = !1
                },
                d(e) {
                    e && D(t),
                    je(r),
                    m && m.d(e),
                    c = !1,
                    u()
                }
            }
        }
        const Go = "inline-flex block items-center mb-2 cursor-pointer z-0";
        function qo(e, t, n) {
            let l, o, {$$slots: r={}, $$scope: a} = t, {selected: i=""} = t, {label: c=""} = t, {color: u="primary"} = t, {disabled: d=!1} = t, {name: f=""} = t, {value: m=""} = t, {classes: p=Go} = t, {small: $=!1} = t, {labelClasses: g=(e=>e)} = t;
            const h = new _n(p,Go);
            return e.$$set = e=>{
                n(15, t = s(s({}, t), y(e))),
                "selected"in e && n(0, i = e.selected),
                "label"in e && n(1, c = e.label),
                "color"in e && n(2, u = e.color),
                "disabled"in e && n(3, d = e.disabled),
                "name"in e && n(4, f = e.name),
                "value"in e && n(5, m = e.value),
                "classes"in e && n(11, p = e.classes),
                "small"in e && n(6, $ = e.small),
                "labelClasses"in e && n(7, g = e.labelClasses),
                "$$scope"in e && n(13, a = e.$$scope)
            }
            ,
            e.$$.update = ()=>{
                n(9, l = h.flush().add(p, !0, Go).add(t.class).get()),
                44 & e.$$.dirty && n(8, o = m && !d ? u : "gray")
            }
            ,
            t = y(t),
            [i, c, u, d, f, m, $, g, o, l, function() {
                d || n(0, i = m)
            }
            , p, r, a]
        }
        const Vo = class extends Ye {
            constructor(e) {
                super(),
                Fe(this, e, qo, Wo, i, {
                    selected: 0,
                    label: 1,
                    color: 2,
                    disabled: 3,
                    name: 4,
                    value: 5,
                    classes: 11,
                    small: 6,
                    labelClasses: 7
                })
            }
        }
        ;
        function Xo(e, t, n) {
            const s = e.slice();
            return s[14] = t[n],
            s
        }
        const Jo = e=>({
            item: 2 & e
        })
          , Zo = e=>({
            item: e[14]
        });
        function Qo(e) {
            let t;
            const n = e[10].default
              , l = p(n, e, e[9], Zo)
              , o = l || function(e) {
                let t, n, l, o;
                const r = [{
                    class: e[6]
                }, e[14], {
                    color: e[4]
                }, {
                    small: e[5]
                }, {
                    name: e[2] || `radio-${Math.random()}`
                }, {
                    disabled: e[3]
                }];
                function a(t) {
                    e[11](t)
                }
                let i = {};
                for (let e = 0; e < r.length; e += 1)
                    i = s(i, r[e]);
                return void 0 !== e[0] && (i.selected = e[0]),
                t = new Vo({
                    props: i
                }),
                ae.push((()=>ze(t, "selected", a))),
                {
                    c() {
                        Ne(t.$$.fragment),
                        l = U()
                    },
                    m(e, n) {
                        Ue(t, e, n),
                        M(e, l, n),
                        o = !0
                    },
                    p(e, s) {
                        const l = 126 & s ? De(r, [64 & s && {
                            class: e[6]
                        }, 2 & s && He(e[14]), 16 & s && {
                            color: e[4]
                        }, 32 & s && {
                            small: e[5]
                        }, 4 & s && {
                            name: e[2] || `radio-${Math.random()}`
                        }, 8 & s && {
                            disabled: e[3]
                        }]) : {};
                        !n && 1 & s && (n = !0,
                        l.selected = e[0],
                        $e((()=>n = !1))),
                        t.$set(l)
                    },
                    i(e) {
                        o || (Ie(t.$$.fragment, e),
                        o = !0)
                    },
                    o(e) {
                        Le(t.$$.fragment, e),
                        o = !1
                    },
                    d(e) {
                        je(t, e),
                        e && D(l)
                    }
                }
            }(e);
            return {
                c() {
                    o && o.c()
                },
                m(e, n) {
                    o && o.m(e, n),
                    t = !0
                },
                p(e, s) {
                    l ? l.p && (!t || 514 & s) && h(l, n, e, e[9], t ? g(n, e[9], s, Jo) : b(e[9]), Zo) : o && o.p && (!t || 127 & s) && o.p(e, t ? s : -1)
                },
                i(e) {
                    t || (Ie(o, e),
                    t = !0)
                },
                o(e) {
                    Le(o, e),
                    t = !1
                },
                d(e) {
                    o && o.d(e)
                }
            }
        }
        function er(e) {
            let t, n, s = e[1], l = [];
            for (let t = 0; t < s.length; t += 1)
                l[t] = Qo(Xo(e, s, t));
            const o = e=>Le(l[e], 1, 1, (()=>{
                l[e] = null
            }
            ));
            return {
                c() {
                    t = B("div");
                    for (let e = 0; e < l.length; e += 1)
                        l[e].c();
                    Y(t, "class", e[7])
                },
                m(e, s) {
                    M(e, t, s);
                    for (let e = 0; e < l.length; e += 1)
                        l[e].m(t, null);
                    n = !0
                },
                p(e, [r]) {
                    if (639 & r) {
                        let n;
                        for (s = e[1],
                        n = 0; n < s.length; n += 1) {
                            const o = Xo(e, s, n);
                            l[n] ? (l[n].p(o, r),
                            Ie(l[n], 1)) : (l[n] = Qo(o),
                            l[n].c(),
                            Ie(l[n], 1),
                            l[n].m(t, null))
                        }
                        for (Se(),
                        n = s.length; n < l.length; n += 1)
                            o(n);
                        Ee()
                    }
                    (!n || 128 & r) && Y(t, "class", e[7])
                },
                i(e) {
                    if (!n) {
                        for (let e = 0; e < s.length; e += 1)
                            Ie(l[e]);
                        n = !0
                    }
                },
                o(e) {
                    l = l.filter(Boolean);
                    for (let e = 0; e < l.length; e += 1)
                        Le(l[e]);
                    n = !1
                },
                d(e) {
                    e && D(t),
                    H(l, e)
                }
            }
        }
        const tr = "flex flex-col mb-4 cursor-pointer";
        function nr(e, t, n) {
            let l, {$$slots: o={}, $$scope: r} = t, {classes: a=tr} = t, {items: i=[]} = t, {selected: c=""} = t, {name: u=""} = t, {disabled: d=!1} = t, {color: f="primary"} = t, {small: m=!1} = t, {buttonClasses: p="inline-flex block items-center mb-2 cursor-pointer z-0"} = t;
            const $ = new _n(a,tr);
            return e.$$set = e=>{
                n(13, t = s(s({}, t), y(e))),
                "classes"in e && n(8, a = e.classes),
                "items"in e && n(1, i = e.items),
                "selected"in e && n(0, c = e.selected),
                "name"in e && n(2, u = e.name),
                "disabled"in e && n(3, d = e.disabled),
                "color"in e && n(4, f = e.color),
                "small"in e && n(5, m = e.small),
                "buttonClasses"in e && n(6, p = e.buttonClasses),
                "$$scope"in e && n(9, r = e.$$scope)
            }
            ,
            e.$$.update = ()=>{
                n(7, l = $.flush().add(t.class).get())
            }
            ,
            t = y(t),
            [c, i, u, d, f, m, p, l, a, r, o, function(e) {
                c = e,
                n(0, c)
            }
            ]
        }
        const sr = class extends Ye {
            constructor(e) {
                super(),
                Fe(this, e, nr, er, i, {
                    classes: 8,
                    items: 1,
                    selected: 0,
                    name: 2,
                    disabled: 3,
                    color: 4,
                    small: 5,
                    buttonClasses: 6
                })
            }
        }
        ;
        function lr(e) {
            let t, n, l;
            const o = [{
                classes: rr
            }, e[11]];
            function r(t) {
                e[7](t)
            }
            let a = {};
            for (let e = 0; e < o.length; e += 1)
                a = s(a, o[e]);
            return void 0 !== e[2] && (a.selected = e[2]),
            t = new Vo({
                props: a
            }),
            ae.push((()=>ze(t, "selected", r))),
            {
                c() {
                    Ne(t.$$.fragment)
                },
                m(e, n) {
                    Ue(t, e, n),
                    l = !0
                },
                p(e, s) {
                    const l = 2048 & s ? De(o, [0 & s && {
                        classes: rr
                    }, 2048 & s && He(e[11])]) : {};
                    !n && 4 & s && (n = !0,
                    l.selected = e[2],
                    $e((()=>n = !1))),
                    t.$set(l)
                },
                i(e) {
                    l || (Ie(t.$$.fragment, e),
                    l = !0)
                },
                o(e) {
                    Le(t.$$.fragment, e),
                    l = !1
                },
                d(e) {
                    je(t, e)
                }
            }
        }
        function or(e) {
            let t, n, s;
            function l(t) {
                e[8](t)
            }
            let o = {
                classes: e[3],
                buttonClasses: rr,
                items: e[0],
                $$slots: {
                    default: [lr, ({item: e})=>({
                        11: e
                    }), ({item: e})=>e ? 2048 : 0]
                },
                $$scope: {
                    ctx: e
                }
            };
            return void 0 !== e[2] && (o.selected = e[2]),
            t = new sr({
                props: o
            }),
            ae.push((()=>ze(t, "selected", l))),
            {
                c() {
                    Ne(t.$$.fragment)
                },
                m(e, n) {
                    Ue(t, e, n),
                    s = !0
                },
                p(e, [s]) {
                    const l = {};
                    1 & s && (l.items = e[0]),
                    6148 & s && (l.$$scope = {
                        dirty: s,
                        ctx: e
                    }),
                    !n && 4 & s && (n = !0,
                    l.selected = e[2],
                    $e((()=>n = !1))),
                    t.$set(l)
                },
                i(e) {
                    s || (Ie(t.$$.fragment, e),
                    s = !0)
                },
                o(e) {
                    Le(t.$$.fragment, e),
                    s = !1
                },
                d(e) {
                    je(t, e)
                }
            }
        }
        const rr = "inline-flex block items-center cursor-pointer z-0";
        function ar(t, n, s) {
            let l, o, r = e, a = ()=>(r(),
            r = f(i, (e=>s(6, o = e))),
            i);
            t.$$.on_destroy.push((()=>r()));
            let {store: i} = n;
            a();
            let {items: c=[]} = n
              , {map: u=null} = n
              , {vertical: d=!1} = n;
            const m = "flex " + (d ? "flex-col" : "gap-3 flex-wrap");
            return t.$$set = e=>{
                "store"in e && a(s(1, i = e.store)),
                "items"in e && s(0, c = e.items),
                "map"in e && s(4, u = e.map),
                "vertical"in e && s(5, d = e.vertical)
            }
            ,
            t.$$.update = ()=>{
                var e;
                16 & t.$$.dirty && u && s(0, c = (e=>{
                    const t = [];
                    for (const [n,s] of e)
                        t.push({
                            value: n,
                            label: s
                        });
                    return t
                }
                )(u)),
                64 & t.$$.dirty && s(2, l = o),
                4 & t.$$.dirty && (e = l) !== o && v(i, o = e, o)
            }
            ,
            [c, i, l, m, u, d, o, function(e) {
                l = e,
                s(2, l),
                s(6, o)
            }
            , function(e) {
                l = e,
                s(2, l),
                s(6, o)
            }
            ]
        }
        const ir = class extends Ye {
            constructor(e) {
                super(),
                Fe(this, e, ar, or, i, {
                    store: 1,
                    items: 0,
                    map: 4,
                    vertical: 5
                })
            }
        }
        ;
        function cr(e) {
            let t, n, s;
            return n = new ir({
                props: {
                    store: e[1],
                    items: pt,
                    vertical: !0
                }
            }),
            {
                c() {
                    t = B("div"),
                    Ne(n.$$.fragment)
                },
                m(e, l) {
                    M(e, t, l),
                    Ue(n, t, null),
                    s = !0
                },
                p(e, t) {
                    const s = {};
                    2 & t && (s.store = e[1]),
                    n.$set(s)
                },
                i(e) {
                    s || (Ie(n.$$.fragment, e),
                    s = !0)
                },
                o(e) {
                    Le(n.$$.fragment, e),
                    s = !1
                },
                d(e) {
                    e && D(t),
                    je(n)
                }
            }
        }
        function ur(e) {
            let t;
            return {
                c() {
                    t = N("Report User")
                },
                m(e, n) {
                    M(e, t, n)
                },
                d(e) {
                    e && D(t)
                }
            }
        }
        function dr(e) {
            let t;
            return {
                c() {
                    t = N("Report")
                },
                m(e, n) {
                    M(e, t, n)
                },
                d(e) {
                    e && D(t)
                }
            }
        }
        function fr(e) {
            let t, n, s;
            return n = new go({
                props: {
                    color: "error",
                    disabled: !e[2],
                    $$slots: {
                        default: [dr]
                    },
                    $$scope: {
                        ctx: e
                    }
                }
            }),
            n.$on("click", e[4]),
            {
                c() {
                    t = B("div"),
                    Ne(n.$$.fragment),
                    Y(t, "slot", "actions")
                },
                m(e, l) {
                    M(e, t, l),
                    Ue(n, t, null),
                    s = !0
                },
                p(e, t) {
                    const s = {};
                    4 & t && (s.disabled = !e[2]),
                    64 & t && (s.$$scope = {
                        dirty: t,
                        ctx: e
                    }),
                    n.$set(s)
                },
                i(e) {
                    s || (Ie(n.$$.fragment, e),
                    s = !0)
                },
                o(e) {
                    Le(n.$$.fragment, e),
                    s = !1
                },
                d(e) {
                    e && D(t),
                    je(n)
                }
            }
        }
        function mr(e) {
            let t, n, s = e[3]?.message + "";
            return {
                c() {
                    t = B("div"),
                    n = N(s)
                },
                m(e, s) {
                    M(e, t, s),
                    _(t, n)
                },
                p(e, t) {
                    8 & t && s !== (s = e[3]?.message + "") && W(n, s)
                },
                d(e) {
                    e && D(t)
                }
            }
        }
        function pr(e) {
            let t, n = e[3]?.title + "";
            return {
                c() {
                    t = N(n)
                },
                m(e, n) {
                    M(e, t, n)
                },
                p(e, s) {
                    8 & s && n !== (n = e[3]?.title + "") && W(t, n)
                },
                d(e) {
                    e && D(t)
                }
            }
        }
        function $r(e) {
            let t;
            return {
                c() {
                    t = N("OK")
                },
                m(e, n) {
                    M(e, t, n)
                },
                d(e) {
                    e && D(t)
                }
            }
        }
        function gr(e) {
            let t, n, s;
            return n = new go({
                props: {
                    color: "primary",
                    $$slots: {
                        default: [$r]
                    },
                    $$scope: {
                        ctx: e
                    }
                }
            }),
            n.$on("click", e[5]),
            {
                c() {
                    t = B("div"),
                    Ne(n.$$.fragment),
                    Y(t, "slot", "actions")
                },
                m(e, l) {
                    M(e, t, l),
                    Ue(n, t, null),
                    s = !0
                },
                p(e, t) {
                    const s = {};
                    64 & t && (s.$$scope = {
                        dirty: t,
                        ctx: e
                    }),
                    n.$set(s)
                },
                i(e) {
                    s || (Ie(n.$$.fragment, e),
                    s = !0)
                },
                o(e) {
                    Le(n.$$.fragment, e),
                    s = !1
                },
                d(e) {
                    e && D(t),
                    je(n)
                }
            }
        }
        function hr(e) {
            let t, n, s, l;
            return t = new _o({
                props: {
                    active: Boolean(e[0]),
                    class: "max-w-full max-h-full",
                    style: "height: 500px; width: 500px;",
                    $$slots: {
                        actions: [fr],
                        title: [ur],
                        default: [cr]
                    },
                    $$scope: {
                        ctx: e
                    }
                }
            }),
            s = new _o({
                props: {
                    active: Boolean(e[3]),
                    noCloseButton: !0,
                    $$slots: {
                        actions: [gr],
                        title: [pr],
                        default: [mr]
                    },
                    $$scope: {
                        ctx: e
                    }
                }
            }),
            {
                c() {
                    Ne(t.$$.fragment),
                    n = U(),
                    Ne(s.$$.fragment)
                },
                m(e, o) {
                    Ue(t, e, o),
                    M(e, n, o),
                    Ue(s, e, o),
                    l = !0
                },
                p(e, [n]) {
                    const l = {};
                    1 & n && (l.active = Boolean(e[0])),
                    71 & n && (l.$$scope = {
                        dirty: n,
                        ctx: e
                    }),
                    t.$set(l);
                    const o = {};
                    8 & n && (o.active = Boolean(e[3])),
                    72 & n && (o.$$scope = {
                        dirty: n,
                        ctx: e
                    }),
                    s.$set(o)
                },
                i(e) {
                    l || (Ie(t.$$.fragment, e),
                    Ie(s.$$.fragment, e),
                    l = !0)
                },
                o(e) {
                    Le(t.$$.fragment, e),
                    Le(s.$$.fragment, e),
                    l = !1
                },
                d(e) {
                    je(t, e),
                    e && D(n),
                    je(s, e)
                }
            }
        }
        function br(t, n, s) {
            let l, o, r, a, i = e;
            return m(t, Ht, (e=>s(0, o = e))),
            m(t, Bt, (e=>s(3, a = e))),
            t.$$.on_destroy.push((()=>i())),
            t.$$.update = ()=>{
                1 & t.$$.dirty && (s(1, l = null == o ? void 0 : o.optionStore),
                i(),
                i = f(l, (e=>s(2, r = e))))
            }
            ,
            [o, l, r, a, ()=>{
                o?.callback(r),
                v(Ht, o = null, o)
            }
            , ()=>{
                v(Bt, a = null, a)
            }
            ]
        }
        const yr = class extends Ye {
            constructor(e) {
                super(),
                Fe(this, e, br, hr, i, {})
            }
        }
        ;
        function xr(e) {
            O(e, "svelte-z4hg1b", ".no-padding>div:nth-child(1),.no-padding>div:nth-child(3){display:none}.no-padding{padding:0px !important;margin:1rem !important;background-color:transparent !important}")
        }
        function vr(e) {
            let t, n;
            return t = new Hl({
                props: {
                    message: e[1]
                }
            }),
            {
                c() {
                    Ne(t.$$.fragment)
                },
                m(e, s) {
                    Ue(t, e, s),
                    n = !0
                },
                p(e, n) {
                    const s = {};
                    2 & n && (s.message = e[1]),
                    t.$set(s)
                },
                i(e) {
                    n || (Ie(t.$$.fragment, e),
                    n = !0)
                },
                o(e) {
                    Le(t.$$.fragment, e),
                    n = !1
                },
                d(e) {
                    je(t, e)
                }
            }
        }
        function wr(e) {
            let t, n;
            return t = new Il({
                props: {
                    message: e[1]
                }
            }),
            {
                c() {
                    Ne(t.$$.fragment)
                },
                m(e, s) {
                    Ue(t, e, s),
                    n = !0
                },
                p(e, n) {
                    const s = {};
                    2 & n && (s.message = e[1]),
                    t.$set(s)
                },
                i(e) {
                    n || (Ie(t.$$.fragment, e),
                    n = !0)
                },
                o(e) {
                    Le(t.$$.fragment, e),
                    n = !1
                },
                d(e) {
                    je(t, e)
                }
            }
        }
        function kr(e) {
            let t, n, s, l;
            const o = [wr, vr]
              , r = [];
            function a(e, t) {
                return "superChat"in e[1] || "superSticker"in e[1] ? 0 : 1
            }
            return t = a(e),
            n = r[t] = o[t](e),
            {
                c() {
                    n.c(),
                    s = j()
                },
                m(e, n) {
                    r[t].m(e, n),
                    M(e, s, n),
                    l = !0
                },
                p(e, l) {
                    let i = t;
                    t = a(e),
                    t === i ? r[t].p(e, l) : (Se(),
                    Le(r[i], 1, 1, (()=>{
                        r[i] = null
                    }
                    )),
                    Ee(),
                    n = r[t],
                    n ? n.p(e, l) : (n = r[t] = o[t](e),
                    n.c()),
                    Ie(n, 1),
                    n.m(s.parentNode, s))
                },
                i(e) {
                    l || (Ie(n),
                    l = !0)
                },
                o(e) {
                    Le(n),
                    l = !1
                },
                d(e) {
                    r[t].d(e),
                    e && D(s)
                }
            }
        }
        function Cr(e) {
            let t, n, s;
            function l(t) {
                e[3](t)
            }
            let o = {
                noCloseButton: !0,
                class: "no-padding",
                $$slots: {
                    default: [kr]
                },
                $$scope: {
                    ctx: e
                }
            };
            return void 0 !== e[0] && (o.active = e[0]),
            t = new _o({
                props: o
            }),
            ae.push((()=>ze(t, "active", l))),
            {
                c() {
                    Ne(t.$$.fragment)
                },
                m(e, n) {
                    Ue(t, e, n),
                    s = !0
                },
                p(e, [s]) {
                    const l = {};
                    66 & s && (l.$$scope = {
                        dirty: s,
                        ctx: e
                    }),
                    !n && 1 & s && (n = !0,
                    l.active = e[0],
                    $e((()=>n = !1))),
                    t.$set(l)
                },
                i(e) {
                    s || (Ie(t.$$.fragment, e),
                    s = !0)
                },
                o(e) {
                    Le(t.$$.fragment, e),
                    s = !1
                },
                d(e) {
                    je(t, e)
                }
            }
        }
        function Sr(e, t, n) {
            let s, l;
            m(e, Rt, (e=>n(2, l = e)));
            let o = !1;
            return e.$$.update = ()=>{
                4 & e.$$.dirty && n(1, s = l),
                2 & e.$$.dirty && s && n(0, o = !0),
                1 & e.$$.dirty && (o || v(Rt, l = null, l))
            }
            ,
            [o, s, l, function(e) {
                o = e,
                n(0, o)
            }
            ]
        }
        const Er = class extends Ye {
            constructor(e) {
                super(),
                Fe(this, e, Sr, Cr, i, {}, xr)
            }
        }
        ;
        function Ir(e) {
            let t, n, s;
            return {
                c() {
                    t = B("img"),
                    Y(t, "class", "h-5 w-5 inline align-middle rounded-full flex-none mr-1"),
                    u(t.src, n = e[0].author.profileIcon.src) || Y(t, "src", n),
                    Y(t, "alt", s = e[0].author.profileIcon.alt)
                },
                m(e, n) {
                    M(e, t, n)
                },
                p(e, l) {
                    1 & l && !u(t.src, n = e[0].author.profileIcon.src) && Y(t, "src", n),
                    1 & l && s !== (s = e[0].author.profileIcon.alt) && Y(t, "alt", s)
                },
                d(e) {
                    e && D(t)
                }
            }
        }
        function Lr(t) {
            let n, s;
            return {
                c() {
                    n = z("svg"),
                    s = z("path"),
                    Y(s, "d", Ds),
                    Y(s, "fill", "currentColor"),
                    Y(n, "height", "1em"),
                    Y(n, "width", "1em"),
                    Y(n, "viewBox", "0 0 24 24"),
                    Y(n, "class", "inline align-middle mr-1"),
                    G(n, "transform", "translateY(-1px)")
                },
                m(e, t) {
                    M(e, n, t),
                    _(n, s)
                },
                p: e,
                d(e) {
                    e && D(n)
                }
            }
        }
        function Tr(t) {
            let n, s, l, o, r, a, i, c, u, d, f, m, p, $ = (t[0].detailText ?? t[0].superChat?.amount) + "", g = t[4] && Ir(t), h = t[0].membershipGiftPurchase && Lr();
            return {
                c() {
                    n = B("div"),
                    g && g.c(),
                    s = U(),
                    l = B("div"),
                    o = U(),
                    h && h.c(),
                    r = U(),
                    a = B("span"),
                    i = N($),
                    Y(l, "class", "absolute top-0 right-0 h-full"),
                    G(l, "background-color", "rgba(0, 0, 0, 0.1)"),
                    G(l, "width", Math.round(100 * t[1]) + "%"),
                    Y(a, "class", c = "font-bold align-middle " + (t[0].superChat ? "underline" : "")),
                    Y(a, "style", u = t[0].superChat ? `color: #${t[0].superChat?.bodyTextColor}` : ""),
                    Y(n, "class", d = _r + " " + (t[5].class ?? "")),
                    Y(n, "style", f = "background-color: #" + t[2] + "; " + (t[5].style ?? ""))
                },
                m(e, c) {
                    M(e, n, c),
                    g && g.m(n, null),
                    _(n, s),
                    _(n, l),
                    _(n, o),
                    h && h.m(n, null),
                    _(n, r),
                    _(n, a),
                    _(a, i),
                    m || (p = F(n, "click", t[6]),
                    m = !0)
                },
                p(e, [t]) {
                    e[4] ? g ? g.p(e, t) : (g = Ir(e),
                    g.c(),
                    g.m(n, s)) : g && (g.d(1),
                    g = null),
                    2 & t && G(l, "width", Math.round(100 * e[1]) + "%"),
                    e[0].membershipGiftPurchase ? h ? h.p(e, t) : (h = Lr(),
                    h.c(),
                    h.m(n, r)) : h && (h.d(1),
                    h = null),
                    1 & t && $ !== ($ = (e[0].detailText ?? e[0].superChat?.amount) + "") && W(i, $),
                    1 & t && c !== (c = "font-bold align-middle " + (e[0].superChat ? "underline" : "")) && Y(a, "class", c),
                    1 & t && u !== (u = e[0].superChat ? `color: #${e[0].superChat?.bodyTextColor}` : "") && Y(a, "style", u),
                    32 & t && d !== (d = _r + " " + (e[5].class ?? "")) && Y(n, "class", d),
                    36 & t && f !== (f = "background-color: #" + e[2] + "; " + (e[5].style ?? "")) && Y(n, "style", f)
                },
                i: e,
                o: e,
                d(e) {
                    e && D(n),
                    g && g.d(),
                    h && h.d(),
                    m = !1,
                    p()
                }
            }
        }
        const _r = "h-8 mx-0.5 relative rounded-full flex flex-none items-center cursor-pointer p-1.5 text-white overflow-hidden whitespace-nowrap";
        function Or(e, t, n) {
            let l, o;
            m(e, Rt, (e=>n(3, l = e))),
            m(e, kt, (e=>n(4, o = e)));
            let {item: r} = t
              , {fillPortion: a=1} = t
              , i = "";
            return e.$$set = e=>{
                n(5, t = s(s({}, t), y(e))),
                "item"in e && n(0, r = e.item),
                "fillPortion"in e && n(1, a = e.fillPortion)
            }
            ,
            e.$$.update = ()=>{
                1 & e.$$.dirty && (r.membership && r.message.length > 0 ? n(2, i = ht) : r.membership || r.membershipGiftPurchase ? n(2, i = gt) : r.superChat && n(2, i = r.superChat.bodyBackgroundColor))
            }
            ,
            t = y(t),
            [r, a, i, l, o, t, ()=>v(Rt, l = r, l)]
        }
        const Rr = class extends Ye {
            constructor(e) {
                super(),
                Fe(this, e, Or, Tr, i, {
                    item: 0,
                    fillPortion: 1
                })
            }
        }
        ;
        function Ar(e) {
            O(e, "svelte-16oawp1", ".scroll-on-hover.svelte-16oawp1::-webkit-scrollbar{width:4px;height:4px}.scroll-on-hover.svelte-16oawp1::-webkit-scrollbar-track{background:var(--scrollbar-bg-color)}.scroll-on-hover.svelte-16oawp1{scrollbar-color:#888 var(--scrollbar-bg-color)}@supports (-moz-appearance:none){.enlarge-on-ff.svelte-16oawp1{height:2.5rem;padding-top:0.25rem}}")
        }
        function Pr(e, t, n) {
            const s = e.slice();
            return s[8] = t[n],
            s
        }
        function Mr(e) {
            let t, n, s, l = [], o = new Map, r = e[1];
            const a = e=>e[8].messageId;
            for (let t = 0; t < r.length; t += 1) {
                let n = Pr(e, r, t)
                  , s = a(n);
                o.set(s, l[t] = Dr(s, n))
            }
            return {
                c() {
                    t = B("div"),
                    n = B("div");
                    for (let e = 0; e < l.length; e += 1)
                        l[e].c();
                    Y(n, "class", "flex items-center h-9 enlarge-on-ff svelte-16oawp1"),
                    G(n, "width", "fit-content"),
                    G(n, "min-width", "100%"),
                    G(n, "background-color", "var(--scrollbar-bg-color)"),
                    Y(t, "class", "w-full overflow-y-hidden overflow-x-scroll scroll-on-hover items-start flex-none svelte-16oawp1"),
                    G(t, "--scrollbar-bg-color", "#" + (e[4] ? "0f0f0f" : "ffffff"))
                },
                m(o, r) {
                    M(o, t, r),
                    _(t, n);
                    for (let e = 0; e < l.length; e += 1)
                        l[e].m(n, null);
                    e[6](t),
                    s = !0
                },
                p(e, i) {
                    10 & i && (r = e[1],
                    Se(),
                    l = Me(l, i, a, 1, e, r, o, n, Pe, Dr, null, Pr),
                    Ee()),
                    (!s || 16 & i) && G(t, "--scrollbar-bg-color", "#" + (e[4] ? "0f0f0f" : "ffffff"))
                },
                i(e) {
                    if (!s) {
                        for (let e = 0; e < r.length; e += 1)
                            Ie(l[e]);
                        s = !0
                    }
                },
                o(e) {
                    for (let e = 0; e < l.length; e += 1)
                        Le(l[e]);
                    s = !1
                },
                d(n) {
                    n && D(t);
                    for (let e = 0; e < l.length; e += 1)
                        l[e].d();
                    e[6](null)
                }
            }
        }
        function Dr(e, t) {
            let n, s, l;
            return s = new Rr({
                props: {
                    item: t[8],
                    fillPortion: Math.max(0, ((t[3] || 0) - t[8].showtime / 1e3) / t[8].tickerDuration)
                }
            }),
            {
                key: e,
                first: null,
                c() {
                    n = j(),
                    Ne(s.$$.fragment),
                    this.first = n
                },
                m(e, t) {
                    M(e, n, t),
                    Ue(s, e, t),
                    l = !0
                },
                p(e, n) {
                    t = e;
                    const l = {};
                    2 & n && (l.item = t[8]),
                    10 & n && (l.fillPortion = Math.max(0, ((t[3] || 0) - t[8].showtime / 1e3) / t[8].tickerDuration)),
                    s.$set(l)
                },
                i(e) {
                    l || (Ie(s.$$.fragment, e),
                    l = !0)
                },
                o(e) {
                    Le(s.$$.fragment, e),
                    l = !1
                },
                d(e) {
                    e && D(n),
                    je(s, e)
                }
            }
        }
        function Hr(e) {
            let t, n, s = e[2] && Mr(e);
            return {
                c() {
                    s && s.c(),
                    t = j()
                },
                m(e, l) {
                    s && s.m(e, l),
                    M(e, t, l),
                    n = !0
                },
                p(e, [n]) {
                    e[2] ? s ? (s.p(e, n),
                    4 & n && Ie(s, 1)) : (s = Mr(e),
                    s.c(),
                    Ie(s, 1),
                    s.m(t.parentNode, t)) : s && (Se(),
                    Le(s, 1, 1, (()=>{
                        s = null
                    }
                    )),
                    Ee())
                },
                i(e) {
                    n || (Ie(s),
                    n = !0)
                },
                o(e) {
                    Le(s),
                    n = !1
                },
                d(e) {
                    s && s.d(e),
                    e && D(t)
                }
            }
        }
        function Br(e, t, n) {
            let s, l, o, r;
            m(e, zt, (e=>n(1, l = e))),
            m(e, Ut, (e=>n(3, o = e)));
            const a = st();
            let i, c;
            var u;
            return m(e, a, (e=>n(4, r = e))),
            u = ()=>{
                c = window.setInterval((()=>{
                    v(zt, l = l.filter((e=>null === o || e.showtime / 1e3 - 5 <= o && e.showtime / 1e3 + e.tickerDuration >= o)), l)
                }
                ), 500)
            }
            ,
            ne().$$.on_mount.push(u),
            se((()=>{
                c && clearInterval(c)
            }
            )),
            e.$$.update = ()=>{
                1 & e.$$.dirty && i && i.addEventListener("wheel", (e=>{
                    e.preventDefault(),
                    e.stopPropagation(),
                    i.scrollBy(e.deltaY + e.deltaX, 0)
                }
                )),
                2 & e.$$.dirty && n(2, s = Boolean(l.length))
            }
            ,
            [i, l, s, o, r, a, function(e) {
                ae[e ? "unshift" : "push"]((()=>{
                    i = e,
                    n(0, i)
                }
                ))
            }
            ]
        }
        const zr = class extends Ye {
            constructor(e) {
                super(),
                Fe(this, e, Br, Hr, i, {}, Ar)
            }
        }
          , Nr = new Set(["messages", "bonk", "delete", "pin", "unpin", "playerProgress", "forceUpdate"])
          , Ur = new Set(["member", "moderator", "owner"])
          , jr = e=>!e.message.superChat && !e.message.superSticker && !e.message.membership
          , {window: Fr} = Ae;
        function Yr(e) {
            O(e, "svelte-uo771", ".hover-highlight.svelte-uo771{background-color:transparent}.hover-highlight.svelte-uo771:hover{background-color:#80808040}.mention.svelte-uo771{background-color:#ffe60038}.mention.svelte-uo771:hover{background-color:#fff48f3f}.mention.mention-light.svelte-uo771{background-color:#ffe60085}.mention.mention-light.svelte-uo771:hover{background-color:#bfb2408f}")
        }
        function Kr(e, t, n) {
            const s = e.slice();
            return s[65] = t[n],
            s
        }
        function Wr(e) {
            let t, n;
            return t = new zr({}),
            {
                c() {
                    Ne(t.$$.fragment)
                },
                m(e, s) {
                    Ue(t, e, s),
                    n = !0
                },
                i(e) {
                    n || (Ie(t.$$.fragment, e),
                    n = !0)
                },
                o(e) {
                    Le(t.$$.fragment, e),
                    n = !1
                },
                d(e) {
                    je(t, e)
                }
            }
        }
        function Gr(e) {
            let t, n;
            return t = new Js({
                props: {
                    message: e[65].message,
                    deleted: e[65].deleted
                }
            }),
            {
                c() {
                    Ne(t.$$.fragment)
                },
                m(e, s) {
                    Ue(t, e, s),
                    n = !0
                },
                p(e, n) {
                    const s = {};
                    8 & n[0] && (s.message = e[65].message),
                    8 & n[0] && (s.deleted = e[65].deleted),
                    t.$set(s)
                },
                i(e) {
                    n || (Ie(t.$$.fragment, e),
                    n = !0)
                },
                o(e) {
                    Le(t.$$.fragment, e),
                    n = !1
                },
                d(e) {
                    je(t, e)
                }
            }
        }
        function qr(e) {
            let t, n;
            return t = new Hl({
                props: {
                    message: e[65].message
                }
            }),
            {
                c() {
                    Ne(t.$$.fragment)
                },
                m(e, s) {
                    Ue(t, e, s),
                    n = !0
                },
                p(e, n) {
                    const s = {};
                    8 & n[0] && (s.message = e[65].message),
                    t.$set(s)
                },
                i(e) {
                    n || (Ie(t.$$.fragment, e),
                    n = !0)
                },
                o(e) {
                    Le(t.$$.fragment, e),
                    n = !1
                },
                d(e) {
                    je(t, e)
                }
            }
        }
        function Vr(e) {
            let t, n;
            return t = new Il({
                props: {
                    message: e[65].message
                }
            }),
            {
                c() {
                    Ne(t.$$.fragment)
                },
                m(e, s) {
                    Ue(t, e, s),
                    n = !0
                },
                p(e, n) {
                    const s = {};
                    8 & n[0] && (s.message = e[65].message),
                    t.$set(s)
                },
                i(e) {
                    n || (Ie(t.$$.fragment, e),
                    n = !0)
                },
                o(e) {
                    Le(t.$$.fragment, e),
                    n = !1
                },
                d(e) {
                    je(t, e)
                }
            }
        }
        function Xr(t) {
            let n, s;
            return n = new an({}),
            {
                c() {
                    Ne(n.$$.fragment)
                },
                m(e, t) {
                    Ue(n, e, t),
                    s = !0
                },
                p: e,
                i(e) {
                    s || (Ie(n.$$.fragment, e),
                    s = !0)
                },
                o(e) {
                    Le(n.$$.fragment, e),
                    s = !1
                },
                d(e) {
                    je(n, e)
                }
            }
        }
        function Jr(e, t) {
            let n, s, l, o, a, i, c, u, d, f, m;
            const p = [Xr, Vr, qr, Gr]
              , $ = [];
            function g(e, t) {
                return 8 & t[0] && (s = null),
                8 & t[0] && (l = null),
                8 & t[0] && (o = null),
                8 & t[0] && (a = null),
                null == s && (s = !!e[10](e[65])),
                s ? 0 : (null == l && (l = !!e[14](e[65])),
                l ? 1 : (null == o && (o = !!e[15](e[65])),
                o ? 2 : (null == a && (a = !!e[16](e[65])),
                a ? 3 : -1)))
            }
            function h() {
                return t[30](t[65])
            }
            function b() {
                return t[31](t[65])
            }
            return ~(i = g(t, [-1, -1, -1])) && (c = $[i] = p[i](t)),
            {
                key: e,
                first: null,
                c() {
                    n = B("div"),
                    c && c.c(),
                    u = U(),
                    Y(n, "class", "hover-highlight p-1.5 w-full block svelte-uo771"),
                    q(n, "flex", !t[10](t[65])),
                    q(n, "mention", t[7] && t[16](t[65]) && t[19](t[65].message)),
                    q(n, "mention-light", !t[8]),
                    this.first = n
                },
                m(e, s) {
                    M(e, n, s),
                    ~i && $[i].m(n, null),
                    _(n, u),
                    d = !0,
                    f || (m = [F(n, "mouseover", h), F(n, "focus", b), F(n, "mouseout", t[32]), F(n, "blur", t[33])],
                    f = !0)
                },
                p(e, s) {
                    let l = i;
                    i = g(t = e, s),
                    i === l ? ~i && $[i].p(t, s) : (c && (Se(),
                    Le($[l], 1, 1, (()=>{
                        $[l] = null
                    }
                    )),
                    Ee()),
                    ~i ? (c = $[i],
                    c ? c.p(t, s) : (c = $[i] = p[i](t),
                    c.c()),
                    Ie(c, 1),
                    c.m(n, u)) : c = null),
                    1032 & s[0] && q(n, "flex", !t[10](t[65])),
                    589960 & s[0] && q(n, "mention", t[7] && t[16](t[65]) && t[19](t[65].message)),
                    256 & s[0] && q(n, "mention-light", !t[8])
                },
                i(e) {
                    d || (Ie(c),
                    d = !0)
                },
                o(e) {
                    Le(c),
                    d = !1
                },
                d(e) {
                    e && D(n),
                    ~i && $[i].d(),
                    f = !1,
                    r(m)
                }
            }
        }
        function Zr(e) {
            let t, n, s, l;
            return s = new hl({
                props: {
                    pinned: e[0]
                }
            }),
            s.$on("resize", e[18]),
            {
                c() {
                    t = B("div"),
                    n = B("div"),
                    Ne(s.$$.fragment),
                    Y(n, "class", "mx-1.5 mt-1.5"),
                    Y(t, "class", "absolute top-0 w-full")
                },
                m(o, r) {
                    M(o, t, r),
                    _(t, n),
                    Ue(s, n, null),
                    e[35](t),
                    l = !0
                },
                p(e, t) {
                    const n = {};
                    1 & t[0] && (n.pinned = e[0]),
                    s.$set(n)
                },
                i(e) {
                    l || (Ie(s.$$.fragment, e),
                    l = !0)
                },
                o(e) {
                    Le(s.$$.fragment, e),
                    l = !1
                },
                d(n) {
                    n && D(t),
                    je(s),
                    e[35](null)
                }
            }
        }
        function Qr(t) {
            let n, s, l, o;
            return s = new go({
                props: {
                    icon: "arrow_downward",
                    small: !0
                }
            }),
            s.$on("click", t[12]),
            {
                c() {
                    n = B("div"),
                    Ne(s.$$.fragment),
                    Y(n, "class", "absolute left-1/2 transform -translate-x-1/2 bottom-0 pb-1")
                },
                m(e, t) {
                    M(e, n, t),
                    Ue(s, n, null),
                    o = !0
                },
                p: e,
                i(e) {
                    o || (Ie(s.$$.fragment, e),
                    pe((()=>{
                        l || (l = Re(n, qe, {
                            duration: 150
                        }, !0)),
                        l.run(1)
                    }
                    )),
                    o = !0)
                },
                o(e) {
                    Le(s.$$.fragment, e),
                    l || (l = Re(n, qe, {
                        duration: 150
                    }, !1)),
                    l.run(0),
                    o = !1
                },
                d(e) {
                    e && D(n),
                    je(s),
                    e && l && l.end()
                }
            }
        }
        function ea(e) {
            let t, n, s, l, o, a, i, c, u, d, f, m, p, $, g, h, b = [], y = new Map;
            t = new yr({}),
            s = new Er({});
            let v = e[2] && Wr()
              , w = e[3];
            const k = e=>e[65].message.messageId;
            for (let t = 0; t < w.length; t += 1) {
                let n = Kr(e, w, t)
                  , s = k(n);
                y.set(s, b[t] = Jr(s, n))
            }
            let C = e[0] && Zr(e)
              , S = !e[1] && Qr(e);
            return {
                c() {
                    Ne(t.$$.fragment),
                    n = U(),
                    Ne(s.$$.fragment),
                    l = U(),
                    o = B("div"),
                    v && v.c(),
                    a = U(),
                    i = B("div"),
                    c = B("div"),
                    u = B("div"),
                    d = U();
                    for (let e = 0; e < b.length; e += 1)
                        b[e].c();
                    f = U(),
                    C && C.c(),
                    m = U(),
                    S && S.c(),
                    G(u, "height", e[5] + "px"),
                    Y(c, "class", "content overflow-y-scroll"),
                    Y(i, "class", "w-full min-h-0 flex justify-end flex-col relative"),
                    Y(o, "class", p = x(ta) + " svelte-uo771"),
                    G(o, "font-size", "13px")
                },
                m(r, p) {
                    Ue(t, r, p),
                    M(r, n, p),
                    Ue(s, r, p),
                    M(r, l, p),
                    M(r, o, p),
                    v && v.m(o, null),
                    _(o, a),
                    _(o, i),
                    _(i, c),
                    _(c, u),
                    _(c, d);
                    for (let e = 0; e < b.length; e += 1)
                        b[e].m(c, null);
                    e[34](c),
                    _(i, f),
                    C && C.m(i, null),
                    _(i, m),
                    S && S.m(i, null),
                    $ = !0,
                    g || (h = [F(Fr, "resize", e[29]), F(Fr, "load", e[13]), F(c, "scroll", e[11])],
                    g = !0)
                },
                p(e, t) {
                    e[2] ? v ? 4 & t[0] && Ie(v, 1) : (v = Wr(),
                    v.c(),
                    Ie(v, 1),
                    v.m(o, a)) : v && (Se(),
                    Le(v, 1, 1, (()=>{
                        v = null
                    }
                    )),
                    Ee()),
                    (!$ || 32 & t[0]) && G(u, "height", e[5] + "px"),
                    771464 & t[0] && (w = e[3],
                    Se(),
                    b = Me(b, t, k, 1, e, w, y, c, Pe, Jr, null, Kr),
                    Ee()),
                    e[0] ? C ? (C.p(e, t),
                    1 & t[0] && Ie(C, 1)) : (C = Zr(e),
                    C.c(),
                    Ie(C, 1),
                    C.m(i, m)) : C && (Se(),
                    Le(C, 1, 1, (()=>{
                        C = null
                    }
                    )),
                    Ee()),
                    e[1] ? S && (Se(),
                    Le(S, 1, 1, (()=>{
                        S = null
                    }
                    )),
                    Ee()) : S ? (S.p(e, t),
                    2 & t[0] && Ie(S, 1)) : (S = Qr(e),
                    S.c(),
                    Ie(S, 1),
                    S.m(i, null))
                },
                i(e) {
                    if (!$) {
                        Ie(t.$$.fragment, e),
                        Ie(s.$$.fragment, e),
                        Ie(v);
                        for (let e = 0; e < w.length; e += 1)
                            Ie(b[e]);
                        Ie(C),
                        Ie(S),
                        $ = !0
                    }
                },
                o(e) {
                    Le(t.$$.fragment, e),
                    Le(s.$$.fragment, e),
                    Le(v);
                    for (let e = 0; e < b.length; e += 1)
                        Le(b[e]);
                    Le(C),
                    Le(S),
                    $ = !1
                },
                d(a) {
                    je(t, a),
                    a && D(n),
                    je(s, a),
                    a && D(l),
                    a && D(o),
                    v && v.d();
                    for (let e = 0; e < b.length; e += 1)
                        b[e].d();
                    e[34](null),
                    C && C.d(),
                    S && S.d(),
                    g = !1,
                    r(h)
                }
            }
        }
        const ta = "h-screen w-screen text-black dark:text-white bg-white bg-ytbg-light dark:bg-ytbg-dark flex flex-col justify-between";
        function na(e, t, n) {
            let s, l, o, r, a, i, c, u, d, f, p, $, g, h, b, y, x, w, k, C, S;
            m(e, Dt, (e=>n(36, s = e))),
            m(e, jt, (e=>n(2, l = e))),
            m(e, zt, (e=>n(37, o = e))),
            m(e, Ot, (e=>n(38, r = e))),
            m(e, _t, (e=>n(21, a = e))),
            m(e, Et, (e=>n(22, i = e))),
            m(e, St, (e=>n(23, c = e))),
            m(e, Ct, (e=>n(24, u = e))),
            m(e, kt, (e=>n(25, d = e))),
            m(e, Nt, (e=>n(26, f = e))),
            m(e, wt, (e=>n(27, p = e))),
            m(e, At, (e=>n(39, $ = e))),
            m(e, vt, (e=>n(28, g = e))),
            m(e, Yt, (e=>n(40, h = e))),
            m(e, Bt, (e=>n(41, b = e))),
            m(e, Pt, (e=>n(42, y = e))),
            m(e, Ut, (e=>n(43, x = e))),
            m(e, Tt, (e=>n(44, w = e))),
            m(e, Lt, (e=>n(45, k = e))),
            m(e, Ft, (e=>n(7, C = e)));
            const E = {
                welcome: !0,
                message: {
                    messageId: "welcome"
                }
            };
            let I = [];
            const L = new Set;
            let T, _, O = !0;
            const R = ct
              , A = st();
            m(e, A, (e=>n(8, S = e)));
            const P = [e=>k && jr(e) && !e.message.author.types.some(Ur.has.bind(Ur)), e=>jr(e) && w !== dt.SHOW_ALL && (e=>0 !== e.message.message.length && e.message.message.every((e=>"emoji" === e.type || "text" === e.type && "" === e.text.trim())))(e), e=>{
                const t = L.has(e.message.messageId);
                return L.add(e.message.messageId),
                t
            }
            ]
              , M = e=>!P.some((t=>t(e)))
              , D = e=>"welcome"in e
              , H = ()=>{
                n(1, O = Math.ceil(_.clientHeight + _.scrollTop) >= _.scrollHeight - 2)
            }
              , B = ()=>{
                null != _ && n(4, _.scrollTop = _.scrollHeight, _)
            }
            ;
            let z = [];
            const N = (e,t)=>{
                O ? (t && R ? I.push(...U(e.messages).filter((e=>e.message.timestamp.startsWith("-") && M(e)))) : I.push(...U(e.messages).filter(M)),
                t || (()=>{
                    const e = I.length - 150;
                    e > 20 && I.splice(0, e).forEach((e=>L.delete(e.message.messageId))),
                    n(3, I)
                }
                )()) : n(20, z = [...z, e])
            }
              , U = e=>{
                const t = []
                  , n = [];
                return e.forEach((e=>{
                    "tickerDuration"in e.message ? o.some((t=>t.messageId === e.message.messageId)) || n.push(e.message) : t.push(e)
                }
                )),
                l && n.length && v(zt, o = [...n, ...o], o),
                t
            }
              , j = (e,t=!1)=>{
                switch (e.type) {
                case "messages":
                    N(e, t);
                    break;
                case "bonk":
                    l = e.bonk,
                    I.forEach((e=>{
                        D(e) || e.message.author.id === l.authorId && (e.deleted = {
                            replace: l.replacedMessage
                        })
                    }
                    ));
                    break;
                case "delete":
                    s = e.deletion,
                    I.some((e=>!D(e) && e.message.messageId === s.messageId && (e.deleted = {
                        replace: s.replacedMessage
                    },
                    !0)));
                    break;
                case "pin":
                    n(0, T = e);
                    break;
                case "unpin":
                    n(0, T = null);
                    break;
                case "playerProgress":
                    v(Ut, x = e.playerProgress, x);
                    break;
                case "forceUpdate":
                    L.clear(),
                    n(3, I = [...e.messages].filter(M)),
                    e.showWelcome && n(3, I = [...I, E])
                }
                var s, l
            }
              , F = e=>{
                var t, s;
                if ((e=>Nr.has(e.type))(e))
                    j(e);
                else
                    switch (e.type) {
                    case "initialData":
                        e.initialData.forEach((e=>{
                            j(e, !0)
                        }
                        )),
                        n(3, I = [...I, E]),
                        v(Pt, y = e.selfChannel, y);
                        break;
                    case "themeUpdate":
                        v(Nt, f = e.dark, f);
                        break;
                    case "chatUserActionResponse":
                        v(Bt, b = {
                            title: e.success ? "Success!" : "Error",
                            message: null !== (s = null === (t = $t.find((t=>t.value === e.action))) || void 0 === t ? void 0 : t.messages[e.success ? "success" : "error"]) && void 0 !== s ? s : "",
                            color: e.success ? "primary" : "error"
                        }, b),
                        e.success && n(3, I = I.filter((t=>{
                            if (D(t))
                                return !0;
                            const n = t.message.author.id !== e.message.author.id;
                            return n || L.delete(t.message.messageId),
                            n
                        }
                        )));
                        break;
                    case "registerClientResponse":
                        break;
                    default:
                        console.error("Unknown payload type", {
                            port: At,
                            response: e
                        })
                    }
            }
              , Y = ()=>{
                O && B(),
                me().then(H)
            }
            ;
            var K;
            K = Y,
            ne().$$.after_update.push(K),
            se((()=>{
                null == $ || $.disconnect()
            }
            ));
            const W = e=>e.message.superChat || e.message.superSticker
              , G = e=>e.message.membership || e.message.membershipGiftPurchase
              , q = e=>{
                null == e ? v(Ot, r = null, r) : "welcome"in e || v(Ot, r = e.message.messageId, r)
            }
            ;
            let V, X = 0;
            const J = ()=>{
                setTimeout((()=>{
                    V && n(5, X = V.clientHeight)
                }
                ), 350)
            }
            ;
            return e.$$.update = ()=>{
                if (1048578 & e.$$.dirty[0] && O && z.length > 0) {
                    for (const e of z)
                        N(e, !1);
                    n(20, z = [])
                }
                268435456 & e.$$.dirty[0] && g && (Y(),
                v(vt, g = !1, g)),
                201326592 & e.$$.dirty[0] && ((e,t=!1)=>{
                    e !== ut.YOUTUBE ? (A.set(e === ut.DARK),
                    e === ut.LIGHT ? document.body.classList.add("bg-ytdark-50") : document.body.classList.remove("bg-ytdark-50")) : A.set(t)
                }
                )(p, f),
                62914560 & e.$$.dirty[0] && B(),
                2097152 & e.$$.dirty[0] && Y(),
                4 & e.$$.dirty[0] && (l || v(zt, o = [], o)),
                5 & e.$$.dirty[0] && J()
            }
            ,
            [T, O, l, I, _, X, V, C, S, A, D, H, B, ()=>{
                if (v(Yt, h = qt.i8, h),
                document.body.classList.add("overflow-hidden"),
                null == at || null == it || at.length < 1 || it.length < 1)
                    return void console.error("No tabId or frameId found from params");
                const e = {
                    tabId: parseInt(at),
                    frameId: parseInt(it)
                };
                v(At, $ = chrome.runtime.connect(), $),
                null == $ || $.onMessage.addListener(F),
                null == $ || $.postMessage({
                    type: "registerClient",
                    frameInfo: e,
                    getInitialData: !0
                }),
                null == $ || $.postMessage({
                    type: "getTheme",
                    frameInfo: e
                })
            }
            , W, G, e=>!D(e) && !W(e) && !G(e), q, J, e=>s && e.message.map((e=>"text" === e.type || "link" === e.type ? e.text : e.alt)).join("").includes(`@${s}`), z, a, i, c, u, d, f, p, g, ()=>{
                B(),
                J()
            }
            , e=>q(e), e=>q(e), ()=>q(null), ()=>q(null), function(e) {
                ae[e ? "unshift" : "push"]((()=>{
                    _ = e,
                    n(4, _)
                }
                ))
            }
            , function(e) {
                ae[e ? "unshift" : "push"]((()=>{
                    V = e,
                    n(6, V)
                }
                ))
            }
            ]
        }
        new class extends Ye {
            constructor(e) {
                super(),
                Fe(this, e, na, ea, i, {}, Yr, [-1, -1, -1])
            }
        }
        ({
            target: document.body
        })
    }
    )()
}
)();
''';
