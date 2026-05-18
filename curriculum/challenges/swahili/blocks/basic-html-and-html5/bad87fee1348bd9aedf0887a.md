---
id: bad87fee1348bd9aedf0887a
title: Kichwa cha sehemu na kipengele cha h2
challengeType: 0
videoUrl: 'https://scrimba.com/p/pVMPUv/cE8Gqf3'
forumTopicId: 18196
dashedName: headline-with-the-h2-element
---

# --description--

Katika mafundisho yajayo machache, tutajenga programu ya picha za paka ya HTML5 hatua kwa hatua.

Kipengele cha `h2` utakachoongeza katika hatua hii kitaongeza kichwa cha sehemu cha ngazi ya pili kwenye ukurasa wa mtandao.

Kipengele hiki kinaambia kivinjari kuhusu muundo wa tovuti yako. Vipengele vya `h1` mara nyingi hutumika kwa vichwa vikuu, wakati vipengele vya `h2` kwa kawaida hutumika kwa vichwa vidogo. Pia kuna vipengele vya `h3`, `h4`, `h5` na `h6` kuonyesha ngazi tofauti za vichwa vidogo.

# --instructions--

Ongeza lebo ya `h2` inayosema "CatPhotoApp" ili kuunda kipengele cha pili cha HTML chini ya kipengele chako cha `h1` cha "Hello World".

# --hints--

Unapaswa kuunda kipengele cha `h2`.

```js
assert.lengthOf(document.querySelectorAll('h2'),1);
```

Kipengele chako cha `h2` kinapaswa kuwa na lebo ya kufunga.

```js
assert.match(code,/<\/h2>/g);
assert.strictEqual(code.match(/<\/h2>/g).length,code.match(/<h2>/g).length);
```

Kipengele chako cha `h2` kinapaswa kuwa na maandishi `CatPhotoApp`.

```js
assert.match(document.querySelector('h2').textContent,/cat(\s)?photo(\s)?app/gi);
```

Kipengele chako cha `h1` kinapaswa kuwa na maandishi `Hello World`.

```js
assert.match(document.querySelector('h1').textContent,/hello(\s)+world/gi);
```

Kipengele chako cha `h1` kinapaswa kuwa kabla ya kipengele chako cha `h2`.

```js
assert.match(code,/<h1>\s*?.*?\s*?<\/h1>\s*<h2>\s*?.*?\s*?<\/h2>/gi);
```

# --seed--

## --seed-contents--

```html
<h1>Hello World</h1>
```

# --solutions--

```html
<h1>Hello World</h1>
<h2>CatPhotoApp</h2>
```
