<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>NexusShop — Modern E‑Commerce</title>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Space+Grotesk:wght@500;600;700&family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" crossorigin="anonymous">

<style>
/* ============================================================
   TOKENS
   ============================================================ */
:root{
  --bg:#07080a;
  --card:#12151a;
  --card-hi:#171b21;
  --line:rgba(255,255,255,.08);
  --line-strong:rgba(255,255,255,.16);
  --text:#f4f5f7;
  --muted:#8f96a3;
  --muted-dim:#5d646f;
  --accent:#d9ff4d;
  --accent-ink:#0b0d07;
  --violet:#8b7cff;
  --danger:#ff6b6b;
  --radius:22px;
  --radius-sm:14px;
  --t:.3s cubic-bezier(.4,0,.2,1);
}

/* ============================================================
   BASE
   ============================================================ */
*,*::before,*::after{box-sizing:border-box}
*{margin:0;padding:0}
html{scroll-behavior:smooth}
body{
  font-family:'Inter',system-ui,-apple-system,sans-serif;
  color:var(--text);
  line-height:1.55;
  -webkit-font-smoothing:antialiased;
  -moz-osx-font-smoothing:grayscale;
  overflow-x:hidden;
  background:
    radial-gradient(900px 620px at 88% -6%, rgba(217,255,77,.10), transparent 62%),
    radial-gradient(820px 620px at -8% 12%, rgba(139,124,255,.10), transparent 62%),
    var(--bg);
  background-attachment:fixed;
}
img{display:block;max-width:100%}
a{color:inherit;text-decoration:none}
button{font:inherit;color:inherit;background:none;border:0;cursor:pointer}
input{font:inherit}
ul{list-style:none}
::selection{background:var(--accent);color:var(--accent-ink)}

