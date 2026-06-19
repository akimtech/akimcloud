<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Compliance & Regulatory — AkimTech Cloud</title>
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
  .page-hero p.lead{font-size:19px;color:rgba(255,255,255,.82);max-width:640px}
  .crumbs{font-size:14px;color:rgba(255,255,255,.7);margin-top:20px}
  .crumbs a:hover{color:#fff}
  .crumbs span{margin:0 8px;opacity:.5}

  /* badge strip */
  .badges{position:relative;z-index:5;margin-top:-40px}
  .badges-in{background:#fff;border:1px solid var(--line);border-radius:18px;box-shadow:0 30px 60px -34px rgba(10,31,68,.45);display:grid;grid-template-columns:repeat(5,1fr)}
  .badges .b{padding:26px 24px;border-right:1px solid var(--line);text-align:center}
  .badges .b:last-child{border-right:0}
  .badges .t{font-family:"Manrope";font-weight:800;font-size:18px;color:var(--navy)}
  .badges .l{font-size:12.5px;color:var(--mut);margin-top:3px}

  /* sections */
  .sec{padding:96px 0}
  .sec-head{text-align:center;max-width:700px;margin:0 auto 56px}
  .sec-head .eyebrow{color:var(--royal)}
  .sec-head h2{font-size:42px;font-weight:800;color:var(--navy);line-height:1.04;margin:14px 0 16px}
  .sec-head p{font-size:18px;color:var(--mut)}

  /* domain cards */
  .cards{display:grid;grid-template-columns:repeat(3,1fr);gap:22px}
  .card{border-radius:18px;padding:34px 32px;background:var(--paper);border:1px solid transparent;transition:.22s;position:relative}
  .card:hover{background:#fff;border-color:var(--line);box-shadow:0 28px 56px -30px rgba(31,79,255,.4);transform:translateY(-4px)}
  .card .ic{width:50px;height:50px;border-radius:13px;background:var(--royal);display:grid;place-items:center;margin-bottom:18px}
  .card .ic svg{width:25px;height:25px;stroke:#fff;fill:none;stroke-width:2}
  .card h3{font-size:20px;font-weight:700;color:var(--navy);margin-bottom:6px}
  .card .auth{font-size:12.5px;color:var(--royal);font-weight:600;letter-spacing:.02em;margin-bottom:12px}
  .card ul{list-style:none}
  .card li{font-size:14.5px;color:var(--mut);padding-left:16px;position:relative;margin-bottom:7px}
  .card li:before{content:"";position:absolute;left:0;top:9px;width:6px;height:6px;border-radius:50%;background:var(--sky)}

  /* cross-cutting split */
  .split{background:var(--paper)}
  .split .wrap{display:grid;grid-template-columns:1fr 1fr;gap:60px;align-items:center;padding:96px 40px}
  .split h2{font-size:38px;font-weight:800;color:var(--navy);line-height:1.06;margin:14px 0 18px}
  .split p{font-size:17px;color:var(--mut);margin-bottom:24px;max-width:480px}
  .flist{list-style:none}
  .flist li{display:flex;gap:14px;align-items:flex-start;margin-bottom:18px;font-size:16px;color:var(--ink)}
  .flist .ck{width:26px;height:26px;border-radius:50%;background:var(--ice);color:var(--royal);display:grid;place-items:center;flex:none;font-weight:800;font-size:13px;margin-top:1px}
  .flist b{display:block;font-weight:700;color:var(--navy);margin-bottom:2px}
  .flist span.d{color:var(--mut);font-size:14.5px}
  /* role map card */
  .roles{position:relative;border-radius:18px;overflow:hidden;background:repeating-linear-gradient(135deg,#0c2655 0 14px,#0e2a5e 14px 28px);border:1px solid var(--line);box-shadow:0 30px 60px -34px rgba(10,31,68,.5);padding:38px 34px}
  .roles .ttl{font-family:"Manrope";font-weight:800;font-size:13px;letter-spacing:.12em;text-transform:uppercase;color:var(--sky);margin-bottom:20px}
  .roles .r{display:flex;align-items:center;gap:13px;color:#dce7ff;font-size:15px;font-weight:600;margin-bottom:14px}
  .roles .r .d{width:9px;height:9px;border-radius:50%;background:var(--sky);flex:none}
  .roles .r:last-child{margin-bottom:0}
  .roles .r span{color:#9db4e6;font-weight:500;font-size:13.5px}

  /* references */
  .refs{max-width:880px;margin:0 auto;display:grid;grid-template-columns:1fr 1fr;gap:12px 32px}
  .refs .ref{display:flex;gap:12px;align-items:flex-start;font-size:14.5px;color:var(--mut);padding:14px 0;border-bottom:1px solid var(--line)}
  .refs .ref b{color:var(--navy);font-weight:700}
  .refs .ref .n{font-family:"Manrope";font-weight:800;color:var(--sky);font-size:13px;flex:none}
  .note{max-width:760px;margin:40px auto 0;font-size:13.5px;color:var(--mut);text-align:center;font-style:italic;line-height:1.7}

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
    <div class="eyebrow">Compliance &amp; Regulatory</div>
    <h1>Built to the standards regulated missions depend on.</h1>
    <p class="lead">Our platform is governed by a layered compliance program spanning financial-crime, cybersecurity, federal information security, and privacy regimes — with the controls to demonstrate adherence.</p>
    <div class="crumbs"><a href="index.cfm">Home</a><span>/</span>Compliance</div>
  </div>
</section>

<!-- ===================== BADGE STRIP ===================== -->
<div class="badges">
  <div class="wrap">
    <div class="badges-in">
      <div class="b"><div class="t">BSA / AML</div><div class="l">Financial-crime controls</div></div>
      <div class="b"><div class="t">NIST CSF 2.0</div><div class="l">Cybersecurity baseline</div></div>
      <div class="b"><div class="t">FISMA</div><div class="l">Federal info security</div></div>
      <div class="b"><div class="t">Privacy Act</div><div class="l">5 U.S.C. § 552a</div></div>
      <div class="b"><div class="t">GLBA</div><div class="l">Data safeguards</div></div>
    </div>
  </div>
</div>

<!-- ===================== REGULATORY DOMAINS (cards) ===================== -->
<section class="sec">
  <div class="wrap">
    <div class="sec-head">
      <div class="eyebrow">Regulatory Domains</div>
      <h2>Five domains, one program.</h2>
      <p>Each domain has a governing authority, the obligations it imposes, and the controls we maintain to meet them.</p>
    </div>
    <div class="cards">
      <div class="card">
        <div class="ic"><svg viewBox="0 0 24 24"><path d="M3 21h18M5 21V10M19 21V10M3 10l9-6 9 6M9 14v3M15 14v3"/></svg></div>
        <h3>Bank Secrecy Act (BSA / AML)</h3>
        <div class="auth">31 U.S.C. § 5311 · FinCEN · AMLA 2020</div>
        <ul>
          <li>SAR &amp; CTR reporting workflows</li>
          <li>Customer Due Diligence / KYC</li>
          <li>The five AML program pillars</li>
        </ul>
      </div>
      <div class="card">
        <div class="ic"><svg viewBox="0 0 24 24"><path d="M12 3l8 3v6c0 5-3.5 8-8 9-4.5-1-8-4-8-9V6Z"/><path d="M9 12l2 2 4-4"/></svg></div>
        <h3>Cybersecurity</h3>
        <div class="auth">NIST CSF 2.0 · SP 800-53 · FFIEC</div>
        <ul>
          <li>Govern, Identify, Protect, Detect</li>
          <li>Respond &amp; Recover playbooks</li>
          <li>Encryption in transit and at rest</li>
        </ul>
      </div>
      <div class="card">
        <div class="ic"><svg viewBox="0 0 24 24"><rect x="3" y="4" width="18" height="16" rx="2"/><path d="M3 9h18M8 14h8"/></svg></div>
        <h3>FISMA</h3>
        <div class="auth">44 U.S.C. § 3551 · RMF · FIPS 199/200</div>
        <ul>
          <li>System categorization by impact</li>
          <li>Authorization to Operate (ATO)</li>
          <li>Continuous monitoring</li>
        </ul>
      </div>
      <div class="card">
        <div class="ic"><svg viewBox="0 0 24 24"><circle cx="12" cy="8" r="4"/><path d="M4 21c0-4 4-6 8-6s8 2 8 6"/></svg></div>
        <h3>Privacy Act of 1974</h3>
        <div class="auth">5 U.S.C. § 552a</div>
        <ul>
          <li>System of Records Notices (SORNs)</li>
          <li>Individual access &amp; amendment rights</li>
          <li>Disclosure restrictions &amp; accounting</li>
        </ul>
      </div>
      <div class="card">
        <div class="ic"><svg viewBox="0 0 24 24"><path d="M4 7c0-1.5 3.6-3 8-3s8 1.5 8 3-3.6 3-8 3-8-1.5-8-3Z"/><path d="M4 7v10c0 1.5 3.6 3 8 3s8-1.5 8-3V7"/></svg></div>
        <h3>Data Compliance</h3>
        <div class="auth">GLBA Safeguards · State privacy law</div>
        <ul>
          <li>Classification &amp; retention schedules</li>
          <li>Breach-notification obligations</li>
          <li>Vendor &amp; third-party controls</li>
        </ul>
      </div>
      <div class="card" style="background:var(--ink)">
        <div class="ic" style="background:var(--sky)"><svg viewBox="0 0 24 24" style="stroke:var(--navy)"><path d="M12 3v18M3 7l9-4 9 4M5 12h14"/></svg></div>
        <h3 style="color:#fff">Cross-Cutting Governance</h3>
        <div class="auth" style="color:var(--sky)">Where the five domains interlock</div>
        <ul>
          <li style="color:#aebfe0">Shared evidence &amp; chain-of-custody</li>
          <li style="color:#aebfe0">Coordinated compliance-officer roles</li>
          <li style="color:#aebfe0">Single escalation flow</li>
        </ul>
      </div>
    </div>
  </div>
</section>

<!-- ===================== CROSS-CUTTING GOVERNANCE (split) ===================== -->
<section class="split">
  <div class="wrap">
    <div>
      <div class="eyebrow" style="color:var(--royal)">Governance</div>
      <h2>The domains interlock, they don't silo.</h2>
      <p>One discipline of recordkeeping and one escalation path serve every regime at once — so a single incident is handled coherently across the program.</p>
      <ul class="flist">
        <li><span class="ck">✓</span><div><b>Shared evidence trail</b><span class="d">Chain-of-custody discipline serves BSA, FISMA, Privacy Act, and breach response simultaneously.</span></div></li>
        <li><span class="ck">✓</span><div><b>Coordinated role map</b><span class="d">BSA Officer, CISO, Privacy Officer, and Data Governance lead aligned on one response.</span></div></li>
        <li><span class="ck">✓</span><div><b>Single escalation flow</b><span class="d">Trigger → owner → reporting obligation, defined before an incident occurs.</span></div></li>
      </ul>
    </div>
    <div class="roles">
      <div class="ttl">Compliance role map</div>
      <div class="r"><span class="d"></span> BSA / AML Officer <span>· financial-crime reporting</span></div>
      <div class="r"><span class="d"></span> CISO <span>· security &amp; incident response</span></div>
      <div class="r"><span class="d"></span> Privacy Officer <span>· SORNs &amp; individual rights</span></div>
      <div class="r"><span class="d"></span> Data Governance Lead <span>· classification &amp; retention</span></div>
      <div class="r"><span class="d"></span> Compliance Owner <span>· program oversight</span></div>
    </div>
  </div>
</section>

<!-- ===================== REFERENCES ===================== -->
<section class="sec">
  <div class="wrap">
    <div class="sec-head">
      <div class="eyebrow">Authorities</div>
      <h2>Governing references.</h2>
      <p>The primary statutes and frameworks our program maps to.</p>
    </div>
    <div class="refs">
      <div class="ref"><span class="n">01</span><div><b>Bank Secrecy Act</b> — 31 U.S.C. § 5311 et seq.; 31 C.F.R. Chapter X</div></div>
      <div class="ref"><span class="n">02</span><div><b>Anti-Money Laundering Act of 2020</b></div></div>
      <div class="ref"><span class="n">03</span><div><b>NIST Cybersecurity Framework</b> — CSF 2.0</div></div>
      <div class="ref"><span class="n">04</span><div><b>NIST SP 800-53 / SP 800-37</b> — controls &amp; RMF</div></div>
      <div class="ref"><span class="n">05</span><div><b>FISMA 2014</b> — 44 U.S.C. § 3551; FIPS 199 / 200</div></div>
      <div class="ref"><span class="n">06</span><div><b>Privacy Act of 1974</b> — 5 U.S.C. § 552a</div></div>
      <div class="ref"><span class="n">07</span><div><b>Gramm-Leach-Bliley Act</b> — GLBA Safeguards Rule</div></div>
      <div class="ref"><span class="n">08</span><div><b>Applicable state privacy statutes</b></div></div>
    </div>
    <p class="note">Statutory citations and reporting thresholds are subject to change. Verify against primary sources before relying on this summary; this page is a high-level overview, not legal advice.</p>
  </div>
</section>

<!-- ===================== CTA ===================== -->
<section class="cta" style="padding-top:0">
  <div class="wrap">
    <div class="cta-box">
      <h2>Questions about our compliance posture?</h2>
      <p>Talk to our compliance team about how our controls map to your regulatory obligations.</p>
      <a class="btn btn-white" href="index.cfm#contact">Contact Sales →</a>
    </div>
  </div>
</section>
<!--- Footer --->
<cfinclude template="includes/footer.cfm">

</body>
</html>
