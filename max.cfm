<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Max — The Maximum AI Platform | AkimTech Cloud</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Manrope:wght@500;600;700;800&family=Public+Sans:wght@400;500;600&display=swap" rel="stylesheet">
<style>
  :root{
    --navy:#0a1f44; --royal:#1f4fff; --royal-d:#143ad6; --sky:#7aa7ff;
    --ice:#eaf1ff; --paper:#f4f7fe; --line:#e2e9f6; --ink:#0c1a36; --mut:#56678a;
  }
  *{margin:0;padding:0;box-sizing:border-box}
  html{scroll-behavior:smooth}
  body{font-family:"Public Sans",sans-serif;color:var(--ink);background:#fff;-webkit-font-smoothing:antialiased;line-height:1.55}
  h1,h2,h3,.disp{font-family:"Manrope",sans-serif;letter-spacing:-0.025em}
  a{text-decoration:none;color:inherit}
  .wrap{max-width:1180px;margin:0 auto;padding:0 40px}
  .eyebrow{font-family:"Manrope";font-weight:700;font-size:13px;letter-spacing:.18em;text-transform:uppercase}

  .logo{display:flex;align-items:center;gap:11px}
  .mark{width:38px;height:38px;flex:none}
  .logo .name{font-family:"Manrope";font-weight:800;font-size:21px;letter-spacing:-.02em}

  header{position:absolute;top:0;left:0;right:0;z-index:50}
  .nav{display:flex;align-items:center;justify-content:space-between;height:84px}
  .nav ul{display:flex;align-items:center;gap:34px;list-style:none}
  .nav ul a{font-weight:600;font-size:15px;color:rgba(255,255,255,.85)}
  .nav ul a:hover{color:#fff}
  .btn{font-family:"Manrope";font-weight:700;font-size:15px;display:inline-flex;align-items:center;gap:9px;padding:14px 26px;border-radius:50px;cursor:pointer;transition:.18s}
  .btn-white{background:#fff;color:var(--royal)}
  .btn-white:hover{transform:translateY(-1px);box-shadow:0 12px 30px -10px rgba(0,0,0,.4)}
  .btn-pri{background:var(--royal);color:#fff;box-shadow:0 10px 26px -8px rgba(31,79,255,.6)}
  .btn-pri:hover{background:var(--royal-d);transform:translateY(-1px)}
  .btn-line{background:transparent;border:1.5px solid rgba(255,255,255,.4);color:#fff}
  .btn-line:hover{border-color:#fff}

  /* ── HERO ROW: two cells — snippet left, Max image right ── */
  .hero{background:linear-gradient(145deg,#0a1f44 0%,#1538a3 55%,#1f4fff 120%);color:#fff;position:relative;overflow:hidden;padding:138px 0 96px}
  .hero:before{content:"";position:absolute;inset:0;background:radial-gradient(680px 520px at 88% 30%,rgba(122,167,255,.4),transparent 60%)}
  .hero .row{position:relative;z-index:2;display:grid;grid-template-columns:1.05fr .95fr;gap:54px;align-items:center}
  .hero .eyebrow{color:var(--sky)}
  .hero h1{font-weight:800;font-size:66px;line-height:.98;margin:18px 0 18px;text-wrap:balance}
  .hero p.lead{font-size:19px;color:rgba(255,255,255,.85);max-width:520px;margin-bottom:30px}
  .hero-cta{display:flex;gap:14px;flex-wrap:wrap}
  .hero .pic{position:relative;display:grid;place-items:center}
  .hero .pic:before{content:"";position:absolute;width:88%;aspect-ratio:1;border-radius:50%;background:radial-gradient(circle,rgba(122,167,255,.5),transparent 65%)}
  .hero .pic img{position:relative;width:100%;max-width:380px;height:auto;filter:drop-shadow(0 30px 50px rgba(0,0,0,.45))}

  /* glance strip */
  .strip{position:relative;z-index:5;margin-top:-42px}
  .strip-in{background:#fff;border:1px solid var(--line);border-radius:18px;box-shadow:0 30px 60px -34px rgba(10,31,68,.45);display:grid;grid-template-columns:repeat(4,1fr)}
  .strip .s{padding:28px 30px;border-right:1px solid var(--line)}
  .strip .s:last-child{border-right:0}
  .strip .n{font-family:"Manrope";font-weight:800;font-size:21px;color:var(--navy);letter-spacing:-.02em}
  .strip .l{font-size:13px;color:var(--mut);margin-top:3px}

  /* sections */
  .sec{padding:96px 0}
  .sec-head{text-align:center;max-width:720px;margin:0 auto 56px}
  .sec-head .eyebrow{color:var(--royal)}
  .sec-head h2{font-size:42px;font-weight:800;color:var(--navy);line-height:1.04;margin:14px 0 16px}
  .sec-head p{font-size:18px;color:var(--mut)}

  /* unifying callout */
  .callout{background:linear-gradient(135deg,#0a1f44,#1538a3);border-radius:20px;padding:40px 44px;color:#fff;position:relative;overflow:hidden;max-width:900px;margin:0 auto}
  .callout:before{content:"";position:absolute;inset:0;background:radial-gradient(420px 240px at 90% -10%,rgba(122,167,255,.4),transparent 60%)}
  .callout .eyebrow{color:var(--sky);position:relative}
  .callout p{font-family:"Manrope";font-weight:600;font-size:23px;line-height:1.42;margin-top:12px;position:relative}
  .callout p b{color:var(--sky);font-weight:800}

  /* capability cards */
  .cards{display:grid;grid-template-columns:repeat(4,1fr);gap:20px}
  .card{border-radius:18px;padding:32px 28px;background:var(--paper);border:1px solid transparent;transition:.22s}
  .card:hover{background:#fff;border-color:var(--line);box-shadow:0 28px 56px -30px rgba(31,79,255,.4);transform:translateY(-4px)}
  .card .ic{width:50px;height:50px;border-radius:13px;background:var(--royal);display:grid;place-items:center;margin-bottom:18px}
  .card .ic svg{width:25px;height:25px;stroke:#fff;fill:none;stroke-width:2}
  .card h3{font-size:19px;font-weight:700;color:var(--navy);margin-bottom:8px}
  .card p{font-size:14.5px;color:var(--mut)}

  /* models split */
  .split{background:var(--paper)}
  .split .wrap{display:grid;grid-template-columns:1fr 1fr;gap:60px;align-items:center;padding:96px 40px}
  .split h2{font-size:38px;font-weight:800;color:var(--navy);line-height:1.06;margin:14px 0 18px}
  .split p{font-size:17px;color:var(--mut);margin-bottom:24px;max-width:480px}
  .models{display:grid;gap:12px}
  .model{background:#fff;border:1px solid var(--line);border-radius:14px;padding:18px 22px;display:flex;align-items:center;gap:16px}
  .model .mn{font-family:"Manrope";font-weight:800;font-size:16px;color:var(--navy);flex:none;min-width:120px}
  .model .mr{font-size:14px;color:var(--mut)}
  .model .tag{margin-left:auto;flex:none;font-size:11px;font-weight:700;letter-spacing:.04em;text-transform:uppercase;color:var(--royal);background:var(--ice);border-radius:20px;padding:4px 11px}

  /* powers cards */
  .pcards{display:grid;grid-template-columns:repeat(3,1fr);gap:22px}
  .pcard{border-radius:18px;padding:34px 32px;background:var(--paper);border:1px solid transparent;transition:.22s}
  .pcard:hover{background:#fff;border-color:var(--line);box-shadow:0 28px 56px -30px rgba(31,79,255,.4);transform:translateY(-4px)}
  .pcard h3{font-size:21px;font-weight:700;color:var(--navy);margin-bottom:10px}
  .pcard p{font-size:15px;color:var(--mut);margin-bottom:16px}
  .pcard .sites{display:flex;flex-wrap:wrap;gap:8px}
  .pcard .sites span{font-size:12.5px;font-weight:600;color:var(--royal);background:var(--ice);border-radius:6px;padding:4px 10px}

  /* security */
  .sec-dark{background:#06173a;color:#cdd9f2;padding:96px 0;position:relative;overflow:hidden}
  .sec-dark:before{content:"";position:absolute;inset:0;background:radial-gradient(600px 400px at 80% 10%,rgba(31,79,255,.25),transparent 60%)}
  .sec-dark .wrap{position:relative;z-index:2}
  .sec-dark .eyebrow{color:var(--sky);text-align:center;display:block}
  .sec-dark h2{font-size:40px;font-weight:800;color:#fff;line-height:1.05;text-align:center;margin:14px auto 52px;max-width:640px}
  .secgrid{display:grid;grid-template-columns:repeat(2,1fr);gap:22px;max-width:920px;margin:0 auto}
  .sitem{display:flex;gap:16px;align-items:flex-start;background:rgba(255,255,255,.04);border:1px solid rgba(122,167,255,.18);border-radius:14px;padding:24px 26px}
  .sitem .si{width:40px;height:40px;border-radius:11px;background:var(--royal);display:grid;place-items:center;flex:none}
  .sitem .si svg{width:20px;height:20px;stroke:#fff;fill:none;stroke-width:2}
  .sitem b{font-family:"Manrope";color:#fff;font-size:17px;display:block;margin-bottom:4px}
  .sitem p{font-size:14.5px;color:#aebfe0}

  /* CTA */
  .cta{padding:104px 0}
  .cta-box{background:linear-gradient(135deg,#0a1f44,#1f4fff);border-radius:26px;padding:70px;text-align:center;position:relative;overflow:hidden}
  .cta-box:before{content:"";position:absolute;inset:0;background:radial-gradient(500px 300px at 50% -20%,rgba(122,167,255,.4),transparent 60%)}
  .cta-box h2{font-size:42px;font-weight:800;color:#fff;line-height:1.06;position:relative;max-width:640px;margin:0 auto 14px}
  .cta-box p{color:rgba(255,255,255,.82);font-size:18px;position:relative;margin-bottom:32px}
  .cta-box .btn-white{margin:0 auto;position:relative}

  footer{background:#06173a;color:#9db4e6;padding:64px 0 36px}
  .foot{display:grid;grid-template-columns:1.6fr 1fr 1fr 1fr;gap:40px}
  footer .name{color:#fff}
  footer p.about{margin-top:16px;font-size:14px;max-width:300px;line-height:1.7}
  footer h4{font-family:"Manrope";color:#fff;font-size:14px;letter-spacing:.06em;text-transform:uppercase;margin-bottom:18px}
  footer li{list-style:none;margin-bottom:11px;font-size:14px;cursor:pointer}
  footer li:hover{color:#fff}
  .foot-bot{border-top:1px solid rgba(157,180,230,.18);margin-top:50px;padding-top:24px;display:flex;justify-content:space-between;font-size:13px}
</style>
</head>
<body>

<!--- Header --->
<cfinclude template="includes/header.cfm">


<!-- ===================== HERO ROW (snippet + Max image) ===================== -->
<section class="hero">
  <div class="wrap">
    <div class="row">
      <!-- LEFT CELL: snippet -->
      <div>
        <div class="eyebrow">Maximum AI Platform</div>
        <h1>Meet Max.</h1>
        <p class="lead">The AI capability layer behind AkimTech — a private inference engine that reads, understands, and answers from your documents, built on dedicated GPU hardware with a managed cloud backbone standing by.</p>
        <div class="hero-cta">
          <a class="btn btn-white" href="index.cfm#contact">Talk to our team →</a>
          <a class="btn btn-line" href="#capabilities">How Max works</a>
        </div>
      </div>
      <!-- RIGHT CELL: Max mascot -->
      <div class="pic">
        <img src="images/max1.png" alt="Max — the Maximum Platform mascot">
      </div>
    </div>
  </div>
</section>

<!-- ===================== AT-A-GLANCE STRIP ===================== -->
<div class="strip">
  <div class="wrap">
    <div class="strip-in">
      <div class="s"><div class="n">NVIDIA Tesla T4</div><div class="l">16 GB dedicated GPU</div></div>
      <div class="s"><div class="n">Ollama + Cloud</div><div class="l">Local inference, cloud failover</div></div>
      <div class="s"><div class="n">Private by design</div><div class="l">TLS · token-gated edge</div></div>
      <div class="s"><div class="n">PII stays home</div><div class="l">Documents read on-box</div></div>
    </div>
  </div>
</div>

<!-- ===================== WHAT MAX IS ===================== -->
<section class="sec">
  <div class="wrap">
    <div class="sec-head">
      <div class="eyebrow">What Max is</div>
      <h2>The brain behind the platform.</h2>
      <p>When an AkimTech application needs to read a document, understand it, or answer from it, that work runs through Max. It isn't a single program — it's the whole AI capability stack: the hardware, the secure bridge that serves the models, the models themselves, and the applications they power.</p>
    </div>
    <div class="callout">
      <div class="eyebrow">One sentence to hold onto</div>
      <p>A <b>dedicated GPU</b> runs the models, <b>Ollama</b> serves them, <b>nginx</b> guards the door, and the <b>cloud</b> catches the overflow.</p>
    </div>
  </div>
</section>

<!-- ===================== CAPABILITY STACK ===================== -->
<section class="sec" id="capabilities" style="padding-top:0">
  <div class="wrap">
    <div class="sec-head">
      <div class="eyebrow">The stack</div>
      <h2>Four layers, one capability.</h2>
      <p>The bulldog is the face; this is the engine room.</p>
    </div>
    <div class="cards">
      <div class="card">
        <div class="ic"><svg viewBox="0 0 24 24"><rect x="3" y="4" width="18" height="7" rx="1"/><rect x="3" y="14" width="18" height="6" rx="1"/><path d="M7 7.5h.01M7 17h.01"/></svg></div>
        <h3>Hardware</h3>
        <p>A dedicated NVIDIA Tesla T4 GPU server — real hardware for heavy lifting, not a shared slice.</p>
      </div>
      <div class="card">
        <div class="ic"><svg viewBox="0 0 24 24"><path d="M12 3l8 3v6c0 5-3.5 8-8 9-4.5-1-8-4-8-9V6Z"/><path d="M9 12l2 2 4-4"/></svg></div>
        <h3>Secure bridge</h3>
        <p>An nginx edge with TLS and token-gated access — the models are never exposed to the open internet.</p>
      </div>
      <div class="card">
        <div class="ic"><svg viewBox="0 0 24 24"><circle cx="12" cy="12" r="3"/><path d="M12 3v3M12 18v3M3 12h3M18 12h3M5.6 5.6l2.1 2.1M16.3 16.3l2.1 2.1M18.4 5.6l-2.1 2.1M7.7 16.3l-2.1 2.1"/></svg></div>
        <h3>The models</h3>
        <p>A deliberate roster of open models — general reasoning, chat, and document OCR — each chosen for a job.</p>
      </div>
      <div class="card">
        <div class="ic"><svg viewBox="0 0 24 24"><rect x="3" y="3" width="7" height="7" rx="1"/><rect x="14" y="3" width="7" height="7" rx="1"/><rect x="3" y="14" width="7" height="7" rx="1"/><rect x="14" y="14" width="7" height="7" rx="1"/></svg></div>
        <h3>Applications</h3>
        <p>The products people actually use — ISONAR, Admissions, and the broader AkimTech family.</p>
      </div>
    </div>
  </div>
</section>

<!-- ===================== MODELS (split) ===================== -->
<section class="split">
  <div class="wrap">
    <div>
      <div class="eyebrow" style="color:var(--royal)">The minds</div>
      <h2>A small, deliberate roster.</h2>
      <p>Max speaks through open models, each chosen for a job. On document OCR, an active bake-off is scored on real legal and treasury documents — the lead model decided on evidence, not assumption.</p>
      <a class="btn btn-pri" href="index.cfm#contact" style="margin-top:4px">Contact Sales →</a>
    </div>
    <div class="models">
      <div class="model"><span class="mn">Gemma</span><span class="mr">General reasoning &amp; chat · multimodal</span></div>
      <div class="model"><span class="mn">Qwen</span><span class="mr">Local chat, kept in reserve</span></div>
      <div class="model"><span class="mn">DeepSeek-OCR</span><span class="mr">Layout, grounding, doc → markdown</span><span class="tag">In eval</span></div>
      <div class="model"><span class="mn">GLM-OCR</span><span class="mr">Tables, forms, structured extraction</span><span class="tag">In eval</span></div>
    </div>
  </div>
</section>

<!-- ===================== WHAT MAX POWERS ===================== -->
<section class="sec">
  <div class="wrap">
    <div class="sec-head">
      <div class="eyebrow">What Max powers</div>
      <h2>The shared engine for the AkimTech family.</h2>
      <p>Max is the engine; the applications are what people use. New applications plug into the same platform — and graduate to their own dedicated GPU as their volume justifies it.</p>
    </div>
    <div class="pcards">
      <div class="pcard">
        <h3>ISONAR</h3>
        <p>Legal &amp; government document intelligence — reading and structuring court filings, treasury records, and government documents. The OCR-first workload Max was built around.</p>
        <div class="sites"><span>isonar.ai</span><span>treasurydept.us</span><span>statecourts.us</span><span>xaimon.com</span></div>
      </div>
      <div class="pcard">
        <h3>Admissions</h3>
        <p>K-12 college-pathway planning — the education-facing application of the family, fitting for the graduate in the cap and gown.</p>
        <div class="sites"><span>admissions.mx</span></div>
      </div>
      <div class="pcard">
        <h3>…and beyond</h3>
        <p>The platform is built so additional applications can plug into the same secure endpoint, each able to scale onto its own dedicated hardware when the time comes.</p>
        <div class="sites"><span>The AkimTech family</span></div>
      </div>
    </div>
  </div>
</section>

<!-- ===================== SECURITY & DATA POSTURE ===================== -->
<section class="sec-dark">
  <div class="wrap">
    <div class="eyebrow">Security &amp; data posture</div>
    <h2>Your documents never leave home unprotected.</h2>
    <div class="secgrid">
      <div class="sitem">
        <div class="si"><svg viewBox="0 0 24 24"><rect x="4" y="10" width="16" height="10" rx="2"/><path d="M8 10V7a4 4 0 0 1 8 0v3"/></svg></div>
        <div><b>Locked engine</b><p>The model server never faces the internet directly — a hardened edge is the only entrance.</p></div>
      </div>
      <div class="sitem">
        <div class="si"><svg viewBox="0 0 24 24"><path d="M12 3l8 3v6c0 5-3.5 8-8 9-4.5-1-8-4-8-9V6Z"/><path d="M9 12l2 2 4-4"/></svg></div>
        <div><b>Token-gated</b><p>Every request is authenticated before it ever reaches a model. No token, no answer.</p></div>
      </div>
      <div class="sitem">
        <div class="si"><svg viewBox="0 0 24 24"><path d="M3 7h18M3 12h18M3 17h12"/><circle cx="19" cy="17" r="2"/></svg></div>
        <div><b>PII stays home</b><p>Documents are read on the box, and output is sanitized of personal information before anything reaches the cloud.</p></div>
      </div>
      <div class="sitem">
        <div class="si"><svg viewBox="0 0 24 24"><rect x="3" y="3" width="8" height="8" rx="1"/><rect x="13" y="13" width="8" height="8" rx="1"/><path d="M11 7h6v6"/></svg></div>
        <div><b>Isolation by design</b><p>Sensitive workloads — such as K-12 data — run on their own hardware rather than sharing a box.</p></div>
      </div>
    </div>
  </div>
</section>

<!-- ===================== CTA ===================== -->
<section class="cta">
  <div class="wrap">
    <div class="cta-box">
      <h2>Put Max to work on your documents.</h2>
      <p>Talk to our team about bringing private, GPU-backed AI to your mission.</p>
      <a class="btn btn-white" href="index.cfm#contact">Contact Sales →</a>
    </div>
  </div>
</section>

<!-- ===================== FOOTER ===================== -->
<footer>
  <div class="wrap">
    <div class="foot">
      <div>
        <div class="logo"><svg class="mark" viewBox="0 0 60 60" fill="none"><path d="M30 6 54 22 30 38 6 22Z" fill="#1f4fff"/><path d="M30 18 54 34 30 50 6 34Z" fill="#7aa7ff"/><path d="M30 30 47 41 30 52 13 41Z" fill="#eaf1ff"/></svg><span class="name">AkimTech Cloud</span></div>
        <p class="about">Secure, compliant cloud infrastructure for federal agencies and regulated enterprises. Built and operated in the United States.</p>
      </div>
      <div><h4>Platform</h4><ul><li>IaaS</li><li>PaaS</li><li>Max AI</li><li>Managed Hosting</li></ul></div>
      <div><h4>Company</h4><ul><li>About Us</li><li>Compliance</li><li>Careers</li><li>Partnerships</li></ul></div>
      <div><h4>Contact</h4><ul><li>Contact Sales</li><li>Support</li><li>1-800-AKIM-GOV</li><li>sales@akimtech.cloud</li></ul></div>
    </div>
    <div class="foot-bot"><span>© 2026 AkimTech Cloud. All rights reserved.</span><span>Maximum Platform · NVIDIA Tesla T4 · Ollama</span></div>
  </div>
</footer>
</body>
</html>
