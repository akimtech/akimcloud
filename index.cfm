<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>AkimTech Cloud — Modern Gov SaaS</title>
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

  /* hero band */
  .hero{background:linear-gradient(145deg,#0a1f44 0%,#1538a3 55%,#1f4fff 120%);color:#fff;position:relative;overflow:hidden;padding:150px 0 110px}
  .hero:before{content:"";position:absolute;inset:0;background:
    radial-gradient(700px 500px at 85% 20%,rgba(122,167,255,.35),transparent 60%);}
  .hero:after{content:"";position:absolute;left:0;right:0;bottom:0;height:120px;background:linear-gradient(transparent,rgba(255,255,255,.06))}
  .hero .wrap{position:relative;z-index:2}
  .hero .eyebrow{color:var(--sky)}
  .hero h1{font-weight:800;font-size:78px;line-height:.98;margin:22px 0 24px;max-width:900px;text-wrap:balance}
  .hero p.lead{font-size:20px;color:rgba(255,255,255,.82);max-width:560px;margin-bottom:38px}
  .hero-cta{display:flex;gap:14px;flex-wrap:wrap}

  /* floating stat strip */
  .strip{position:relative;z-index:5;margin-top:-44px}
  .strip-in{background:#fff;border:1px solid var(--line);border-radius:18px;box-shadow:0 30px 60px -34px rgba(10,31,68,.45);display:grid;grid-template-columns:repeat(4,1fr)}
  .strip .s{padding:30px 34px;border-right:1px solid var(--line)}
  .strip .s:last-child{border-right:0}
  .strip .n{font-family:"Manrope";font-weight:800;font-size:38px;color:var(--navy);letter-spacing:-.03em}
  .strip .n i{color:var(--royal);font-style:normal}
  .strip .l{font-size:13.5px;color:var(--mut);margin-top:2px}

  /* services */
  .sec{padding:104px 0}
  .sec-head{text-align:center;max-width:680px;margin:0 auto 60px}
  .sec-head .eyebrow{color:var(--royal)}
  .sec-head h2{font-size:48px;font-weight:800;color:var(--navy);line-height:1.04;margin:14px 0 16px}
  .sec-head p{font-size:18px;color:var(--mut)}
  .cards{display:grid;grid-template-columns:repeat(3,1fr);gap:22px}
  .card{border-radius:18px;padding:36px 32px;background:var(--paper);border:1px solid transparent;transition:.22s;position:relative}
  .card:hover{background:#fff;border-color:var(--line);box-shadow:0 28px 56px -30px rgba(31,79,255,.4);transform:translateY(-4px)}
  .card .num{font-family:"Manrope";font-weight:800;font-size:14px;color:var(--sky);letter-spacing:.1em}
  .card .ic{width:54px;height:54px;border-radius:14px;background:var(--royal);display:grid;place-items:center;margin:14px 0 20px}
  .card .ic svg{width:27px;height:27px;stroke:#fff}
  .card h3{font-size:21px;font-weight:700;color:var(--navy);margin-bottom:10px}
  .card p{font-size:15px;color:var(--mut)}

  /* feature split */
  .split{background:var(--paper);padding:0}
  .split .wrap{display:grid;grid-template-columns:1fr 1fr;gap:60px;align-items:center;padding:96px 40px}
  .split h2{font-size:42px;font-weight:800;color:var(--navy);line-height:1.06;margin:14px 0 18px}
  .split p{font-size:17px;color:var(--mut);margin-bottom:22px;max-width:480px}
  .flist{list-style:none}
  .flist li{display:flex;gap:14px;align-items:flex-start;margin-bottom:16px;font-size:16px;color:var(--ink);font-weight:500}
  .flist .ck{width:26px;height:26px;border-radius:50%;background:var(--ice);color:var(--royal);display:grid;place-items:center;flex:none;font-weight:800;font-size:13px;margin-top:1px}
  .ph{position:relative;border-radius:18px;overflow:hidden;min-height:420px;background:
    repeating-linear-gradient(135deg,#0c2655 0 14px,#0e2a5e 14px 28px);border:1px solid var(--line);box-shadow:0 30px 60px -34px rgba(10,31,68,.5)}
  .ph .lbl{position:absolute;left:50%;top:50%;transform:translate(-50%,-50%);font-family:"Public Sans",monospace;font-size:12px;letter-spacing:.1em;text-transform:uppercase;color:#bcd0ff;border:1px dashed rgba(188,208,255,.5);padding:8px 14px;border-radius:6px}

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
<header>
  <div class="wrap nav">
    <a class="logo" href="#">
      <svg class="mark" viewBox="0 0 60 60" fill="none">
        <path d="M30 6 54 22 30 38 6 22Z" fill="#ffffff"/>
        <path d="M30 18 54 34 30 50 6 34Z" fill="#7aa7ff"/>
        <path d="M30 30 47 41 30 52 13 41Z" fill="#1f4fff"/>
      </svg>
      <span class="name" style="color:#fff">AkimTech <span style="color:#7aa7ff">Cloud</span></span>
    </a>
    <ul>
      <li><a href="#services">Services</a></li>
      <li><a href="#">Compliance</a></li>
      <li><a href="#">Platform</a></li>
      <li><a href="#">Resources</a></li>
    </ul>
    <a class="btn btn-white" href="#contact">Contact Sales →</a>
  </div>
</header>

<section class="hero">
  <div class="wrap">
    <div class="eyebrow">Platform as a Service</div>
    <h1>The mission-grade cloud for federal teams.</h1>
    <p class="lead">Compute, storage, and managed platforms with 99.99% uptime — secured to the standards agencies and regulated enterprises depend on.</p>
    <div class="hero-cta">
      <a class="btn btn-white" href="#contact">Contact Sales →</a>
      <a class="btn btn-line" href="#services">Explore Services</a>
    </div>
  </div>
</section>

<div class="strip">
  <div class="wrap">
    <div class="strip-in">
      <div class="s"><div class="n"><i>99.99%</i></div><div class="l">Guaranteed uptime SLA</div></div>
      <div class="s"><div class="n">12</div><div class="l">Geo-redundant data centers</div></div>
      <div class="s"><div class="n">450<i>+</i></div><div class="l">Agencies & enterprises</div></div>
      <div class="s"><div class="n">24/7</div><div class="l">U.S.-based support</div></div>
    </div>
  </div>
</div>

<section class="sec" id="services">
  <div class="wrap">
    <div class="sec-head">
      <div class="eyebrow">Cloud Offerings</div>
      <h2>One platform for every layer of your stack.</h2>
      <p>From bare-metal infrastructure to fully managed platforms — provision, scale, and secure your workloads from a single trusted partner.</p>
    </div>
    <div class="cards">
      <div class="card">
        <div class="num">01</div>
        <div class="ic"><svg fill="none" stroke-width="2" viewBox="0 0 24 24"><rect x="3" y="4" width="18" height="6" rx="1"/><rect x="3" y="14" width="18" height="6" rx="1"/></svg></div>
        <h3>Infrastructure as a Service</h3>
        <p>On-demand compute, networking, and bare-metal — provisioned in minutes and billed by the second.</p>
      </div>
      <div class="card">
        <div class="num">02</div>
        <div class="ic"><svg fill="none" stroke-width="2" viewBox="0 0 24 24"><path d="M3 12h18M12 3v18M5 6l14 12"/></svg></div>
        <h3>Platform as a Service</h3>
        <p>Deploy apps without managing servers. Auto-scaling runtimes, CI/CD, and managed databases out of the box.</p>
      </div>
      <div class="card">
        <div class="num">03</div>
        <div class="ic"><svg fill="none" stroke-width="2" viewBox="0 0 24 24"><path d="M4 7c0-1.5 3.6-3 8-3s8 1.5 8 3-3.6 3-8 3-8-1.5-8-3Z"/><path d="M4 7v10c0 1.5 3.6 3 8 3s8-1.5 8-3V7"/></svg></div>
        <h3>Cloud Storage</h3>
        <p>Encrypted object, block, and archival storage with 11 nines of durability and instant global replication.</p>
      </div>
      <div class="card">
        <div class="num">04</div>
        <div class="ic"><svg fill="none" stroke-width="2" viewBox="0 0 24 24"><path d="M12 3l8 3v6c0 5-3.5 8-8 9-4.5-1-8-4-8-9V6Z"/><path d="M9 12l2 2 4-4"/></svg></div>
        <h3>Security & Compliance</h3>
        <p>FedRAMP, SOC 2, and FISMA-ready controls with continuous monitoring and zero-trust networking.</p>
      </div>
      <div class="card">
        <div class="num">05</div>
        <div class="ic"><svg fill="none" stroke-width="2" viewBox="0 0 24 24"><path d="M21 12a9 9 0 1 1-9-9"/><path d="M21 3v6h-6"/><path d="M12 7v5l3 2"/></svg></div>
        <h3>Disaster Recovery</h3>
        <p>Automated failover and point-in-time recovery across regions, with RPO measured in seconds.</p>
      </div>
      <div class="card">
        <div class="num">06</div>
        <div class="ic"><svg fill="none" stroke-width="2" viewBox="0 0 24 24"><rect x="3" y="3" width="7" height="7" rx="1"/><rect x="14" y="3" width="7" height="7" rx="1"/><rect x="3" y="14" width="7" height="7" rx="1"/><rect x="14" y="14" width="7" height="7" rx="1"/></svg></div>
        <h3>Managed Hosting</h3>
        <p>Fully operated environments with patching, monitoring, and 24/7 engineers handling the undifferentiated work.</p>
      </div>
    </div>
  </div>
</section>

<section class="split">
  <div class="wrap">
    <div>
      <div class="eyebrow" style="color:var(--royal)">Why AkimTech</div>
      <h2>Built for the workloads you can't afford to lose.</h2>
      <p>Every environment is operated in U.S.-based, geo-redundant facilities by engineers cleared for the missions they support.</p>
      <ul class="flist">
        <li><span class="ck">✓</span> FedRAMP Authorized &amp; FISMA-ready by default</li>
        <li><span class="ck">✓</span> Zero-trust networking and continuous monitoring</li>
        <li><span class="ck">✓</span> Sub-second failover across redundant regions</li>
        <li><span class="ck">✓</span> Transparent, second-by-second consumption billing</li>
      </ul>
      <a class="btn btn-pri" href="#contact" style="margin-top:8px">Contact Sales →</a>
    </div>
    <div class="ph"><span class="lbl">[ server rack photo ]</span></div>
  </div>
</section>

<section class="cta" id="contact">
  <div class="wrap">
    <div class="cta-box">
      <h2>Ready to move your mission to the cloud?</h2>
      <p>Talk to our solutions team about a tailored migration and security posture.</p>
      <a class="btn btn-white" href="#">Contact Sales →</a>
    </div>
  </div>
</section>

<footer>
  <div class="wrap">
    <div class="foot">
      <div>
        <div class="logo"><svg class="mark" viewBox="0 0 60 60" fill="none"><path d="M30 6 54 22 30 38 6 22Z" fill="#1f4fff"/><path d="M30 18 54 34 30 50 6 34Z" fill="#7aa7ff"/><path d="M30 30 47 41 30 52 13 41Z" fill="#eaf1ff"/></svg><span class="name">AkimTech Cloud</span></div>
        <p class="about">Secure, compliant cloud infrastructure for federal agencies and regulated enterprises. Built and operated in the United States.</p>
      </div>
      <div><h4>Platform</h4><ul><li>IaaS</li><li>PaaS</li><li>Cloud Storage</li><li>Managed Hosting</li></ul></div>
      <div><h4>Company</h4><ul><li>About Us</li><li>Compliance</li><li>Careers</li><li>Partnerships</li></ul></div>
      <div><h4>Contact</h4><ul><li>Contact Sales</li><li>Support</li><li>1-800-AKIM-GOV</li><li>sales@akimtech.cloud</li></ul></div>
    </div>
    <div class="foot-bot"><span>© 2026 AkimTech Cloud. All rights reserved.</span><span>FedRAMP Authorized · SOC 2 Type II</span></div>
  </div>
</footer>
</body>
</html>
