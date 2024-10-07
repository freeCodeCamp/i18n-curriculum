---
id: 587d778f367417b2b2512aae
title: Toa Viungo Maana kwa Kutumia Maandishi ya Kiungo cha Maelezo
challengeType: 0
videoUrl: 'https://scrimba.com/c/c437DcV'
forumTopicId: 301013
dashedName: give-links-meaning-by-using-descriptive-link-text
---

# --description--

Screen reader users have various options for what type of content their device reads. These options include skipping to (or over) landmark elements, jumping to the main content, or getting a page summary from the headings. Another option is to only hear the links available on a page.

Visoma skrini hufanya hivi kwa kusoma maandishi ya kiungo, au kilicho kati ya lebo za nanga (`a`). Kuwa na orodha ya viungo vya "bofya hapa" au "soma zaidi" haikusaidii. Badala yake, tumia maandishi mafupi na yenye ufafanuzi ndani ya lebo za `a` ili kutoa maana zaidi kwa watumiaji hawa.

# --instructions--

Maandishi ya kiungo ambayo Camper Cat anatumia hayaelezei sana bila muktadha unaomzunguka. Songeza lebo za nanga (`a`) ili ziambatane na maandishi `maelezo kuhusu betri` badala ya `bofya hapa`.

# --hints--

Msimbo wako unapaswa kuhamisha lebo za `a` kutoka karibu na maneno `Bofya hapa` ili kuzunguka maneno `maelezo kuhusu betri`.

```js
assert.match(document.querySelector('a')?.textContent, /^(information about batteries)$/g);
```

Kipengele cha `a` kinafaa kuwa na sifa ya `href` yenye thamani ya mfuatano tupu `""`.

```js
assert.isEmpty(document.querySelector('a')?.getAttribute('href'));
```

Kipengele cha `a` kinafaa kuwa na lebo ya kufunga.

```js
assert.isTrue(code.match(/<\/a>/g)?.length === code.match(/<a href=(''|"")>/g)?.length);
```

# --seed--

## --seed-contents--

```html
<body>
  <header>
    <h1>Deep Thoughts with Master Camper Cat</h1>
  </header>
  <article>
    <h2>Defeating your Foe: the Red Dot is Ours!</h2>
    <p>Felines the world over have been waging war on the most persistent of foes. This red nemesis combines both cunning stealth and lightning speed. But chin up, fellow fighters, our time for victory may soon be near. <a href="">Click here</a> for information about batteries</p>
  </article>
</body>
```

# --solutions--

```html
<body>
  <header>
    <h1>Deep Thoughts with Master Camper Cat</h1>
  </header>
  <article>
    <h2>Defeating your Foe: the Red Dot is Ours!</h2>
    <p>Felines the world over have been waging war on the most persistent of foes. This red nemesis combines both cunning stealth and lightning speed. But chin up, fellow fighters, our time for victory may soon be near. Click here for <a href="">information about batteries</a></p>
  </article>
</body>
```