::-webkit-scrollbar{width:10px;height:8px}
::-webkit-scrollbar-track{background:#0b0d10}
::-webkit-scrollbar-thumb{background:#242830;border-radius:99px}
::-webkit-scrollbar-thumb:hover{background:#333944}

.container{width:min(1240px,100% - 48px);margin-inline:auto}
section{padding:76px 0}
[id]{scroll-margin-top:96px}

/* ============================================================
   TYPOGRAPHY HELPERS
   ============================================================ */
.display{font-family:'Space Grotesk',sans-serif;letter-spacing:-.03em;line-height:1.05;font-weight:700}
.eyebrow{
  font-size:12px;font-weight:700;letter-spacing:.18em;text-transform:uppercase;
  color:var(--accent);display:inline-flex;align-items:center;gap:8px;
}
.section-head{
  display:flex;align-items:flex-end;justify-content:space-between;
  gap:24px;flex-wrap:wrap;margin-bottom:34px;
}
.section-head h2{font-size:clamp(1.6rem,3vw,2.3rem)}
.section-head p{color:var(--muted);font-size:15px;margin-top:6px}
.link-more{
  display:inline-flex;align-items:center;gap:8px;font-weight:600;font-size:14px;
  color:var(--accent);transition:var(--t);white-space:nowrap;
}
.link-more:hover{gap:14px}

/* ============================================================
   BUTTONS
   ============================================================ */
.btn{
  display:inline-flex;align-items:center;justify-content:center;gap:10px;
  padding:14px 26px;border-radius:999px;font-weight:600;font-size:14.5px;
  border:1px solid transparent;transition:var(--t);white-space:nowrap;
}
.btn-accent{background:var(--accent);color:var(--accent-ink)}
.btn-accent:hover{transform:translateY(-2px);box-shadow:0 14px 34px rgba(217,255,77,.28)}
.btn-ghost{background:rgba(255,255,255,.05);border-color:var(--line-strong);color:var(--text)}
.btn-ghost:hover{background:rgba(255,255,255,.11);transform:translateY(-2px)}
.btn-sm{padding:10px 18px;font-size:13px}

/* ============================================================
   TICKER
   ============================================================ */
.ticker{
  background:var(--accent);color:var(--accent-ink);
  font-size:12.5px;font-weight:700;letter-spacing:.04em;
  overflow:hidden;white-space:nowrap;
}
.ticker-track{display:flex;width:max-content;animation:marquee 32s linear infinite}
.ticker-group{display:flex;gap:44px;padding:8px 22px 8px 0}
.ticker-group span{display:inline-flex;align-items:center;gap:8px}
@keyframes marquee{from{transform:translateX(0)}to{transform:translateX(-50%)}}

/* ============================================================
   HEADER
   ============================================================ */
.site-header{
  position:sticky;top:0;z-index:90;
  background:rgba(7,8,10,.75);
  backdrop-filter:blur(18px);-webkit-backdrop-filter:blur(18px);
  border-bottom:1px solid var(--line);
}
.header-inner{display:flex;align-items:center;gap:20px;height:72px}

.brand{display:flex;align-items:center;gap:11px;font-weight:700;font-size:19px;letter-spacing:-.02em;flex-shrink:0}
.brand-mark{
  width:38px;height:38px;border-radius:12px;display:grid;place-items:center;
  background:linear-gradient(140deg,var(--accent),#a8e02f);color:var(--accent-ink);
  font-size:17px;box-shadow:0 6px 20px rgba(217,255,77,.25);
}
.brand-name span{color:var(--accent)}

.nav{display:flex;gap:4px;margin-inline:auto}
.nav a{
  padding:9px 16px;border-radius:999px;font-size:14px;font-weight:500;
  color:var(--muted);transition:var(--t);
}
.nav a:hover{color:var(--text);background:rgba(255,255,255,.06)}

.header-right{display:flex;align-items:center;gap:10px;flex-shrink:0}

.search{
  display:flex;align-items:center;gap:10px;height:44px;padding:0 16px;
  border-radius:999px;background:rgba(255,255,255,.05);
  border:1px solid var(--line);transition:var(--t);width:min(260px,30vw);
}
.search:focus-within{border-color:rgba(217,255,77,.5);background:rgba(255,255,255,.08)}
.search i{color:var(--muted-dim);font-size:14px}
.search input{
  flex:1;background:none;border:0;outline:none;color:var(--text);
  font-size:14px;min-width:0;
}
.search input::placeholder{color:var(--muted-dim)}

.icon-btn{
  width:44px;height:44px;border-radius:50%;display:grid;place-items:center;
  color:var(--muted);font-size:17px;transition:var(--t);position:relative;
  border:1px solid transparent;
}
.icon-btn:hover{background:rgba(255,255,255,.07);color:var(--text);border-color:var(--line)}
.cart-badge{
  position:absolute;top:2px;right:2px;min-width:19px;height:19px;padding:0 4px;
  border-radius:999px;background:var(--accent);color:var(--accent-ink);
  font-size:11px;font-weight:700;display:grid;place-items:center;
  border:2px solid var(--bg);transition:transform .25s;
}
.menu-btn{display:none}

.mobile-nav{display:none;border-top:1px solid var(--line);background:rgba(7,8,10,.98)}
.mobile-nav.open{display:block}
.mobile-nav .inner{padding:14px 0 22px}
.mobile-nav a{
  display:flex;align-items:center;gap:14px;padding:14px 4px;
  border-bottom:1px solid var(--line);color:var(--muted);font-weight:500;font-size:15px;
}
.mobile-nav a:hover{color:var(--accent)}
.mobile-nav a i{width:20px;color:var(--muted-dim)}
.mobile-nav .search{width:100%;margin-bottom:14px}

/* ============================================================
   HERO
   ============================================================ */
.hero{padding:70px 0 60px}
.hero-grid{display:grid;grid-template-columns:1.02fr .98fr;gap:56px;align-items:center}

.hero h1{font-size:clamp(2.4rem,5.4vw,4.1rem);margin:20px 0 20px}
.hero h1 em{
  font-style:normal;color:var(--accent);
  position:relative;white-space:nowrap;
}
.hero h1 em::after{
  content:'';position:absolute;left:0;right:0;bottom:.06em;height:.10em;
  background:rgba(217,255,77,.22);border-radius:99px;z-index:-1;
}
.hero p.lede{color:var(--muted);font-size:17px;max-width:520px;margin-bottom:32px}
.hero-actions{display:flex;gap:12px;flex-wrap:wrap;margin-bottom:40px}

.hero-stats{display:flex;gap:38px;flex-wrap:wrap}
.hero-stats .stat strong{display:block;font-family:'Space Grotesk';font-size:26px;font-weight:700}
.hero-stats .stat span{font-size:13px;color:var(--muted)}

.hero-visual{position:relative}
.hero-card{
  position:relative;border-radius:28px;overflow:hidden;
  border:1px solid var(--line);background:var(--card);
  box-shadow:0 40px 90px rgba(0,0,0,.6);
}
.hero-card img{width:100%;aspect-ratio:4/4.2;object-fit:cover}
.hero-card::after{
  content:'';position:absolute;inset:0;
  background:linear-gradient(180deg,transparent 45%,rgba(7,8,10,.9));
}
.hero-card .caption{
  position:absolute;left:22px;right:22px;bottom:22px;z-index:2;
  display:flex;align-items:flex-end;justify-content:space-between;gap:16px;
}
.hero-card .caption h4{font-size:17px;font-weight:600}
.hero-card .caption .price{font-family:'Space Grotesk';font-size:24px;color:var(--accent)}
.hero-card .caption .sub{font-size:13px;color:var(--muted)}

.chip{
  position:absolute;z-index:3;display:flex;align-items:center;gap:10px;
  padding:11px 16px;border-radius:16px;font-size:13px;font-weight:600;
  background:rgba(18,21,26,.86);border:1px solid var(--line-strong);
  backdrop-filter:blur(12px);box-shadow:0 18px 40px rgba(0,0,0,.5);
}
.chip i{color:var(--accent)}
.chip.float-1{top:26px;left:-26px;animation:float 5s ease-in-out infinite}
.chip.float-2{top:52%;right:-24px;animation:float 6s ease-in-out infinite reverse}
@keyframes float{0%,100%{transform:translateY(0)}50%{transform:translateY(-12px)}}

/* ============================================================
   CATEGORIES
   ============================================================ */
.cat-grid{display:grid;grid-template-columns:repeat(6,1fr);gap:16px}
.cat-card{
  background:var(--card);border:1px solid var(--line);border-radius:var(--radius);
  padding:24px 16px;text-align:center;cursor:pointer;transition:var(--t);
}
.cat-card:hover{
  transform:translateY(-6px);border-color:rgba(217,255,77,.4);
  background:var(--card-hi);box-shadow:0 22px 50px rgba(0,0,0,.5);
}
.cat-card .ic{
  width:56px;height:56px;margin:0 auto 14px;border-radius:18px;display:grid;place-items:center;
  background:rgba(217,255,77,.10);color:var(--accent);font-size:21px;transition:var(--t);
}
.cat-card:hover .ic{background:var(--accent);color:var(--accent-ink)}
.cat-card h4{font-size:14.5px;font-weight:600}
.cat-card .count{font-size:12.5px;color:var(--muted);margin-top:3px}

/* ============================================================
   FILTERS + PRODUCTS
   ============================================================ */
.filters{display:flex;gap:8px;flex-wrap:wrap;margin-bottom:28px}
.chip-btn{
  padding:9px 18px;border-radius:999px;font-size:13.5px;font-weight:600;
  color:var(--muted);border:1px solid var(--line);background:rgba(255,255,255,.03);
  transition:var(--t);
}
.chip-btn:hover{color:var(--text);border-color:var(--line-strong)}
.chip-btn.active{background:var(--accent);color:var(--accent-ink);border-color:var(--accent)}

.product-grid{display:grid;grid-template-columns:repeat(4,1fr);gap:20px}

.product{
  background:var(--card);border:1px solid var(--line);border-radius:var(--radius);
  overflow:hidden;display:flex;flex-direction:column;transition:var(--t);
}
.product:hover{
  transform:translateY(-6px);border-color:rgba(217,255,77,.35);
  box-shadow:0 26px 60px rgba(0,0,0,.6);
}
.product .media{position:relative;aspect-ratio:1/1;background:#0d1014;overflow:hidden}
.product .media img{width:100%;height:100%;object-fit:cover;transition:transform .5s cubic-bezier(.4,0,.2,1)}
.product:hover .media img{transform:scale(1.06)}

.tag{
  position:absolute;top:12px;left:12px;padding:5px 12px;border-radius:999px;
  font-size:10.5px;font-weight:700;letter-spacing:.08em;text-transform:uppercase;
  background:var(--accent);color:var(--accent-ink);
}
.tag.sale{background:var(--violet);color:#fff}

.wish{
  position:absolute;top:10px;right:10px;width:36px;height:36px;border-radius:50%;
  display:grid;place-items:center;font-size:15px;color:var(--muted);
  background:rgba(10,12,15,.65);border:1px solid var(--line);
  backdrop-filter:blur(8px);transition:var(--t);
}
.wish:hover{color:var(--accent);transform:scale(1.08)}
.wish.active{color:var(--accent);border-color:rgba(217,255,77,.5);background:rgba(217,255,77,.12)}

.product .info{padding:16px 18px 6px;flex:1;display:flex;flex-direction:column;gap:7px}
.product .cat{font-size:11px;letter-spacing:.12em;text-transform:uppercase;color:var(--muted-dim);font-weight:700}
.product h3{font-size:15px;font-weight:600;line-height:1.35}
.product .rating{display:flex;align-items:center;gap:7px;font-size:12.5px;color:var(--muted)}
.product .rating .stars{color:var(--accent);letter-spacing:1px}
.product .prices{display:flex;align-items:baseline;gap:10px;margin-top:auto;padding-top:6px}
.product .price{font-family:'Space Grotesk';font-size:19px;font-weight:700}
.product .old{font-size:13.5px;color:var(--muted-dim);text-decoration:line-through}

.product .actions{padding:14px 18px 18px}
.add-btn{
  width:100%;padding:12px;border-radius:var(--radius-sm);
  background:rgba(255,255,255,.06);border:1px solid var(--line-strong);
  color:var(--text);font-weight:600;font-size:13.5px;transition:var(--t);
  display:flex;align-items:center;justify-content:center;gap:9px;
}
.add-btn:hover{background:var(--accent);color:var(--accent-ink);border-color:var(--accent)}
.add-btn.added{background:var(--accent);color:var(--accent-ink);border-color:var(--accent)}

.empty{
  grid-column:1/-1;text-align:center;padding:70px 20px;color:var(--muted);
  border:1px dashed var(--line-strong);border-radius:var(--radius);
}
.empty i{font-size:32px;display:block;margin-bottom:14px;color:var(--muted-dim)}

/* ============================================================
   DEAL
   ============================================================ */
.deal-card{
  display:grid;grid-template-columns:.92fr 1.08fr;
  background:linear-gradient(140deg,#141821,#0d1015);
  border:1px solid var(--line);border-radius:28px;overflow:hidden;
  box-shadow:0 30px 80px rgba(0,0,0,.5);
}
.deal-media{position:relative;min-height:360px;background:#0d1014}
.deal-media img{width:100%;height:100%;object-fit:cover;position:absolute;inset:0}
.deal-body{padding:52px 54px;display:flex;flex-direction:column;justify-content:center}
.deal-body .tag{align-self:flex-start;position:static;margin-bottom:16px}
.deal-body h3{font-size:clamp(1.6rem,3vw,2.2rem);margin-bottom:10px}
.deal-body .desc{color:var(--muted);margin-bottom:22px;max-width:440px}
.deal-price{font-family:'Space Grotesk';font-size:38px;font-weight:700;display:flex;align-items:baseline;gap:14px}
.deal-price .old{font-size:19px;font-weight:400;color:var(--muted-dim);text-decoration:line-through}

.countdown{display:flex;gap:12px;margin:24px 0 20px}
.cd-box{
  min-width:74px;padding:12px 10px;text-align:center;border-radius:16px;
  background:rgba(255,255,255,.05);border:1px solid var(--line);
}
.cd-box .num{font-family:'Space Grotesk';font-size:26px;font-weight:700;color:var(--accent);line-height:1.15}
.cd-box .lbl{font-size:10px;letter-spacing:.14em;text-transform:uppercase;color:var(--muted)}

.stock{margin-bottom:26px}
.stock .row{display:flex;justify-content:space-between;font-size:13px;color:var(--muted);margin-bottom:9px}
.stock .row strong{color:var(--accent)}
.bar{height:7px;border-radius:99px;background:rgba(255,255,255,.08);overflow:hidden}
.bar i{display:block;height:100%;width:24%;border-radius:99px;background:linear-gradient(90deg,var(--accent),#9fd62f)}

/* ============================================================
   TESTIMONIALS
   ============================================================ */
.reviews{display:flex;gap:20px;overflow-x:auto;padding:6px 4px 20px;scroll-snap-type:x mandatory}
.reviews::-webkit-scrollbar{height:4px}
.reviews::-webkit-scrollbar-thumb{background:#2a2f38}
.review{
  flex:0 0 350px;scroll-snap-align:start;
  background:var(--card);border:1px solid var(--line);border-radius:var(--radius);
  padding:26px;transition:var(--t);
}
.review:hover{border-color:rgba(217,255,77,.3);transform:translateY(-4px)}
.review .stars{color:var(--accent);letter-spacing:2px;font-size:15px;margin-bottom:14px}
.review blockquote{font-size:15px;color:#d8dbe1;line-height:1.65;margin-bottom:20px}
.review .who{display:flex;align-items:center;gap:12px}
.review .who img{width:44px;height:44px;border-radius:50%;object-fit:cover;border:1px solid var(--line)}
.review .who .name{font-size:14px;font-weight:600}
.review .who .role{font-size:12.5px;color:var(--muted)}

/* ============================================================
   NEWSLETTER
   ============================================================ */
.newsletter{
  background:linear-gradient(120deg,var(--accent),#b9ef3a);
  color:var(--accent-ink);border-radius:28px;padding:52px 56px;
  display:flex;align-items:center;justify-content:space-between;gap:40px;flex-wrap:wrap;
  position:relative;overflow:hidden;
}
.newsletter::after{
  content:'';position:absolute;right:-80px;top:-80px;width:280px;height:280px;
  border-radius:50%;background:rgba(255,255,255,.35);
}
.newsletter .txt{position:relative;z-index:1;max-width:440px}
.newsletter h3{font-family:'Space Grotesk';font-size:clamp(1.5rem,3vw,2rem);letter-spacing:-.02em;margin-bottom:8px}
.newsletter p{font-size:15px;opacity:.72}
.newsletter form{position:relative;z-index:1;display:flex;gap:10px;flex-wrap:wrap;flex:1;max-width:480px}
.newsletter input{
  flex:1;min-width:210px;padding:15px 22px;border-radius:999px;border:0;outline:none;
  background:rgba(11,13,7,.10);color:var(--accent-ink);font-size:15px;
  transition:var(--t);
}
.newsletter input::placeholder{color:rgba(11,13,7,.5)}
.newsletter input:focus{background:rgba(11,13,7,.16);box-shadow:0 0 0 3px rgba(11,13,7,.18)}
.newsletter .btn{background:#0b0d07;color:var(--accent);border:0}
.newsletter .btn:hover{transform:translateY(-2px);box-shadow:0 12px 26px rgba(11,13,7,.3)}
.form-msg{width:100%;font-size:13.5px;font-weight:600;min-height:18px}

/* ============================================================
   FOOTER
   ============================================================ */
footer{border-top:1px solid var(--line);padding:60px 0 30px;margin-top:20px}
.footer-grid{display:grid;grid-template-columns:2fr 1fr 1fr 1fr;gap:44px;margin-bottom:44px}
.footer-grid .about p{color:var(--muted);font-size:14px;max-width:300px;margin:16px 0 20px}
.socials{display:flex;gap:10px}
.socials a{
  width:40px;height:40px;border-radius:12px;display:grid;place-items:center;
  background:rgba(255,255,255,.05);border:1px solid var(--line);
  color:var(--muted);font-size:15px;transition:var(--t);
}
.socials a:hover{background:var(--accent);color:var(--accent-ink);border-color:var(--accent);transform:translateY(-3px)}
.footer-grid h5{font-size:13px;letter-spacing:.12em;text-transform:uppercase;color:var(--muted-dim);margin-bottom:16px;font-weight:700}
.footer-grid ul{display:flex;flex-direction:column;gap:10px}
.footer-grid ul a{color:var(--muted);font-size:14px;transition:var(--t)}
.footer-grid ul a:hover{color:var(--accent)}
.footer-bottom{
  border-top:1px solid var(--line);padding-top:22px;
  display:flex;justify-content:space-between;gap:16px;flex-wrap:wrap;
  color:var(--muted-dim);font-size:13px;
}

/* ============================================================
   CART DRAWER
   ============================================================ */
.overlay{
  position:fixed;inset:0;z-index:110;background:rgba(0,0,0,.65);
  backdrop-filter:blur(4px);opacity:0;visibility:hidden;transition:var(--t);
}
.overlay.show{opacity:1;visibility:visible}

.drawer{
  position:fixed;top:0;right:0;z-index:120;height:100%;width:min(410px,92vw);
  display:flex;flex-direction:column;background:#0b0d11;
  border-left:1px solid var(--line);box-shadow:-30px 0 80px rgba(0,0,0,.6);
  transform:translateX(101%);transition:transform .38s cubic-bezier(.4,0,.2,1);
}
.drawer.open{transform:none}
.drawer-head{
  display:flex;align-items:center;justify-content:space-between;
  padding:22px 24px;border-bottom:1px solid var(--line);
}
.drawer-head h3{font-family:'Space Grotesk';font-size:18px;letter-spacing:-.01em}
.drawer-head .close{
  width:38px;height:38px;border-radius:50%;display:grid;place-items:center;
  color:var(--muted);border:1px solid var(--line);transition:var(--t);
}
.drawer-head .close:hover{color:var(--text);background:rgba(255,255,255,.07)}
.drawer-body{flex:1;overflow-y:auto;padding:20px 24px;display:flex;flex-direction:column;gap:14px}
.drawer-foot{padding:22px 24px;border-top:1px solid var(--line);background:#090b0e}
.subtotal{display:flex;justify-content:space-between;align-items:baseline;margin-bottom:6px}
.subtotal span{color:var(--muted);font-size:14px}
.subtotal strong{font-family:'Space Grotesk';font-size:24px}
.ship-note{font-size:12.5px;color:var(--muted-dim);margin-bottom:16px}
.drawer-foot .btn{width:100%}

.cart-item{
  display:grid;grid-template-columns:66px 1fr auto;gap:14px;align-items:center;
  padding:12px;border-radius:16px;background:var(--card);border:1px solid var(--line);
}
.cart-item img{width:66px;height:66px;border-radius:12px;object-fit:cover}
.cart-item h5{font-size:14px;font-weight:600;line-height:1.3}
.cart-item .cp{font-size:13.5px;color:var(--accent);font-weight:600;margin-top:2px}
.qty{display:inline-flex;align-items:center;gap:8px;margin-top:8px;padding:3px 6px;border-radius:999px;border:1px solid var(--line)}
.qty button{width:22px;height:22px;border-radius:50%;display:grid;place-items:center;color:var(--muted);font-size:11px}
.qty button:hover{background:rgba(255,255,255,.1);color:var(--text)}
.qty span{font-size:13px;min-width:16px;text-align:center;font-weight:600}
.remove{color:var(--muted-dim);font-size:14px;padding:6px;transition:var(--t)}
.remove:hover{color:var(--danger)}

.cart-empty{text-align:center;padding:70px 20px;color:var(--muted)}
.cart-empty i{font-size:36px;display:block;margin-bottom:16px;color:var(--muted-dim)}

/* ============================================================
   TOAST
   ============================================================ */
.toast{
  position:fixed;left:50%;bottom:32px;z-index:200;
  transform:translate(-50%,140%);
  display:flex;align-items:center;gap:12px;
  padding:14px 22px;border-radius:999px;font-size:14px;font-weight:600;
  background:var(--accent);color:var(--accent-ink);
  box-shadow:0 20px 50px rgba(217,255,77,.25);
  transition:transform .4s cubic-bezier(.4,0,.2,1);
  max-width:calc(100vw - 40px);
}
.toast.show{transform:translate(-50%,0)}

/* ============================================================
   RESPONSIVE
   ============================================================ */
@media (max-width:1180px){
  .product-grid{grid-template-columns:repeat(3,1fr)}
  .cat-grid{grid-template-columns:repeat(3,1fr)}
  .footer-grid{grid-template-columns:1fr 1fr;gap:32px}
}
@media (max-width:1000px){
  .nav{display:none}
  .menu-btn{display:grid}
  .hero-grid{grid-template-columns:1fr;gap:56px}
  .hero-visual{max-width:520px;margin-inline:auto;width:100%}
  .chip.float-1{left:-12px}
  .chip.float-2{right:-12px}
  .deal-card{grid-template-columns:1fr}
  .deal-media{min-height:260px;position:relative}
  .deal-media img{position:relative;height:260px}
  .deal-body{padding:34px 30px}
  .newsletter{padding:38px 30px}
}
@media (max-width:820px){
  .search{display:none}
  .product-grid{grid-template-columns:repeat(2,1fr);gap:14px}
  .cat-grid{grid-template-columns:repeat(2,1fr);gap:12px}
  section{padding:56px 0}
  .hero{padding:44px 0 40px}
}
@media (max-width:560px){
  .container{width:calc(100% - 32px)}
  .header-inner{height:64px}
  .brand{font-size:17px}
  .brand-mark{width:34px;height:34px;font-size:15px;border-radius:10px}
  .icon-btn{width:38px;height:38px;font-size:15px}
  .hero h1{font-size:clamp(2rem,9vw,2.6rem)}
  .hero p.lede{font-size:15.5px}
  .hero-stats{gap:24px}
  .hero-stats .stat strong{font-size:21px}
  .chip{font-size:12px;padding:9px 13px}
  .product .info{padding:13px 13px 4px}
  .product h3{font-size:13.5px}
  .product .price{font-size:16px}
  .product .actions{padding:10px 13px 14px}
  .add-btn{font-size:12.5px;padding:10px}
  .cd-box{min-width:60px;padding:9px 6px}
  .cd-box .num{font-size:20px}
  .deal-price{font-size:29px}
  .newsletter{padding:30px 22px;border-radius:22px}
  .footer-grid{grid-template-columns:1fr}
  .review{flex:0 0 280px;padding:20px}
  .section-head{margin-bottom:26px}
}
</style>
</head>

<body id="top">

<!-- ================= TICKER ================= -->
<div class="ticker" aria-hidden="true">
  <div class="ticker-track">
    <div class="ticker-group">
      <span><i class="fas fa-truck-fast"></i> Free shipping over $75</span>
      <span><i class="fas fa-rotate-left"></i> 30‑day easy returns</span>
      <span><i class="fas fa-bolt"></i> Flash deals drop daily</span>
      <span><i class="fas fa-shield-halved"></i> Secure checkout</span>
    </div>
    <div class="ticker-group">
      <span><i class="fas fa-truck-fast"></i> Free shipping over $75</span>
      <span><i class="fas fa-rotate-left"></i> 30‑day easy returns</span>
      <span><i class="fas fa-bolt"></i> Flash deals drop daily</span>
      <span><i class="fas fa-shield-halved"></i> Secure checkout</span>
    </div>
  </div>
</div>

<!-- ================= HEADER ================= -->
<header class="site-header">
  <div class="container header-inner">
    <a class="brand" href="#top">
      <span class="brand-mark"><i class="fas fa-bolt"></i></span>
      <span class="brand-name">Nexus<span>Shop</span></span>
    </a>

    <nav class="nav" aria-label="Main navigation">
      <a href="#categories">Categories</a>
      <a href="#products">Trending</a>
      <a href="#deal">Deals</a>
      <a href="#reviews">Reviews</a>
    </nav>

    <div class="header-right">
      <label class="search">
        <i class="fas fa-search"></i>
        <input class="search-input" type="search" placeholder="Search products…" aria-label="Search products">
      </label>

      <button class="icon-btn" aria-label="Wishlist"><i class="far fa-heart"></i></button>

      <button class="icon-btn" id="cartBtn" aria-label="Open cart">
        <i class="fas fa-shopping-bag"></i>
        <span class="cart-badge" id="cartCount">0</span>
      </button>

      <button class="icon-btn menu-btn" id="menuToggle" aria-label="Toggle menu">
        <i class="fas fa-bars"></i>
      </button>
    </div>
  </div>

  <div class="mobile-nav" id="mobileNav">
    <div class="container inner">
      <label class="search">
        <i class="fas fa-search"></i>
        <input class="search-input" type="search" placeholder="Search products…" aria-label="Search products">
      </label>
      <a href="#categories"><i class="fas fa-th-large"></i> Categories</a>
      <a href="#products"><i class="fas fa-fire"></i> Trending</a>
      <a href="#deal"><i class="fas fa-tag"></i> Deals</a>
      <a href="#reviews"><i class="fas fa-star"></i> Reviews</a>
      <a href="#" data-cart-open><i class="fas fa-shopping-bag"></i> Cart</a>
    </div>
  </div>
</header>

<main>

  <!-- ================= HERO ================= -->
  <section class="hero">
    <div class="container hero-grid">
      <div>
        <span class="eyebrow"><i class="fas fa-circle" style="font-size:6px"></i> New Collection 2026</span>
        <h1 class="display">Premium gear, <em>honest prices.</em></h1>
        <p class="lede">Curated tech, fashion and accessories — hand‑picked, fairly priced, and delivered fast. Free shipping on your first order.</p>

        <div class="hero-actions">
          <button class="btn btn-accent" data-scroll="#products">Shop the drop <i class="fas fa-arrow-right"></i></button>
          <button class="btn btn-ghost" data-scroll="#deal"><i class="fas fa-bolt"></i> Today's deal</button>
        </div>

        <div class="hero-stats">
          <div class="stat"><strong>12k+</strong><span>Happy customers</span></div>
          <div class="stat"><strong>4.9</strong><span>Average rating</span></div>
          <div class="stat"><strong>48h</strong><span>Express delivery</span></div>
        </div>
      </div>

      <div class="hero-visual">
        <div class="chip float-1"><i class="fas fa-star"></i> 4.9 · 2.4k reviews</div>
        <div class="chip float-2"><i class="fas fa-truck-fast"></i> Free express shipping</div>

        <div class="hero-card">
          <img src="https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=900&q=80" alt="Wireless over-ear headphones">
          <div class="caption">
            <div>
              <h4>Sony WH‑1000XM5</h4>
              <div class="sub">Noise cancelling · 30h battery</div>
            </div>
            <div class="price">$399</div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- ================= CATEGORIES ================= -->
  <section id="categories">
    <div class="container">
      <div class="section-head">
        <div>
          <span class="eyebrow">Browse</span>
          <h2 class="display" style="margin-top:10px">Shop by category</h2>
          <p>Find exactly what you're looking for</p>
        </div>
        <a href="#products" class="link-more">All categories <i class="fas fa-arrow-right"></i></a>
      </div>
      <div class="cat-grid" id="categoriesGrid"></div>
    </div>
  </section>

  <!-- ================= PRODUCTS ================= -->
  <section id="products" style="padding-top:0">
    <div class="container">
      <div class="section-head">
        <div>
          <span class="eyebrow">Trending</span>
          <h2 class="display" style="margin-top:10px">Popular right now</h2>
          <p>What's hot — picked by our community</p>
        </div>
        <a href="#" class="link-more">View all <i class="fas fa-arrow-right"></i></a>
      </div>

      <div class="filters" id="filters"></div>
      <div class="product-grid" id="productsGrid" aria-live="polite"></div>
    </div>
  </section>

  <!-- ================= DEAL ================= -->
  <section id="deal" style="padding-top:0">
    <div class="container">
      <div class="deal-card">
        <div class="deal-media">
          <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=900&q=80" alt="MacBook Air M2" loading="lazy">
        </div>
        <div class="deal-body">
          <span class="tag"><i class="fas fa-bolt"></i> Flash deal</span>
          <h3 class="display">MacBook Air M2</h3>
          <p class="desc">Thin, light and absurdly powerful. The M2 chip redefines what a laptop can do — with 18 hours of battery.</p>

          <div class="deal-price">$999 <span class="old">$1,199</span></div>

          <div class="countdown" id="countdown">
            <div class="cd-box"><div class="num" id="cdD">0</div><div class="lbl">Days</div></div>
            <div class="cd-box"><div class="num" id="cdH">00</div><div class="lbl">Hours</div></div>
            <div class="cd-box"><div class="num" id="cdM">00</div><div class="lbl">Mins</div></div>
            <div class="cd-box"><div class="num" id="cdS">00</div><div class="lbl">Secs</div></div>
          </div>

          <div class="stock">
            <div class="row"><span>Almost gone</span><span>Only <strong>12</strong> left</span></div>
            <div class="bar"><i></i></div>
          </div>

          <button class="btn btn-accent" id="dealBtn" style="align-self:flex-start">
            <i class="fas fa-cart-plus"></i> Add to cart
          </button>
        </div>
      </div>
    </div>
  </section>

  <!-- ================= REVIEWS ================= -->
  <section id="reviews" style="padding-top:0">
    <div class="container">
      <div class="section-head">
        <div>
          <span class="eyebrow">Testimonials</span>
          <h2 class="display" style="margin-top:10px">Loved by 12,000+ shoppers</h2>
          <p>Real reviews from real customers</p>
        </div>
      </div>
      <div class="reviews" id="reviewsList"></div>
    </div>
  </section>

  <!-- ================= NEWSLETTER ================= -->
  <section style="padding-top:0">
    <div class="container">
      <div class="newsletter">
        <div class="txt">
          <h3>Get 10% off your first order</h3>
          <p>Exclusive drops, early access and members‑only pricing. No spam, ever.</p>
        </div>
        <form id="newsletterForm" novalidate>
          <input type="email" id="newsEmail" placeholder="you@example.com" aria-label="Email address" required>
          <button class="btn" type="submit"><i class="fas fa-paper-plane"></i> Subscribe</button>
          <div class="form-msg" id="newsMsg" role="status"></div>
        </form>
      </div>
    </div>
  </section>

</main>

<!-- ================= FOOTER ================= -->
<footer>
  <div class="container">
    <div class="footer-grid">
      <div class="about">
        <a class="brand" href="#top">
          <span class="brand-mark"><i class="fas fa-bolt"></i></span>
          <span class="brand-name">Nexus<span>Shop</span></span>
        </a>
        <p>Modern e‑commerce built with care. Quality products, fair prices, and a shopping experience that respects your time.</p>
        <div class="socials">
          <a href="#" aria-label="Facebook"><i class="fab fa-facebook-f"></i></a>
          <a href="#" aria-label="Twitter"><i class="fab fa-twitter"></i></a>
          <a href="#" aria-label="Instagram"><i class="fab fa-instagram"></i></a>
          <a href="#" aria-label="YouTube"><i class="fab fa-youtube"></i></a>
        </div>
      </div>

      <div>
        <h5>Company</h5>
        <ul>
          <li><a href="#">About</a></li>
          <li><a href="#">Careers</a></li>
          <li><a href="#">Press</a></li>
          <li><a href="#">Blog</a></li>
        </ul>
      </div>

      <div>
        <h5>Support</h5>
        <ul>
          <li><a href="#">Help center</a></li>
          <li><a href="#">Shipping</a></li>
          <li><a href="#">Returns</a></li>
          <li><a href="#">Contact</a></li>
        </ul>
      </div>

      <div>
        <h5>Legal</h5>
        <ul>
          <li><a href="#">Privacy</a></li>
          <li><a href="#">Terms</a></li>
          <li><a href="#">Cookies</a></li>
        </ul>
      </div>
    </div>

    <div class="footer-bottom">
      <span>&copy; <span id="year"></span> NexusShop. All rights reserved.</span>
      <span>Made for demo purposes.</span>
    </div>
  </div>
</footer>

<!-- ================= CART DRAWER ================= -->
<div class="overlay" id="overlay"></div>

<aside class="drawer" id="cartDrawer" aria-hidden="true" aria-label="Shopping cart">
  <div class="drawer-head">
    <h3>Your cart</h3>
    <button class="close" id="closeCart" aria-label="Close cart"><i class="fas fa-xmark"></i></button>
  </div>

  <div class="drawer-body" id="cartItems"></div>

  <div class="drawer-foot">
    <div class="subtotal">
      <span>Subtotal</span>
      <strong id="cartTotal">$0</strong>
    </div>
    <div class="ship-note" id="shipNote">Add $75 more for free shipping.</div>
    <button class="btn btn-accent" id="checkoutBtn"><i class="fas fa-lock"></i> Checkout</button>
  </div>
</aside>

<!-- ================= TOAST ================= -->
<div class="toast" id="toast" role="status" aria-live="polite"></div>

<script>
/* ============================================================
   DATA
   ============================================================ */
const CATEGORIES = [
  { id:'smartphones', name:'Smartphones', icon:'fa-mobile-screen-button', count:24 },
  { id:'laptops',     name:'Laptops',     icon:'fa-laptop',               count:18 },
  { id:'clothing',    name:'Clothing',    icon:'fa-shirt',                count:42 },
  { id:'gadgets',     name:'Gadgets',     icon:'fa-headphones',           count:31 },
  { id:'footwear',    name:'Footwear',    icon:'fa-shoe-prints',          count:27 },
  { id:'accessories', name:'Accessories', icon:'fa-watch',                count:39 }
];

const PRODUCTS = [
  { id:1, title:'iPhone 14 Pro Max', price:1099, oldPrice:1199, rating:5, reviews:128, badge:'New',
    cat:'Smartphones', img:'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=600&q=80' },
  { id:2, title:'MacBook Pro 14"', price:1999, rating:4, reviews:86, badge:'',
    cat:'Laptops', img:'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80' },
  { id:3, title:'Apple Watch Series 8', price:349, oldPrice:399, rating:5, reviews:214, badge:'Sale',
    cat:'Accessories', img:'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=600&q=80' },
  { id:4, title:'Nike Air Max 270', price:150, rating:4, reviews:53, badge:'',
    cat:'Footwear', img:'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=600&q=80' },
  { id:5, title:'Sony A7 IV Camera', price:2499, rating:5, reviews:42, badge:'New',
    cat:'Gadgets', img:'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=600&q=80' },
  { id:6, title:'Chanel No. 5 Eau de Parfum', price:120, rating:5, reviews:189, badge:'',
    cat:'Accessories', img:'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=600&q=80' },
  { id:7, title:'Minimal Travel Backpack', price:79, oldPrice:99, rating:4, reviews:67, badge:'Sale',
    cat:'Accessories', img:'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=600&q=80' },
  { id:8, title:'Sony WH‑1000XM5', price:399, rating:5, reviews:156, badge:'',
    cat:'Gadgets', img:'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=600&q=80' }
];

const REVIEWS = [
  { name:'Ava Martin', role:'Verified buyer', stars:5,
    avatar:'https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=80&q=80',
    text:'Fast shipping and excellent support. The product genuinely exceeded my expectations.' },
  { name:'Michael Lee', role:'Frequent shopper', stars:4,
    avatar:'https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=80&q=80',
    text:'Great selection and a smooth checkout. Will absolutely shop here again.' },
  { name:'Sophia Chen', role:'Product designer', stars:5,
    avatar:'https://images.unsplash.com/photo-1494790108378-be9c29b29330?auto=format&fit=crop&w=80&q=80',
    text:'Love the quality and the packaging. Everything arrived in perfect condition.' },
  { name:'James Wilson', role:'Tech enthusiast', stars:5,
    avatar:'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?auto=format&fit=crop&w=80&q=80',
    text:'Amazing prices on electronics. The M2 MacBook deal was unbeatable.' }
];

const FREE_SHIPPING_AT = 75;

/* ============================================================
   STATE
   ============================================================ */
const state = {
  query: '',
  cat: 'All',
  wishlist: new Set(),
  cart: []            // [{ id, qty }]
};

/* ============================================================
   DOM
   ============================================================ */
const $ = (sel) => document.querySelector(sel);
const categoriesGrid = $('#categoriesGrid');
const productsGrid   = $('#productsGrid');
const filtersEl      = $('#filters');
const reviewsList    = $('#reviewsList');
const cartCountEl    = $('#cartCount');
const cartItemsEl    = $('#cartItems');
const cartTotalEl    = $('#cartTotal');
const shipNoteEl     = $('#shipNote');
const drawer         = $('#cartDrawer');
const overlay        = $('#overlay');
const toastEl        = $('#toast');
const mobileNav      = $('#mobileNav');
const menuToggle     = $('#menuToggle');

/* ============================================================
   HELPERS
   ============================================================ */
const money = (n) => '$' + Number(n).toLocaleString('en-US');

function escapeHtml(str){
  return String(str).replace(/[&<>"']/g, s => (
    { '&':'&amp;', '<':'&lt;', '>':'&gt;', '"':'&quot;', "'":'&#39;' }[s]
  ));
}

function starRow(rating){
  const full = Math.round(rating);
  return '★'.repeat(full) + '☆'.repeat(5 - full);
}

let toastTimer;
function showToast(msg, icon = 'fa-check'){
  toastEl.innerHTML = `<i class="fas ${icon}"></i> <span>${escapeHtml(msg)}</span>`;
  toastEl.classList.add('show');
  clearTimeout(toastTimer);
  toastTimer = setTimeout(() => toastEl.classList.remove('show'), 2400);
}

/* ============================================================
   RENDER — CATEGORIES
   ============================================================ */
function renderCategories(){
  categoriesGrid.innerHTML = CATEGORIES.map(c => `
    <button class="cat-card" data-cat="${c.name}">
      <span class="ic"><i class="fas ${c.icon}"></i></span>
      <h4>${c.name}</h4>
      <div class="count">${c.count} items</div>
    </button>
  `).join('');

  categoriesGrid.querySelectorAll('.cat-card').forEach(card => {
    card.addEventListener('click', () => {
      state.cat = card.dataset.cat;
      state.query = '';
      document.querySelectorAll('.search-input').forEach(i => i.value = '');
      syncFilters();
      applyFilters();
      document.getElementById('products').scrollIntoView({ behavior:'smooth', block:'start' });
    });
  });
}

/* ============================================================
   RENDER — FILTER CHIPS
   ============================================================ */
function renderFilters(){
  const cats = ['All', ...new Set(PRODUCTS.map(p => p.cat))];
  filtersEl.innerHTML = cats.map(c =>
    `<button class="chip-btn ${c === state.cat ? 'active' : ''}" data-filter="${c}">${c}</button>`
  ).join('');

  filtersEl.querySelectorAll('.chip-btn').forEach(btn => {
    btn.addEventListener('click', () => {
      state.cat = btn.dataset.filter;
      syncFilters();
      applyFilters();
    });
  });
}
function syncFilters(){
  filtersEl.querySelectorAll('.chip-btn').forEach(b => {
    b.classList.toggle('active', b.dataset.filter === state.cat);
  });
}

/* ============================================================
   RENDER — PRODUCTS
   ============================================================ */
function renderProducts(list){
  if (!list.length){
    productsGrid.innerHTML = `
      <div class="empty">
        <i class="fas fa-magnifying-glass"></i>
        No products match your search. Try something else.
      </div>`;
    return;
  }

  productsGrid.innerHTML = list.map(p => {
    const wished = state.wishlist.has(p.id);
    const tagHtml = p.badge
      ? `<span class="tag ${p.badge === 'Sale' ? 'sale' : ''}">${p.badge}</span>` : '';
    const oldHtml = p.oldPrice ? `<span class="old">${money(p.oldPrice)}</span>` : '';

    return `
      <article class="product">
        <div class="media">
          <img src="${p.img}" alt="${escapeHtml(p.title)}" loading="lazy">
          ${tagHtml}
          <button class="wish ${wished ? 'active' : ''}" data-wish="${p.id}" aria-label="Toggle wishlist">
            <i class="${wished ? 'fas' : 'far'} fa-heart"></i>
          </button>
        </div>
        <div class="info">
          <div class="cat">${escapeHtml(p.cat)}</div>
          <h3>${escapeHtml(p.title)}</h3>
          <div class="rating">
            <span class="stars">${starRow(p.rating)}</span>
            <span>(${p.reviews})</span>
          </div>
          <div class="prices">
            <span class="price">${money(p.price)}</span>
            ${oldHtml}
          </div>
        </div>
        <div class="actions">
          <button class="add-btn" data-add="${p.id}">
            <i class="fas fa-cart-plus"></i> Add to cart
          </button>
        </div>
      </article>`;
  }).join('');

  // bind add buttons
  productsGrid.querySelectorAll('[data-add]').forEach(btn => {
    btn.addEventListener('click', () => {
      const id = Number(btn.dataset.add);
      addToCart(id);
      const original = btn.innerHTML;
      btn.classList.add('added');
      btn.innerHTML = '<i class="fas fa-check"></i> Added';
      setTimeout(() => {
        btn.classList.remove('added');
        btn.innerHTML = original;
      }, 1400);
    });
  });

  // bind wishlist buttons
  productsGrid.querySelectorAll('[data-wish]').forEach(btn => {
    btn.addEventListener('click', () => {
      const id = Number(btn.dataset.wish);
      if (state.wishlist.has(id)){
        state.wishlist.delete(id);
        btn.classList.remove('active');
        btn.innerHTML = '<i class="far fa-heart"></i>';
      } else {
        state.wishlist.add(id);
        btn.classList.add('active');
        btn.innerHTML = '<i class="fas fa-heart"></i>';
        showToast('Saved to wishlist', 'fa-heart');
      }
    });
  });
}

/* ============================================================
   RENDER — REVIEWS
   ============================================================ */
function renderReviews(){
  reviewsList.innerHTML = REVIEWS.map(r => `
    <article class="review">
      <div class="stars">${starRow(r.stars)}</div>
      <blockquote>“${escapeHtml(r.text)}”</blockquote>
      <div class="who">
        <img src="${r.avatar}" alt="${escapeHtml(r.name)}" loading="lazy">
        <div>
          <div class="name">${escapeHtml(r.name)}</div>
          <div class="role">${escapeHtml(r.role)}</div>
        </div>
      </div>
    </article>
  `).join('');
}

/* ============================================================
   FILTERING
   ============================================================ */
function applyFilters(){
  const q = state.query.trim().toLowerCase();
  const list = PRODUCTS.filter(p => {
    const matchesCat = state.cat === 'All' || p.cat === state.cat;
    const matchesQ = !q ||
      p.title.toLowerCase().includes(q) ||
      p.cat.toLowerCase().includes(q);
    return matchesCat && matchesQ;
  });
  renderProducts(list);
}

/* ============================================================
   CART
   ============================================================ */
function findProduct(id){ return PRODUCTS.find(p => p.id === id); }

function addToCart(id, qty = 1){
  const existing = state.cart.find(i => i.id === id);
  if (existing) existing.qty += qty;
  else state.cart.push({ id, qty });

  renderCart();
  bumpBadge();
  const p = findProduct(id);
  if (p) showToast(`${p.title} added to cart`, 'fa-cart-plus');
}

function changeQty(id, delta){
  const item = state.cart.find(i => i.id === id);
  if (!item) return;
  item.qty += delta;
  if (item.qty <= 0) state.cart = state.cart.filter(i => i.id !== id);
  renderCart();
}

function removeItem(id){
  state.cart = state.cart.filter(i => i.id !== id);
  renderCart();
}

function cartTotals(){
  const count = state.cart.reduce((sum, i) => sum + i.qty, 0);
  const subtotal = state.cart.reduce((sum, i) => {
    const p = findProduct(i.id);
    return sum + (p ? p.price * i.qty : 0);
  }, 0);
  return { count, subtotal };
}

function bumpBadge(){
  cartCountEl.style.transform = 'scale(1.35)';
  setTimeout(() => cartCountEl.style.transform = 'scale(1)', 220);
}

function renderCart(){
  const { count, subtotal } = cartTotals();

  cartCountEl.textContent = count;

  if (!state.cart.length){
    cartItemsEl.innerHTML = `
      <div class="cart-empty">
        <i class="fas fa-bag-shopping"></i>
        Your cart is empty.<br>Time to find something great.
      </div>`;
  } else {
    cartItemsEl.innerHTML = state.cart.map(item => {
      const p = findProduct(item.id);
      if (!p) return '';
      return `
        <div class="cart-item">
          <img src="${p.img}" alt="${escapeHtml(p.title)}" loading="lazy">
          <div>
            <h5>${escapeHtml(p.title)}</h5>
            <div class="cp">${money(p.price)}</div>
            <div class="qty">
              <button data-dec="${p.id}" aria-label="Decrease quantity"><i class="fas fa-minus"></i></button>
              <span>${item.qty}</span>
              <button data-inc="${p.id}" aria-label="Increase quantity"><i class="fas fa-plus"></i></button>
            </div>
          </div>
          <button class="remove" data-remove="${p.id}" aria-label="Remove item"><i class="fas fa-trash-can"></i></button>
        </div>`;
    }).join('');
  }

  cartTotalEl.textContent = money(subtotal);

  if (subtotal >= FREE_SHIPPING_AT || subtotal === 0){
    shipNoteEl.textContent = subtotal === 0
      ? 'Free shipping on orders over $75.'
      : '🎉 You’ve unlocked free shipping!';
  } else {
    shipNoteEl.textContent = `Add ${money(FREE_SHIPPING_AT - subtotal)} more for free shipping.`;
  }

  // bind row controls
  cartItemsEl.querySelectorAll('[data-inc]').forEach(b =>
    b.addEventListener('click', () => changeQty(Number(b.dataset.inc), 1)));
  cartItemsEl.querySelectorAll('[data-dec]').forEach(b =>
    b.addEventListener('click', () => changeQty(Number(b.dataset.dec), -1)));
  cartItemsEl.querySelectorAll('[data-remove]').forEach(b =>
    b.addEventListener('click', () => removeItem(Number(b.dataset.remove))));
}

/* ============================================================
   DRAWER OPEN / CLOSE
   ============================================================ */
function openCart(){
  drawer.classList.add('open');
  overlay.classList.add('show');
  drawer.setAttribute('aria-hidden', 'false');
  document.body.style.overflow = 'hidden';
}
function closeCart(){
  drawer.classList.remove('open');
  overlay.classList.remove('show');
  drawer.setAttribute('aria-hidden', 'true');
  document.body.style.overflow = '';
}

$('#cartBtn').addEventListener('click', openCart);
$('#closeCart').addEventListener('click', closeCart);
overlay.addEventListener('click', closeCart);
document.querySelectorAll('[data-cart-open]').forEach(b => {
  b.addEventListener('click', (e) => { e.preventDefault(); closeMobileNav(); openCart(); });
});
document.addEventListener('keydown', (e) => {
  if (e.key === 'Escape') closeCart();
});

$('#checkoutBtn').addEventListener('click', () => {
  const { count } = cartTotals();
  if (!count) return showToast('Your cart is empty', 'fa-circle-info');
  showToast('Checkout is disabled in this demo', 'fa-lock');
});

/* ============================================================
   COUNTDOWN
   ============================================================ */
(function countdown(){
  const target = Date.now() + ((24 * 60 + 36) * 60 * 1000); // 24h 36m from load
  const dEl = $('#cdD'), hEl = $('#cdH'), mEl = $('#cdM'), sEl = $('#cdS');

  function tick(){
    const diff = target - Date.now();
    if (diff <= 0){
      dEl.textContent = '0'; hEl.textContent = '00';
      mEl.textContent = '00'; sEl.textContent = '00';
      return;
    }
    const d = Math.floor(diff / 86400000);
    const h = Math.floor((diff % 86400000) / 3600000);
    const m = Math.floor((diff % 3600000) / 60000);
    const s = Math.floor((diff % 60000) / 1000);
    dEl.textContent = d;
    hEl.textContent = String(h).padStart(2, '0');
    mEl.textContent = String(m).padStart(2, '0');
    sEl.textContent = String(s).padStart(2, '0');
  }
  tick();
  setInterval(tick, 1000);
})();

/* ============================================================
   SEARCH
   ============================================================ */
document.querySelectorAll('.search-input').forEach(input => {
  input.addEventListener('input', (e) => {
    state.query = e.target.value;
    applyFilters();
  });
  input.addEventListener('keydown', (e) => {
    if (e.key === 'Enter'){
      e.preventDefault();
      document.getElementById('products').scrollIntoView({ behavior:'smooth', block:'start' });
      closeMobileNav();
    }
  });
});

/* ============================================================
   MOBILE NAV
   ============================================================ */
function closeMobileNav(){
  mobileNav.classList.remove('open');
  menuToggle.innerHTML = '<i class="fas fa-bars"></i>';
}
menuToggle.addEventListener('click', () => {
  const open = mobileNav.classList.toggle('open');
  menuToggle.innerHTML = open ? '<i class="fas fa-xmark"></i>' : '<i class="fas fa-bars"></i>';
});
mobileNav.querySelectorAll('a').forEach(a => a.addEventListener('click', closeMobileNav));

window.addEventListener('resize', () => {
  if (window.innerWidth > 1000) closeMobileNav();
});

/* ============================================================
   SMOOTH SCROLL BUTTONS
   ============================================================ */
document.querySelectorAll('[data-scroll]').forEach(btn => {
  btn.addEventListener('click', () => {
    const target = document.querySelector(btn.dataset.scroll);
    if (target) target.scrollIntoView({ behavior:'smooth', block:'start' });
  });
});

/* ============================================================
   DEAL BUTTON
   ============================================================ */
$('#dealBtn').addEventListener('click', function(){
  addToCart(2); // MacBook Pro stand-in for the deal
  const original = this.innerHTML;
  this.innerHTML = '<i class="fas fa-check"></i> Added to cart';
  setTimeout(() => { this.innerHTML = original; }, 1500);
});

/* ============================================================
   NEWSLETTER
   ============================================================ */
$('#newsletterForm').addEventListener('submit', (e) => {
  e.preventDefault();
  const input = $('#newsEmail');
  const msg = $('#newsMsg');
  const email = input.value.trim();

  if (!email || !/^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(email)){
    msg.textContent = 'Please enter a valid email address.';
    msg.style.color = '#7a1f1f';
    return;
  }
  msg.textContent = '🎉 You’re in! Check your inbox for 10% off.';
  msg.style.color = '#0b0d07';
  input.value = '';
  showToast('Subscribed successfully', 'fa-paper-plane');
  setTimeout(() => { msg.textContent = ''; }, 4000);
});

/* ============================================================
   INIT
   ============================================================ */
$('#year').textContent = new Date().getFullYear();

renderCategories();
renderFilters();
renderProducts(PRODUCTS);
renderReviews();
renderCart();

console.log('🚀 NexusShop redesign loaded.');
</script>
</body>
</html>
