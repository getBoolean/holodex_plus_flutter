!function() {
    "use strict";
    const e = new URLSearchParams(window.location.search).get("dark_theme");
    "1" === e ? document.querySelector("html")?.setAttribute("dark", "") : "0" === e && document.querySelector("html")?.removeAttribute("dark"),
    console.log("[Holodex+] live chat overrides injected")
}();
