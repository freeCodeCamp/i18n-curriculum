---
id: 5dfa30b9eacea3f48c6300ad
title: Hatua 17
challengeType: 0
dashedName: step-17
---

# --description--

Katika hatua zilizopita ulitumia kipengele cha nanga kubadilisha maandishi kuwa kiungo. Aina nyingine za maudhui pia zinaweza kubadilishwa kuwa kiungo kwa kuzipanga ndani ya lebo za nanga.

Hapa kuna mfano wa kubadilisha picha kuwa kiungo:

```html
<a href="example-link">
  <img src="image-link.jpg" alt="A photo of a cat.">
</a>
```

Badilisha picha kuwa kiungo kwa kuizunguka na lebo muhimu za kipengele. Tumia `https://freecatphotoapp.com` kama thamani ya sifa ya `href` ya nanga.

# --hints--

Unapaswa kuwa na kipengele cha `img` chenye thamani ya `src` ya `https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg`. Huenda ulifuta kwa bahati mbaya.

```js
assert(
  document.querySelector('img') &&
    document.querySelector('img').getAttribute('src') ===
      'https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg'
);
```

Kipengele chako cha nanga (`a`) kinapaswa kuwa na lebo ya kufungua. Lebo za kufungua zina sintaksia hii: `<elementName>`.

```js
assert(document.querySelectorAll('a').length >= 2);
```

Unakosa lebo ya kufunga (`a`) baada ya picha.

```js
assert.lengthOf(document.querySelectorAll('a'), 3);
```

Kipengele chako cha nanga (`a`) kinapaswa kuwa na lebo ya kufunga. Lebo za kufunga zina `/` mara tu baada ya herufi ya `<`.

```js
assert(code.match(/<\/a>/g).length >= 2);
```

Unapaswa kuongeza lebo moja tu ya kufunga ya nanga (`a`). Tafadhali futa ziingizo zozote ziingine.

```js
assert.lengthOf(code.match(/<\/a>/g), 3);
```

Kipengele chako cha nanga (`a`) hakina sifa ya `href`. Angalia kama kuna nafasi baada ya jina la lebo ya kufungua na/au kama kuna nafasi kabla ya majina yote ya sifa.

```js
assert(document.querySelector('a').hasAttribute('href'));
```

Kipengele chako cha nanga (`a`) kinapaswa kuunganisha na `https://freecatphotoapp.com`. Huenda umesahau URL au kuna makosa ya tahajia.

```js
assert(
  document.querySelectorAll('a')[1].getAttribute('href') ===
    'https://freecatphotoapp.com'
);
```

Kipengele chako cha nanga (`a`) hakina sifa ya `href`. Angalia kama kuna nafasi baada ya jina la lebo ya kufungua na/au kama kuna nafasi kabla ya majina yote ya sifa.

```js
assert.isTrue(document.querySelectorAll('a')[2]?.hasAttribute('href'));
```

Kipengele chako cha nanga (`a`) kinapaswa kuunganisha na `https://freecatphotoapp.com`. Huenda umesahau URL au kuna makosa ya tahajia.

```js
assert.equal(
  document.querySelectorAll('a')[2]?.getAttribute('href').trim(),
    'https://freecatphotoapp.com'
);
```

Kipengele chako cha `img` kinapaswa kupangwa ndani ya kipengele cha nanga (`a`). Kipengele kizima cha `img` kinapaswa kuwa ndani ya lebo za kufungua na kufunga za kipengele cha nanga (`a`).

```js
assert(document.querySelector('img').parentNode.nodeName === 'A');
```

# --seed--

## --seed-contents--

```html
<html>
  <body>
    <main>
      <h1>CatPhotoApp</h1>
      <h2>Cat Photos</h2>
      <p>Everyone loves <a href="https://cdn.freecodecamp.org/curriculum/cat-photo-app/running-cats.jpg">cute cats</a> online!</p>
      <p>See more <a target="_blank" href="https://freecatphotoapp.com">cat photos</a> in our gallery.</p>
--fcc-editable-region--
      <img src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg" alt="A cute orange cat lying on its back.">
--fcc-editable-region--
    </main>
  </body>
</html>
```
