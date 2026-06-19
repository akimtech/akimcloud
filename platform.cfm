<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Platform Architecture — AkimTech Cloud</title>
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

  /* page banner */
  .page-hero{background:linear-gradient(145deg,#0a1f44 0%,#1538a3 55%,#1f4fff 120%);color:#fff;position:relative;overflow:hidden;padding:140px 0 70px}
  .page-hero:before{content:"";position:absolute;inset:0;background:radial-gradient(700px 500px at 85% 20%,rgba(122,167,255,.35),transparent 60%)}
  .page-hero .wrap{position:relative;z-index:2}
  .page-hero .eyebrow{color:var(--sky)}
  .page-hero h1{font-weight:800;font-size:52px;line-height:1.02;margin:16px 0 14px;max-width:820px;text-wrap:balance}
  .page-hero p.lead{font-size:19px;color:rgba(255,255,255,.82);max-width:620px}
  .crumbs{font-size:14px;color:rgba(255,255,255,.7);margin-top:20px}
  .crumbs a:hover{color:#fff}
  .crumbs span{margin:0 8px;opacity:.5}

  /* callout — the unifying model */
  .callout{background:linear-gradient(135deg,#0a1f44,#1538a3);border-radius:20px;padding:40px 44px;color:#fff;position:relative;overflow:hidden;max-width:900px;margin:0 auto}
  .callout:before{content:"";position:absolute;inset:0;background:radial-gradient(420px 240px at 90% -10%,rgba(122,167,255,.4),transparent 60%)}
  .callout .eyebrow{color:var(--sky);position:relative}
  .callout p{font-family:"Manrope";font-weight:600;font-size:23px;line-height:1.42;margin-top:12px;position:relative}
  .callout p b{color:var(--sky);font-weight:800}

  /* sections */
  .sec{padding:96px 0}
  .sec-head{text-align:center;max-width:680px;margin:0 auto 56px}
  .sec-head .eyebrow{color:var(--royal)}
  .sec-head h2{font-size:42px;font-weight:800;color:var(--navy);line-height:1.04;margin:14px 0 16px}
  .sec-head p{font-size:18px;color:var(--mut)}
  .cards{display:grid;grid-template-columns:repeat(3,1fr);gap:22px}
  .card{border-radius:18px;padding:32px 30px;background:var(--paper);border:1px solid transparent;transition:.22s;position:relative}
  .card:hover{background:#fff;border-color:var(--line);box-shadow:0 28px 56px -30px rgba(31,79,255,.4);transform:translateY(-4px)}
  .card .num{font-family:"Manrope";font-weight:800;font-size:12.5px;color:var(--sky);letter-spacing:.08em}
  .card h3{font-size:20px;font-weight:700;color:var(--navy);margin:8px 0 12px}
  .card ul{list-style:none}
  .card li{font-size:14.5px;color:var(--mut);padding-left:16px;position:relative;margin-bottom:7px}
  .card li:before{content:"";position:absolute;left:0;top:9px;width:6px;height:6px;border-radius:50%;background:var(--sky)}

  /* feature split — execution engines */
  .split{background:var(--paper)}
  .split .wrap{display:grid;grid-template-columns:1fr 1fr;gap:60px;align-items:center;padding:96px 40px}
  .split h2{font-size:38px;font-weight:800;color:var(--navy);line-height:1.06;margin:14px 0 18px}
  .split p{font-size:17px;color:var(--mut);margin-bottom:24px;max-width:480px}
  .flist{list-style:none}
  .flist li{display:flex;gap:14px;align-items:flex-start;margin-bottom:18px;font-size:16px;color:var(--ink)}
  .flist .ck{width:30px;height:30px;border-radius:9px;background:var(--royal);color:#fff;display:grid;place-items:center;flex:none;font-family:"Manrope";font-weight:800;font-size:12px;margin-top:1px}
  .flist b{display:block;font-weight:700;color:var(--navy);margin-bottom:2px}
  .flist span.d{color:var(--mut);font-size:14.5px}

  /* flow card */
  .flow{position:relative;border-radius:18px;overflow:hidden;background:repeating-linear-gradient(135deg,#0c2655 0 14px,#0e2a5e 14px 28px);border:1px solid var(--line);box-shadow:0 30px 60px -34px rgba(10,31,68,.5);padding:38px 34px}
  .flow .ttl{font-family:"Manrope";font-weight:800;font-size:13px;letter-spacing:.12em;text-transform:uppercase;color:var(--sky);margin-bottom:22px}
  .flow .step{display:flex;align-items:center;gap:14px;color:#dce7ff;font-size:15px;font-weight:600;margin-bottom:15px}
  .flow .step .b{width:26px;height:26px;border-radius:7px;background:rgba(122,167,255,.18);color:#bcd0ff;display:grid;place-items:center;flex:none;font-family:"Manrope";font-size:13px;font-weight:800}
  .flow .step:last-child{margin-bottom:0}

  /* mental map */
  .map{max-width:840px;margin:0 auto;display:grid;gap:16px}
  .map .row{display:flex;gap:18px;align-items:flex-start;background:var(--paper);border:1px solid var(--line);border-radius:14px;padding:22px 26px}
  .map .tag{font-family:"Manrope";font-weight:800;font-size:13px;letter-spacing:.04em;color:#fff;background:var(--royal);border-radius:8px;padding:6px 12px;flex:none;margin-top:1px;white-space:nowrap}
  .map p{font-size:16px;color:var(--ink)}
  .map p b{color:var(--navy);font-weight:700}

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

<!-- ===================== PAGE BANNER ===================== -->
<section class="page-hero">
  <div class="wrap">
    <div class="eyebrow">Platform Architecture</div>
    <h1>The Tech stack, layer by layer.</h1>
    <p class="lead">A request enters at the edge, runs through an engine that executes code or model weights, then reads or writes data. Here is the platform that makes that happen.</p>
    <div class="crumbs"><a href="index.cfm">Home</a><span>/</span>Platform</div>
  </div>
</section>

<!-- ===================== UNIFYING MODEL ===================== -->
<section class="sec" style="padding-bottom:0">
  <div class="wrap">
    <div class="callout">
      <div class="eyebrow">The unifying model</div>
      <p><b>Node</b> runs the assistant, <b>Lucee&nbsp;→&nbsp;Tomcat&nbsp;→&nbsp;JVM</b> runs the web apps, and <b>Ollama</b> runs the models — while <b>nginx</b> is the shared front door to all three.</p>
    </div>
  </div>
</section>

<!-- ===================== THE LAYERS (cards) ===================== -->
<section class="sec">
  <div class="wrap">
    <div class="sec-head">
      <div class="eyebrow">The Stack</div>
      <h2>Eight layers, each with one job.</h2>
      <p>From bare metal up to the deploy pipeline — the vocabulary anchored to where it actually lives.</p>
    </div>
    <div class="cards">
      <div class="card">
        <div class="num">01 · INFRASTRUCTURE</div>
        <h3>Hosting</h3>
        <ul>
          <li>IONOS bare-metal IaaS</li>
          <li>VPS fleet + a dedicated GPU box</li>
          <li>Ubuntu 24.04 LTS throughout</li>
        </ul>
      </div>
      <div class="card">
        <div class="num">02 · PROCESS</div>
        <h3>Containers</h3>
        <ul>
          <li>Docker images &amp; Compose</li>
          <li>systemd keeps services alive</li>
          <li>Bind mounts persist state</li>
        </ul>
      </div>
      <div class="card">
        <div class="num">03 · EDGE</div>
        <h3>Network</h3>
        <ul>
          <li>nginx reverse proxy + TLS</li>
          <li>Let's Encrypt auto-renewal</li>
          <li>Loopback binding &amp; auth gates</li>
        </ul>
      </div>
      <div class="card">
        <div class="num">04 · ENGINES</div>
        <h3>Execution</h3>
        <ul>
          <li>Node.js for the assistant</li>
          <li>Ollama for inference</li>
          <li>Lucee → Tomcat → JVM for CFML</li>
        </ul>
      </div>
      <div class="card">
        <div class="num">05 · APPLICATION</div>
        <h3>Apps</h3>
        <ul>
          <li>OpenClaw / MAX assistant</li>
          <li>CFML sites: isonar, legalseer…</li>
          <li>Mission Control dashboard</li>
        </ul>
      </div>
      <div class="card">
        <div class="num">06 · AI</div>
        <h3>Inference</h3>
        <ul>
          <li>Models &amp; weights (gemma, OCR)</li>
          <li>GPU1 as the inference server</li>
          <li>Endpoints, context window, RAG</li>
        </ul>
      </div>
      <div class="card">
        <div class="num">07 · DATA</div>
        <h3>Storage</h3>
        <ul>
          <li>PostgreSQL 17 system of record</li>
          <li>Lucee datasources + JDBC</li>
          <li>SQLite for Mission Control</li>
        </ul>
      </div>
      <div class="card">
        <div class="num">08 · DEPLOY</div>
        <h3>Source &amp; CI/CD</h3>
        <ul>
          <li>Git forks, main vs. PROD</li>
          <li>GitHub Actions pipeline</li>
          <li>rsync deploy + build artifacts</li>
        </ul>
      </div>
      <div class="card" style="background:var(--ink)">
        <div class="num" style="color:var(--sky)">★ FRONT DOOR</div>
        <h3 style="color:#fff">nginx ties it together</h3>
        <ul>
          <li style="color:#aebfe0">One edge in front of all three engines</li>
          <li style="color:#aebfe0">PostgreSQL is the system of record</li>
        </ul>
      </div>
    </div>
  </div>
</section>

<!-- ===================== EXECUTION ENGINES (split) ===================== -->
<section class="split">
  <div class="wrap">
    <div>
      <div class="eyebrow" style="color:var(--royal)">Layer 4 · Engines</div>
      <h2>Three engines, one edge.</h2>
      <p>An engine is software that takes code or model weights and actually executes them. The platform runs three, each sitting behind the same nginx front door.</p>
      <ul class="flist">
        <li><span class="ck">JS</span><div><b>Node.js</b><span class="d">The JavaScript runtime executing the OpenClaw gateway.</span></div></li>
        <li><span class="ck">AI</span><div><b>Ollama</b><span class="d">The inference engine that loads and runs model weights.</span></div></li>
        <li><span class="ck">CF</span><div><b>Lucee → Tomcat → JVM</b><span class="d">CFML compiled to Java bytecode, served as servlets on the JVM.</span></div></li>
      </ul>
    </div>
    <div class="flow">
      <div class="ttl">Request flow · one isonar page</div>
      <div class="step"><span class="b">1</span> nginx receives HTTPS</div>
      <div class="step"><span class="b">2</span> Forwards to Tomcat</div>
      <div class="step"><span class="b">3</span> Tomcat routes to Lucee (a servlet)</div>
      <div class="step"><span class="b">4</span> Lucee runs compiled CFML on the JVM</div>
      <div class="step"><span class="b">5</span> Response flows back out</div>
    </div>
  </div>
</section>

<!-- ===================== QUICK MENTAL MAP ===================== -->
<section class="sec">
  <div class="wrap">
    <div class="sec-head">
      <div class="eyebrow">If you keep four sentences</div>
      <h2>The quick mental map.</h2>
    </div>
    <div class="map">
      <div class="row"><span class="tag">GPU1 · '134</span><p><b>The inference server.</b> Hosts the models — Ollama is the engine; gemma and the OCR models are the weights.</p></div>
      <div class="row"><span class="tag">MAX · '16</span><p><b>The assistant / agent.</b> Talks to a model backend and orchestrates around the answers.</p></div>
      <div class="row"><span class="tag">Web · '40</span><p><b>The CFML tier.</b> Lucee → Tomcat → JVM: bytecode served as servlets through the Jakarta EE web container.</p></div>
      <div class="row"><span class="tag">nginx</span><p><b>The shared front door</b> across all of them — and PostgreSQL is the system of record.</p></div>
    </div>
  </div>
</section>

<!-- ===================== CTA ===================== -->
<section class="cta" style="padding-top:0">
  <div class="wrap">
    <div class="cta-box">
      <h2>Want a deeper look at the platform?</h2>
      <p>Talk to our engineering team about how the AkimTechCloud stack fits your workloads.</p>
      <a class="btn btn-white" href="index.cfm#contact">Contact Sales →</a>
    </div>
  </div>
</section>

<!--- Footer --->
<cfinclude template="includes/footer.cfm">

</body>
</html>
