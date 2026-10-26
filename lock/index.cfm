<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>AkimTech Cloud — Restricted Access</title>
<script src="./vendor/react.js"></script>
<script src="./vendor/react-dom.js"></script>
<script src="./support.js"></script>
</head>
<body>
<x-dc>
<helmet>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&amp;display=swap" rel="stylesheet">
<style>
body{margin:0}
a{color:#2f5bff}a:hover{color:#1c3fd1}
.hero-bg{background-image:linear-gradient(160deg, rgba(16,24,72,0.92) 0%, rgba(20,32,96,0.78) 55%, rgba(16,24,72,0.94) 100%), url(./assets/30aa19fbbe711c85305915b20313646c.jpg);background-size:cover;background-position:center}
input:focus{outline:none;border-color:#2f5bff;box-shadow:0 0 0 3px rgba(47,91,255,0.18)}
button:focus-visible{outline:3px solid #9db4ff;outline-offset:2px}
</style>
</helmet>
<div style="min-height: 100vh; display: flex; flex-wrap: wrap; font-family: Inter, system-ui, sans-serif; color: #0f1733; background: #f4f6fb">

<section class="hero-bg" style="flex: 1 1 560px; min-height: 420px; box-sizing: border-box; padding: 48px 56px; display: flex; flex-direction: column; justify-content: space-between; gap: 48px; color: #ffffff">
<img src="./assets/b572c4aeffde5b161854985c9cabed02.png" alt="AkimTech Cloud" style="width: 260px; height: auto; display: block; border-radius: 10px">
<div style="display: flex; flex-direction: column; gap: 20px; max-width: 520px">
<div style="display: inline-flex; align-items: center; gap: 10px; align-self: flex-start; padding: 6px 14px; border-radius: 999px; background: rgba(255,255,255,0.12); border: 1px solid rgba(255,255,255,0.25); font-size: 13px; font-weight: 600; letter-spacing: 0.04em">
<svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="#9db4ff" stroke-width="2.2" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true"><path d="M12 3l8 3v6c0 4.5-3.4 8.4-8 9-4.6-.6-8-4.5-8-9V6l8-3z"></path></svg>
DEVELOPMENT ENVIRONMENT
</div>
<h1 style="margin: 0; font-size: 44px; line-height: 1.12; font-weight: 700; letter-spacing: -0.02em">Restricted access to AkimTech Cloud dev servers</h1>
<p style="margin: 0; font-size: 17px; line-height: 1.6; color: #d4dcff">This site is hosted on a protected development server. Sign in with your credentials and one-time passcode to continue to your requested page.</p>
</div>
<p style="margin: 0; font-size: 13px; color: #b9c5f5">© 2026 Akimtech, LLC · All activity is logged and monitored.</p>
</section>

<main style="flex: 1 1 480px; min-width: 0; box-sizing: border-box; padding: 48px 24px; display: flex; align-items: center; justify-content: center">
<form action="lock.cfm" method="post" style="width: 100%; max-width: 420px; box-sizing: border-box; background: #ffffff; border: 1px solid #e1e6f2; border-radius: 16px; padding: 40px; display: flex; flex-direction: column; gap: 22px; box-shadow: 0 12px 40px rgba(15,23,51,0.08)">
<div style="display: flex; flex-direction: column; gap: 8px">
<div style="width: 48px; height: 48px; border-radius: 12px; background: #e9eeff; display: flex; align-items: center; justify-content: center">
<svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="#2f5bff" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true"><rect x="4" y="11" width="16" height="10" rx="2"></rect><path d="M8 11V7a4 4 0 0 1 8 0v4"></path></svg>
</div>
<h2 style="margin: 8px 0 0; font-size: 26px; font-weight: 700; letter-spacing: -0.01em">Sign in to continue</h2>
<p style="margin: 0; font-size: 15px; line-height: 1.5; color: #4a5577">You’re requesting <strong style="color: #0f1733">dev.domain.com</strong></p>
</div>

<div style="display: flex; flex-direction: column; gap: 8px">
<label for="username" style="font-size: 14px; font-weight: 600; color: #1d2747">Username</label>
<input id="username" name="username" type="text" autocomplete="username" placeholder="Enter your username" style="height: 48px; box-sizing: border-box; padding: 0 14px; border: 1px solid #c9d1e4; border-radius: 10px; font: inherit; font-size: 15px; color: #0f1733; background: #ffffff">
</div>

<div style="display: flex; flex-direction: column; gap: 8px">
<label for="password" style="font-size: 14px; font-weight: 600; color: #1d2747">Password</label>
<input id="password" name="password" type="password" autocomplete="current-password" placeholder="Enter your password" style="height: 48px; box-sizing: border-box; padding: 0 14px; border: 1px solid #c9d1e4; border-radius: 10px; font: inherit; font-size: 15px; color: #0f1733; background: #ffffff">
</div>

<div style="display: flex; flex-direction: column; gap: 8px">
<label for="passcode" style="font-size: 14px; font-weight: 600; color: #1d2747">Passcode</label>
<input id="passcode" name="passcode" type="password" inputmode="numeric" autocomplete="one-time-code" maxlength="9" placeholder="9-digit passcode" style="height: 48px; box-sizing: border-box; padding: 0 14px; border: 1px solid #c9d1e4; border-radius: 10px; font: inherit; font-size: 18px; letter-spacing: 0.3em; color: #0f1733; background: #ffffff">
<span style="font-size: 13px; color: #5a6585">From your authenticator app or the code sent to you.</span>
</div>

<button type="submit" style="height: 50px; border: 0; border-radius: 10px; background: {{accent}}; color: #ffffff; font: inherit; font-size: 16px; font-weight: 600; cursor: pointer; display: flex; align-items: center; justify-content: center; gap: 10px">
Unlock access
<svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="#ffffff" stroke-width="2.2" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true"><path d="M5 12h14"></path><path d="M13 6l6 6-6 6"></path></svg>
</button>

<p style="margin: 0; font-size: 13px; line-height: 1.5; color: #5a6585; text-align: center">Need access? Contact <a href="mailto:serverteam@akimtechcloud.com">ServerTeam@akimtechcloud.com</a></p>
</form>
</main>
</div>
</x-dc>
<script type="text/x-dc" data-dc-script data-props='{"accent":{"editor":"color","default":"#2f5bff","options":["#2f5bff","#1a2560","#3b6cf6"]},"$preview":{"width":1440,"height":900}}'>
class Component extends DCLogic {
renderVals() {
return { accent: this.props.accent ?? '#2f5bff' };
}
}
</script>
</body>
</html>
