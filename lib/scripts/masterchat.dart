const masterchat = '''
const _btoa = globalThis.btoa;

function replayReloadContinuation(
  origin,
  { top = false, seekMs = 0 } = {}
) {
  const chatType = top ? 4 : 1;
  return encodeURIComponent(u8tob64(
    ld(156074452, [
      ld(3, hdt(origin)),
      vt(8, 1),
      ld(11, vt(2, seekMs)),
      ld(14, vt(1, chatType)),
      vt(15, 1),
    ])
  ));
}

const u8tob64 = _btoa
  ? (data) => _btoa(String.fromCharCode.apply(null, data))
  : (data) => Buffer.from(data).toString("base64");

function ld(
  fid,
  payload
) {
  const b =
    typeof payload === "string"
      ? new TextEncoder().encode(payload)
      : Array.isArray(payload)
      ? concatu8(payload)
      : payload;
  const bLen = b.byteLength;
  return concatu8([bitou8(pbh(fid, 2)), bitou8(encv(BigInt(bLen))), b]);
}

function concatu8(args) {
  let totalLength = 0;
  for (let i = 0; i < args.length; ++i) {
    totalLength += args[i].length;
  }
  const out = new Uint8Array(totalLength);
  let offset = 0;
  for (let i = 0; i < args.length; ++i) {
    out.set(args[i], offset);
    offset += args[i].length;
  }
  return out;
}

function bitou8(n) {
  let hv = n.toString(16);
  hv = "".padStart(hv.length % 2, "0") + hv;
  return hextou8(hv);
}

function hextou8(data) {
  data =
    data.startsWith("0x") || data.startsWith("0X") ? data.substring(2) : data;
  const out = new Uint8Array(data.length / 2);
  for (let i = 0; i < out.length; ++i) {
    out[i] = parseInt(data.substr(i * 2, 2), 16);
  }
  return out;
}

function hdt(tgt) {
  return u8tob64(
    concatu8([ld(1, cvToken(tgt)), ld(3, ld(48687757, ld(1, tgt.videoId))), vt(4, 1)])
  );
}

function cvToken(p) {
  return ld(5, [ld(1, p.channelId), ld(2, p.videoId)]);
}

function vt(fid, payload) {
  return concatu8([bitou8(pbh(fid, 0)), bitou8(payload)]);
}

function pbh(fid, type) {
  return encv((BigInt(fid) << 3n) | BigInt(type));
}

function encv(n) {
  let s = 0n;
  while (n >> 7n) {
    s = (s << 8n) | 0x80n | (n & 0x7fn);
    n >>= 7n;
  }
  s = (s << 8n) | n;
  return s;
}
''';
