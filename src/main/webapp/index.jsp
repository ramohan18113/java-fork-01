<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>NexusShop — Modern E‑Commerce</title>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Fraunces:opsz,wght@9..144,500;9..144,600;9..144,700&family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" crossorigin="anonymous">

<style>
/* ============================================================
   TOKENS — CREAM & PINK
   ============================================================ */
:root{
  --bg:#fdf6f1;
  --bg-soft:#fbece7;
  --card:#ffffff;
  --card-warm:#fffaf7;
  --line:#f0ddd5;
  --line-strong:#e6c9bd;

  --text:#3d2b30;
  --muted:#8a7076;
  --muted-dim:#b8a3a6;

  --pink:#f4a6b8;
  --pink-deep:#e0748d;
  --pink-soft:#fde4ea;
  --rose:#d96a84;
  --blush:#fff0f3;

  --peach:#f8c8a8;
  --cream:#fff6e9;
  --gold:#e8b96a;
  --mint:#a8d5c4;

  --radius:24px;
  --radius-sm:16px;
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
  line-height:1.6;
  -webkit-font-smoothing:antialiased;
  -moz-osx-font-smoothing:grayscale;
  overflow-x:hidden;
  background:
    radial-gradient(900px 600px at 92% -10%, rgba(244,166,184,.22), transparent 60%),
    radial-gradient(800px 600px at -8% 14%, rgba(248,200,168,.20), transparent 60%),
    radial-gradient(700px 500px at 50% 100%, rgba(253,228,234,.5), transparent 70%),
    var(--bg);
  background-attachment:fixed;
}
img{display:block;max-width:100%}
a{color:inherit;text-decoration:none}
button{font:inherit;color:inherit;background:none;border:0;cursor:pointer}
input{font:inherit}
ul{list-style:none}
::selection{background:var(--pink);color:#fff}

::-webkit-scrollbar{width:10px;height:8px}
::-webkit-scrollbar-track{background:#fbece7}
::-webkit-scrollbar-thumb{background:var(--line-strong);border-radius:99px}
::-webkit-scrollbar-thumb:hover{background:var(--pink)}

.container{width:min(1240px,100% - 48px);margin-inline:auto}
section{padding:80px 0}
[id]{scroll-margin-top:100px}

/* ============================================================
   TYPOGRAPHY
   ============================================================ */
.display{
  font-family:'Fraunces',serif;
  font-weight:600;
  letter-spacing:-.01em;
  line-height:1.1;
}
.eyebrow{
  font-size:12px;font-weight:700;letter-spacing:.2em;text-transform:uppercase;
  color:var(--pink-deep);display:inline-flex;align-items:center;gap:10px;
}
.eyebrow::before{
  content:'';width:24px;height:1.5px;background:var(--pink);
  display:inline-block;
}
.section-head{
  display:flex;align-items:flex-end;justify-content:space-between;
  gap:24px;flex-wrap:wrap;margin-bottom:38px;
}
.section-head h2{font-size:clamp(1.8rem,3.2vw,2.6rem);color:var(--text)}
.section-head p{color:var(--muted);font-size:15px;margin-top:8px}
.link-more{
  display:inline-flex;align-items:center;gap:10px;font-weight:600;font-size:14px;
  color:var(--pink-deep);transition:var(--t);white-space:nowrap;
  padding-bottom:2px;border-bottom:1.5px solid transparent;
}
.link-more:hover{gap:16px;border-bottom-color:var(--pink-deep)}

/* ============================================================
   BUTTONS
   ============================================================ */
.btn{
  display:inline-flex;align-items:center;justify-content:center;gap:10px;
  padding:15px 30px;border-radius:999px;font-weight:600;font-size:14.5px;
  border:1.5px solid transparent;transition:var(--t);white-space:nowrap;
  font-family:inherit;
}
.btn-pink{
  background:var(--pink-deep);color:#fff;border-color:var(--pink-deep);
  box-shadow:0 10px 24px rgba(224,116,141,.28);
}
.btn-pink:hover{
  background:var(--rose);border-color:var(--rose);
  transform:translateY(-2px);box-shadow:0 16px 34px rgba(217,106,132,.38);
}
.btn-cream{
  background:#fff;color:var(--text);border-color:var(--line-strong);
  box-shadow:0 4px 14px rgba(61,43,48,.05);
}
.btn-cream:hover{
  background:var(--blush);border-color:var(--pink);
  transform:translateY(-2px);box-shadow:0 12px 26px rgba(224,116,141,.16);
}
.btn-soft{
  background:var(--pink-soft);color:var(--pink-deep);border-color:transparent;
}
.btn-soft:hover{background:var(--pink);color:#fff;transform:translateY(-2px)}

/* ============================================================
   TICKER
   ============================================================ */
.ticker{
  background:linear-gradient(90deg,var(--pink-soft),var(--peach),var(--pink-soft));
  color:var(--rose);
  font-size:12.5px;font-weight:600;letter-spacing:.04em;
  overflow:hidden;white-space:nowrap;
  border-bottom:1px solid var(--line);
}
.ticker-track{display:flex;width:max-content;animation:marquee 34s linear infinite}
.ticker-group{display:flex;gap:52px;padding:10px 26px 10px 0}
.ticker-group span{display:inline-flex;align-items:center;gap:9px}
.ticker-group i{color:var(--pink-deep)}
@keyframes marquee{from{transform:translateX(0)}to{transform:translateX(-50%)}}

/* ============================================================
   HEADER
   ============================================================ */
.site-header{
  position:sticky;top:0;z-index:90;
  background:rgba(253,246,241,.82);
  backdrop-filter:blur(18px);-webkit-backdrop-filter:blur(18px);
  border-bottom:1px solid var(--line);
}
.header-inner{display:flex;align-items:center;gap:20px;height:76px}

.brand{
  display:flex;align-items:center;gap:12px;
  font-family:'Fraunces',serif;font-weight:600;font-size:22px;
  letter-spacing:-.01em;flex-shrink:0;color:var(--text);
}
.brand-mark{
  width:40px;height:40px;border-radius:14px;display:grid;place-items:center;
  background:linear-gradient(140deg,var(--pink),var(--peach));
  color:#fff;font-size:17px;
  box-shadow:0 8px 20px rgba(224,116,141,.28);
  transform:rotate(-6deg);
}
.brand-name span{color:var(--pink-deep)}

.nav{display:flex;gap:2px;margin-inline:auto}
.nav a{
  padding:10px 18px;border-radius:999px;font-size:14px;font-weight:500;
  color:var(--muted);transition:var(--t);position:relative;
}
.nav a:hover{color:var(--pink-deep);background:var(--blush)}

.header-right{display:flex;align-items:center;gap:10px;flex-shrink:0}

.search{
  display:flex;align-items:center;gap:10px;height:46px;padding:0 18px;
  border-radius:999px;background:#fff;
  border:1.5px solid var(--line);transition:var(--t);width:min(260px,30vw);
  box-shadow:0 2px 8px rgba(61,43,48,.03);
}
.search:focus-within{border-color:var(--pink);box-shadow:0 0 0 4px rgba(244,166,184,.18)}
.search i{color:var(--muted-dim);font-size:14px}
.search input{
  flex:1;background:none;border:0;outline:none;color:var(--text);
  font-size:14px;min-width:0;
}
.search input::placeholder{color:var(--muted-dim)}

.icon-btn{
  width:46px;height:46px;border-radius:50%;display:grid;place-items:center;
  color:var(--muted);font-size:17px;transition:var(--t);position:relative;
  border:1.5px solid var(--line);background:#fff;
  box-shadow:0 2px 8px rgba(61,43,48,.03);
}
.icon-btn:hover{
  color:var(--pink-deep);border-color:var(--pink);
  background:var(--blush);transform:translateY(-2px);
}
.cart-badge{
  position:absolute;top:-4px;right:-4px;min-width:21px;height:21px;padding:0 5px;
  border-radius:999px;background:var(--pink-deep);color:#fff;
  font-size:11px;font-weight:700;display:grid;place-items:center;
  border:2px solid var(--bg);transition:transform .25s;
  box-shadow:0 3px 8px rgba(224,116,141,.4);
}
.menu-btn{display:none}

.mobile-nav{display:none;border-top:1px solid var(--line);background:var(--bg)}
.mobile-nav.open{display:block}
.mobile-nav .inner{padding:16px 0 24px}
.mobile-nav a{
  display:flex;align-items:center;gap:14px;padding:15px 4px;
  border-bottom:1px solid var(--line);color:var(--muted);font-weight:500;font-size:15px;
}
.mobile-nav a:hover{color:var(--pink-deep)}
.mobile-nav a i{width:20px;color:var(--pink)}
.mobile-nav .search{width:100%;margin-bottom:16px}

/* ============================================================
   HERO
   ============================================================ */
.hero{padding:72px 0 60px}
.hero-grid{display:grid;grid-template-columns:1.05fr .95fr;gap:64px;align-items:center}

.hero h1{font-size:clamp(2.5rem,5.6vw,4.3rem);margin:22px 0 22px;color:var(--text)}
.hero h1 em{
  font-style:italic;color:var(--pink-deep);
  position:relative;font-weight:700;
}
.hero h1 em::after{
  content:'';position:absolute;left:0;right:0;bottom:.02em;height:.24em;
  background:rgba(244,166,184,.35);border-radius:99px;z-index:-1;
}
.hero p.lede{color:var(--muted);font-size:17px;max-width:520px;margin-bottom:34px}
.hero-actions{display:flex;gap:12px;flex-wrap:wrap;margin-bottom:44px}

.hero-stats{display:flex;gap:42px;flex-wrap:wrap}
.hero-stats .stat strong{
  display:block;font-family:'Fraunces',serif;font-size:30px;font-weight:600;
  color:var(--pink-deep);letter-spacing:-.02em;
}
.hero-stats .stat span{font-size:13px;color:var(--muted)}

.hero-visual{position:relative}
.hero-card{
  position:relative;border-radius:32px;overflow:hidden;
  border:1px solid var(--line);background:var(--card);
  box-shadow:0 40px 90px rgba(217,106,132,.18);
}
.hero-card img{width:100%;aspect-ratio:4/4.4;object-fit:cover}
.hero-card::after{
  content:'';position:absolute;inset:0;
  background:linear-gradient(180deg,transparent 50%,rgba(61,43,48,.72));
}
.hero-card .caption{
  position:absolute;left:26px;right:26px;bottom:26px;z-index:2;
  display:flex;align-items:flex-end;justify-content:space-between;gap:16px;color:#fff;
}
.hero-card .caption h4{
  font-family:'Fraunces',serif;font-size:19px;font-weight:600;letter-spacing:-.01em;
}
.hero-card .caption .price{
  font-family:'Fraunces',serif;font-size:26px;font-weight:600;color:var(--peach);
}
.hero-card .caption .sub{font-size:13px;color:rgba(255,255,255,.75);margin-top:2px}

.chip{
  position:absolute;z-index:3;display:flex;align-items:center;gap:10px;
  padding:12px 18px;border-radius:18px;font-size:13px;font-weight:600;
  background:rgba(255,255,255,.94);border:1px solid var(--line);
  backdrop-filter:blur(12px);
  box-shadow:0 18px 40px rgba(61,43,48,.12);color:var(--text);
}
.chip i{color:var(--pink-deep)}
.chip.float-1{top:30px;left:-28px;animation:float 5s ease-in-out infinite}
.chip.float-2{top:52%;right:-26px;animation:float 6s ease-in-out infinite reverse}
@keyframes float{0%,100%{transform:translateY(0)}50%{transform:translateY(-14px)}}

/* ============================================================
   CATEGORIES
   ============================================================ */
.cat-grid{display:grid;grid-template-columns:repeat(6,1fr);gap:16px}
.cat-card{
  background:var(--card);border:1px solid var(--line);border-radius:var(--radius);
  padding:28px 16px;text-align:center;cursor:pointer;transition:var(--t);
  position:relative;overflow:hidden;
}
.cat-card::before{
  content:'';position:absolute;inset:0;
  background:linear-gradient(160deg,var(--blush),transparent 65%);
  opacity:0;transition:var(--t);
}
.cat-card:hover{
  transform:translateY(-6px);border-color:var(--pink);
  box-shadow:0 22px 50px rgba(224,116,141,.16);
}
.cat-card:hover::before{opacity:1}
.cat-card .ic{
  position:relative;z-index:1;
  width:60px;height:60px;margin:0 auto 16px;border-radius:20px;display:grid;place-items:center;
  background:var(--pink-soft);color:var(--pink-deep);font-size:22px;transition:var(--t);
  transform:rotate(-3deg);
}
.cat-card:hover .ic{
  background:linear-gradient(140deg,var(--pink),var(--peach));
  color:#fff;transform:rotate(3deg) scale(1.06);
  box-shadow:0 8px 20px rgba(224,116,141,.3);
}
.cat-card h4{position:relative;z-index:1;font-size:15px;font-weight:600;font-family:'Fraunces',serif;letter-spacing:-.01em}
.cat-card .count{position:relative;z-index:1;font-size:12.5px;color:var(--muted);margin-top:4px}

/* ============================================================
   FILTERS + PRODUCTS
   ============================================================ */
.filters{display:flex;gap:10px;flex-wrap:wrap;margin-bottom:30px}
.chip-btn{
  padding:10px 20px;border-radius:999px;font-size:13.5px;font-weight:600;
  color:var(--muted);border:1.5px solid var(--line);background:#fff;
  transition:var(--t);
}
.chip-btn:hover{color:var(--pink-deep);border-color:var(--pink)}
.chip-btn.active{
  background:var(--pink-deep);color:#fff;border-color:var(--pink-deep);
  box-shadow:0 8px 18px rgba(224,116,141,.3);
}

.product-grid{display:grid;grid-template-columns:repeat(4,1fr);gap:22px}

.product{
  background:var(--card);border:1px solid var(--line);border-radius:var(--radius);
  overflow:hidden;display:flex;flex-direction:column;transition:var(--t);
  position:relative;
}
.product:hover{
  transform:translateY(-6px);border-color:var(--pink);
  box-shadow:0 26px 60px rgba(224,116,141,.16);
}
.product .media{position:relative;aspect-ratio:1/1;background:var(--cream);overflow:hidden}
.product .media img{width:100%;height:100%;object-fit:cover;transition:transform .55s cubic-bezier(.4,0,.2,1)}
.product:hover .media img{transform:scale(1.07)}

.tag{
  position:absolute;top:14px;left:14px;padding:6px 14px;border-radius:999px;
  font-size:10.5px;font-weight:700;letter-spacing:.1em;text-transform:uppercase;
  background:var(--pink-deep);color:#fff;
  box-shadow:0 4px 12px rgba(224,116,141,.3);
}
.tag.sale{background:var(--gold);color:#fff;box-shadow:0 4px 12px rgba(232,185,106,.35)}

.wish{
  position:absolute;top:12px;right:12px;width:38px;height:38px;border-radius:50%;
  display:grid;place-items:center;font-size:15px;color:var(--muted);
  background:rgba(255,255,255,.94);border:1px solid var(--line);
  backdrop-filter:blur(8px);transition:var(--t);
}
.wish:hover{color:var(--pink-deep);transform:scale(1.1);border-color:var(--pink)}
.wish.active{
  color:var(--pink-deep);border-color:var(--pink);
  background:var(--blush);
}

.product .info{padding:18px 20px 8px;flex:1;display:flex;flex-direction:column;gap:8px}
.product .cat{
  font-size:11px;letter-spacing:.14em;text-transform:uppercase;
  color:var(--pink-deep);font-weight:700;
}
.product h3{
  font-family:'Fraunces',serif;font-size:16px;font-weight:600;
  line-height:1.35;letter-spacing:-.01em;
}
.product .rating{display:flex;align-items:center;gap:8px;font-size:12.5px;color:var(--muted)}
.product .rating .stars{color:var(--gold);letter-spacing:1px;font-size:13px}
.product .prices{display:flex;align-items:baseline;gap:10px;margin-top:auto;padding-top:8px}
.product .price{
  font-family:'Fraunces',serif;font-size:22px;font-weight:600;color:var(--text);
}
.product .old{font-size:13.5px;color:var(--muted-dim);text-decoration:line-through}

.product .actions{padding:16px 20px 20px}
.add-btn{
  width:100%;padding:13px;border-radius:var(--radius-sm);
  background:var(--blush);border:1.5px solid var(--pink-soft);
  color:var(--pink-deep);font-weight:600;font-size:13.5px;transition:var(--t);
  display:flex;align-items:center;justify-content:center;gap:9px;
}
.add-btn:hover{
  background:var(--pink-deep);color:#fff;border-color:var(--pink-deep);
  transform:translateY(-2px);box-shadow:0 10px 22px rgba(224,116,141,.28);
}
.add-btn.added{background:var(--mint);color:#fff;border-color:var(--mint)}

.empty{
  grid-column:1/-1;text-align:center;padding:80px 20px;color:var(--muted);
  border:2px dashed var(--line-strong);border-radius:var(--radius);
  background:var(--card-warm);
}
.empty i{font-size:36px;display:block;margin-bottom:16px;color:var(--pink)}

/* ============================================================
   DEAL
   ============================================================ */
.deal-card{
  display:grid;grid-template-columns:.92fr 1.08fr;
  background:linear-gradient(145deg,var(--blush),var(--cream));
  border:1px solid var(--line-strong);border-radius:32px;overflow:hidden;
  box-shadow:0 30px 80px rgba(224,116,141,.14);
}
.deal-media{position:relative;min-height:380px;background:var(--cream)}
.deal-media img{width:100%;height:100%;object-fit:cover;position:absolute;inset:0}
.deal-body{padding:56px 58px;display:flex;flex-direction:column;justify-content:center}
.deal-body .tag{align-self:flex-start;position:static;margin-bottom:18px}
.deal-body h3{
  font-family:'Fraunces',serif;font-size:clamp(1.8rem,3.2vw,2.4rem);
  margin-bottom:12px;letter-spacing:-.01em;
}
.deal-body .desc{color:var(--muted);margin-bottom:24px;max-width:440px}
.deal-price{
  font-family:'Fraunces',serif;font-size:42px;font-weight:600;
  display:flex;align-items:baseline;gap:14px;color:var(--pink-deep);
  letter-spacing:-.02em;
}
.deal-price .old{
  font-size:20px;font-weight:400;color:var(--muted-dim);
  text-decoration:line-through;
}

.countdown{display:flex;gap:12px;margin:26px 0 22px}
.cd-box{
  min-width:78px;padding:14px 10px;text-align:center;border-radius:18px;
  background:#fff;border:1.5px solid var(--line-strong);
  box-shadow:0 6px 16px rgba(61,43,48,.06);
}
.cd-box .num{
  font-family:'Fraunces',serif;font-size:28px;font-weight:600;
  color:var(--pink-deep);line-height:1.15;
}
.cd-box .lbl{
  font-size:10px;letter-spacing:.16em;text-transform:uppercase;
  color:var(--muted);font-weight:600;
}

.stock{margin-bottom:28px}
.stock .row{display:flex;justify-content:space-between;font-size:13px;color:var(--muted);margin-bottom:10px}
.stock .row strong{color:var(--pink-deep)}
.bar{height:8px;border-radius:99px;background:rgba(224,116,141,.14);overflow:hidden}
.bar i{
  display:block;height:100%;width:24%;border-radius:99px;
  background:linear-gradient(90deg,var(--pink),var(--pink-deep));
  box-shadow:0 0 12px rgba(224,116,141,.5);
}

/* ============================================================
   REVIEWS
   ============================================================ */
.reviews{
  display:flex;gap:22px;overflow-x:auto;padding:8px 4px 22px;
  scroll-snap-type:x mandatory;
}
.reviews::-webkit-scrollbar{height:5px}
.reviews::-webkit-scrollbar-thumb{background:var(--line-strong);border-radius:99px}
.review{
  flex:0 0 360px;scroll-snap-align:start;
  background:var(--card);border:1px solid var(--line);border-radius:var(--radius);
  padding:30px;transition:var(--t);position:relative;
}
.review::before{
  content:'"';position:absolute;top:8px;right:24px;
  font-family:'Fraunces',serif;font-size:80px;line-height:1;
  color:var(--pink-soft);font-weight:700;
}
.review:hover{
  border-color:var(--pink);transform:translateY(-4px);
  box-shadow:0 22px 50px rgba(224,116,141,.14);
}
.review .stars{color:var(--gold);letter-spacing:2px;font-size:16px;margin-bottom:16px}
.review blockquote{
  font-size:15px;color:var(--text);line-height:1.7;margin-bottom:22px;
  font-family:'Fraunces',serif;font-weight:500;letter-spacing:-.005em;
  position:relative;z-index:1;
}
.review .who{display:flex;align-items:center;gap:14px}
.review .who img{
  width:48px;height:48px;border-radius:50%;object-fit:cover;
  border:2px solid var(--pink-soft);padding:2px;background:#fff;
}
.review .who .name{font-size:14px;font-weight:600}
.review .who .role{font-size:12.5px;color:var(--muted)}

/* ============================================================
   NEWSLETTER
   ============================================================ */
.newsletter{
  background:linear-gradient(135deg,var(--pink-soft) 0%,var(--peach) 55%,var(--pink-soft) 100%);
  border-radius:32px;padding:60px 64px;
  display:flex;align-items:center;justify-content:space-between;gap:44px;flex-wrap:wrap;
  position:relative;overflow:hidden;
  border:1px solid rgba(255,255,255,.6);
  box-shadow:0 30px 70px rgba(224,116,141,.18);
}
.newsletter::before{
  content:'';position:absolute;right:-100px;top:-100px;width:340px;height:340px;
  border-radius:50%;background:rgba(255,255,255,.35);
}
.newsletter::after{
  content:'';position:absolute;left:-60px;bottom:-90px;width:240px;height:240px;
  border-radius:50%;background:rgba(255,255,255,.25);
}
.newsletter .txt{position:relative;z-index:1;max-width:460px}
.newsletter h3{
  font-family:'Fraunces',serif;font-size:clamp(1.7rem,3.2vw,2.2rem);
  letter-spacing:-.015em;margin-bottom:10px;color:var(--text);font-weight:600;
}
.newsletter p{font-size:15px;color:var(--text);opacity:.72}
.newsletter form{
  position:relative;z-index:1;display:flex;gap:10px;flex-wrap:wrap;
  flex:1;max-width:500px;
}
.newsletter input{
  flex:1;min-width:220px;padding:16px 24px;border-radius:999px;
  border:1.5px solid rgba(255,255,255,.6);outline:none;
  background:rgba(255,255,255,.85);color:var(--text);font-size:15px;
  transition:var(--t);
}
.newsletter input::placeholder{color:var(--muted-dim)}
.newsletter input:focus{
  background:#fff;border-color:var(--pink-deep);
  box-shadow:0 0 0 4px rgba(255,255,255,.5);
}
.newsletter .btn{
  background:var(--pink-deep);color:#fff;border-color:var(--pink-deep);
  box-shadow:0 10px 24px rgba(224,116,141,.35);
}
.newsletter .btn:hover{
  background:var(--rose);transform:translateY(-2px);
  box-shadow:0 16px 34px rgba(217,106,132,.45);
}
.form-msg{
  width:100%;font-size:13.5px;font-weight:600;min-height:18px;
  color:var(--text);padding-left:8px;
}

/* ============================================================
   FOOTER
   ============================================================ */
footer{
  border-top:1px solid var(--line);padding:66px 0 32px;margin-top:24px;
  background:linear-gradient(180deg,transparent,var(--bg-soft));
}
.footer-grid{display:grid;grid-template-columns:2fr 1fr 1fr 1fr;gap:48px;margin-bottom:48px}
.footer-grid .about p{color:var(--muted);font-size:14px;max-width:300px;margin:18px 0 22px}
.socials{display:flex;gap:10px}
.socials a{
  width:42px;height:42px;border-radius:14px;display:grid;place-items:center;
  background:#fff;border:1px solid var(--line);
  color:var(--muted);font-size:15px;transition:var(--t);
}
.socials a:hover{
  background:var(--pink-deep);color:#fff;border-color:var(--pink-deep);
  transform:translateY(-3px);box-shadow:0 10px 22px rgba(224,116,141,.3);
}
.footer-grid h5{
  font-family:'Fraunces',serif;font-size:14px;letter-spacing:.04em;
  color:var(--text);margin-bottom:18px;font-weight:600;
}
.footer-grid ul{display:flex;flex-direction:column;gap:11px}
.footer-grid ul a{color:var(--muted);font-size:14px;transition:var(--t)}
.footer-grid ul a:hover{color:var(--pink-deep);padding-left:4px}
.footer-bottom{
  border-top:1px solid var(--line);padding-top:24px;
  display:flex;justify-content:space-between;gap:16px;flex-wrap:wrap;
  color:var(--muted-dim);font-size:13px;
}

/* ============================================================
   CART DRAWER
   ============================================================ */
.overlay{
  position:fixed;inset:0;z-index:110;background:rgba(61,43,48,.45);
  backdrop-filter:blur(6px);opacity:0;visibility:hidden;transition:var(--t);
}
.overlay.show{opacity:1;visibility:visible}

.drawer{
  position:fixed;top:0;right:0;z-index:120;height:100%;width:min(420px,92vw);
  display:flex;flex-direction:column;background:var(--bg);
  border-left:1px solid var(--line);
  box-shadow:-30px 0 80px rgba(61,43,48,.22);
  transform:translateX(101%);transition:transform .4s cubic-bezier(.4,0,.2,1);
}
.drawer.open{transform:none}
.drawer-head{
  display:flex;align-items:center;justify-content:space-between;
  padding:24px 26px;border-bottom:1px solid var(--line);background:#fff;
}
.drawer-head h3{
  font-family:'Fraunces',serif;font-size:20px;letter-spacing:-.01em;
  font-weight:600;
}
.drawer-head .close{
  width:40px;height:40px;border-radius:50%;display:grid;place-items:center;
  color:var(--muted);border:1px solid var(--line);transition:var(--t);
  background:var(--card-warm);
}
.drawer-head .close:hover{
  color:var(--pink-deep);background:var(--blush);border-color:var(--pink);
}
.drawer-body{flex:1;overflow-y:auto;padding:22px 26px;display:flex;flex-direction:column;gap:14px}
.drawer-foot{padding:24px 26px;border-top:1px solid var(--line);background:#fff}
.subtotal{display:flex;justify-content:space-between;align-items:baseline;margin-bottom:8px}
.subtotal span{color:var(--muted);font-size:14px}
.subtotal strong{
  font-family:'Fraunces',serif;font-size:26px;font-weight:600;
  color:var(--pink-deep);letter-spacing:-.01em;
}
.ship-note{font-size:12.5px;color:var(--muted);margin-bottom:18px}
.drawer-foot .btn{width:100%}

.cart-item{
  display:grid;grid-template-columns:72px 1fr auto;gap:16px;align-items:center;
  padding:14px;border-radius:18px;background:#fff;border:1px solid var(--line);
  transition:var(--t);
}
.cart-item:hover{border-color:var(--line-strong)}
.cart-item img{width:72px;height:72px;border-radius:14px;object-fit:cover}
.cart-item h5{
  font-family:'Fraunces',serif;font-size:14.5px;font-weight:600;
  line-height:1.35;letter-spacing:-.005em;
}
.cart-item .cp{font-size:13.5px;color:var(--pink-deep);font-weight:600;margin-top:3px}
.qty{
  display:inline-flex;align-items:center;gap:10px;margin-top:10px;
  padding:4px 8px;border-radius:999px;border:1px solid var(--line);
  background:var(--blush);
}
.qty button{
  width:24px;height:24px;border-radius:50%;display:grid;place-items:center;
  color:var(--pink-deep);font-size:11px;transition:var(--t);
}
.qty button:hover{background:var(--pink-deep);color:#fff}
.qty span{font-size:13px;min-width:18px;text-align:center;font-weight:600}
.remove{color:var(--muted-dim);font-size:14px;padding:6px;transition:var(--t)}
.remove:hover{color:var(--rose)}

.cart-empty{text-align:center;padding:80px 20px;color:var(--muted)}
.cart-empty i{font-size:40px;display:block;margin-bottom:18px;color:var(--pink)}
.cart-empty br{line-height:2}

/* ============================================================
   TOAST
   ============================================================ */
.toast{
  position:fixed;left:50%;bottom:36px;z-index:200;
  transform:translate(-50%,140%);
  display:flex;align-items:center;gap:12px;
  padding:15px 24px;border-radius:999px;font-size:14px;font-weight:600;
  background:var(--pink-deep);color:#fff;
  box-shadow:0 20px 50px rgba(224,116,141,.4);
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
  .footer-grid{grid-template-columns:1fr 1fr;gap:36px}
}
@media (max-width:1000px){
  .nav{display:none}
  .menu-btn{display:grid}
  .hero-grid{grid-template-columns:1fr;gap:60px}
  .hero-visual{max-width:540px;margin-inline:auto;width:100%}
  .chip.float-1{left:-10px}
  .chip.float-2{right:-10px}
  .deal-card{grid-template-columns:1fr}
  .deal-media{min-height:280px;position:relative}
  .deal-media img{position:relative;height:280px}
  .deal-body{padding:38px 34px}
  .newsletter{padding:44px 36px}
}
@media (max-width:820px){
  .search{display:none}
  .product-grid{grid-template-columns:repeat(2,1fr);gap:16px}
  .cat-grid{grid-template-columns:repeat(2,1fr);gap:12px}
  section{padding:60px 0}
  .hero{padding:48px 0 44px}
}
@media (max-width:560px){
  .container{width:calc(100% - 32px)}
  .header-inner{height:68px}
  .brand{font-size:18px}
  .brand-mark{width:36px;height:36px;font-size:15px;border-radius:12px}
  .icon-btn{width:40px;height:40px;font-size:15px}
  .hero h1{font-size:clamp(2rem,9vw,2.7rem)}
  .hero p.lede{font-size:15.5px}
  .hero-stats{gap:26px}
  .hero-stats .stat strong{font-size:24px}
  .chip{font-size:12px;padding:10px 14px}
  .product .info{padding:14px 14px 4px}
  .product h3{font-size:14px}
  .product .price{font-size:18px}
  .product .actions{padding:12px 14px 16px}
  .add-btn{font-size:12.5px;padding:11px}
  .cd-box{min-width:62px;padding:10px 6px}
  .cd-box .num{font-size:21px}
  .deal-price{font-size:32px}
  .newsletter{padding:34px 24px;border-radius:26px}
  .footer-grid{grid-template-columns:1fr}
  .review{flex:0 0 290px;padding:22px}
  .section-head{margin-bottom:28px}
  .drawer{width:100vw}
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
      <span><i class="fas fa-gift"></i> Free gift with every order</span>
      <span><i class="fas fa-shield-halved"></i> Secure checkout</span>
    </div>
    <div class="ticker-group">
      <span><i class="fas fa-truck-fast"></i> Free shipping over $75</span>
      <span><i class="fas fa-rotate-left"></i> 30‑day easy returns</span>
      <span><i class="fas fa-gift"></i> Free gift with every order</span>
      <span><i class="fas fa-shield-halved"></i> Secure checkout</span>
    </div>
  </div>
</div>

<!-- ================= HEADER ================= -->
<header class="site-header">
  <div class="container header-inner">
    <a class="brand" href="#top">
      <span class="brand-mark"><i class="fas fa-heart"></i></span>
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
        <span class="eyebrow">Spring Edit 2026</span>
        <h1 class="display">Soft looks, <em>bold prices.</em></h1>
        <p class="lede">Curated fashion, beauty and little luxuries — hand‑picked with love, delivered to your door. Free shipping on your first order.</p>

        <div class="hero-actions">
          <button class="btn btn-pink" data-scroll="#products">Shop the edit <i class="fas fa-arrow-right"></i></button>
          <button class="btn btn-cream" data-scroll="#deal"><i class="fas fa-bolt"></i> Today's deal</button>
        </div>

        <div class="hero-stats">
          <div class="stat"><strong>12k+</strong><span>Happy customers</span></div>
          <div class="stat"><strong>4.9</strong><span>Average rating</span></div>
          <div class="stat"><strong>48h</strong><span>Express delivery</span></div>
        </div>
      </div>

      <div class="hero-visual">
        <div class="chip float-1"><i class="fas fa-star"></i> 4.9 · 2.4k reviews</div>
        <div class="chip float-2"><i class="fas fa-gift"></i> Free gift included</div>

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
          <h2 class="display" style="margin-top:12px">Shop by category</h2>
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
          <h2 class="display" style="margin-top:12px">Popular right now</h2>
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
          <h3>MacBook Air M2</h3>
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

          <button class="btn btn-pink" id="dealBtn" style="align-self:flex-start">
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
          <h2 class="display" style="margin-top:12px">Loved by 12,000+ shoppers</h2>
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
          <span class="brand-mark"><i class="fas fa-heart"></i></span>
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
      <span>Made with <i class="fas fa-heart" style="color:var(--pink-deep)"></i> for demo purposes.</span>
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
    <button class="btn btn-pink" id="checkoutBtn"><i class="fas fa-lock"></i> Checkout</button>
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
  cart: []
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
        Your cart is empty.<br>Time to find something lovely.
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
  const target = Date.now() + ((24 * 60 + 36) * 60 * 1000);
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
  addToCart(2);
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
    msg.style.color = '#b8465f';
    return;
  }
  msg.textContent = '🎉 You’re in! Check your inbox for 10% off.';
  msg.style.color = '#3d2b30';
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

console.log('🌸 NexusShop cream & pink redesign loaded.');
</script>
</body>
</html>
