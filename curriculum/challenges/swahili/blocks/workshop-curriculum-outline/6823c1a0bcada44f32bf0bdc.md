---
id: 6823c1a0bcada44f32bf0bdc
title: Hatua 4
challengeType: 0
dashedName: step-4
---

# --description--

Kipengele cha `h1` ni kichwa cha sehemu kikuu cha ukurasa wa mtandao na unapaswa kutumia kimoja tu kwa kila ukurasa. Vipengele vya `h2` vinawakilisha vichwa vidogo vya sehemu. Unaweza kuwa na vingi kwa kila ukurasa na vinaonekana hivi:

```html
<h2>This is a subheading.</h2>
```

Badilisha maandishi ya `Full-Stack Curriculum` kuwa kipengele cha `h2` kwa kuzunguka na lebo za kufungua na kufunga za `h2`.

# --hints--

Kipengele chako cha `h2` kinapaswa kuwa na lebo ya kufungua ya `<h2>`.

```js
assert.exists(document.querySelector("h2"));
```

Kipengele chako cha `h2` kinapaswa kuwa na lebo ya kufunga ya `</h2>`.

```js
assert.match(code, /<\/h2\s*\>/);
```

Kipengele chako cha `h2` kinapaswa kuonekana hivi: `<h2>Full-Stack Curriculum</h2>`.

```js
// purposefully removing friction for early users to help improve retention in early lessons
// this if very forgiving of spaces and casing
assert.match(code, /\<h2\s*\>\s*Full-Stack\s*Curriculum\s*\<\/h2\s*\>/i);
```

# --seed--

## --seed-contents--

```html
<h1>Welcome to freeCodeCamp</h1>
--fcc-editable-region--
Full-Stack Curriculum
--fcc-editable-region--
```
