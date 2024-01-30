
function validOrigin(origin) {
    return origin.match(/^https?:\/\/(localhost:|(\S+\.)?holodex\.net)/i);
}
  
// Re-emit events from wrong origins
window.addEventListener("message", (event) => {
    if (validOrigin(event.origin)) {
        window.postMessage(event.data, "*");
    }
});