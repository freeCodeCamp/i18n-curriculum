---
id: 5f356ed6cf6eab5f15f5cfe6
title: Step 16
challengeType: 0
dashedName: step-16
---

# --description--

Kipengele cha `div` kinatumiwa hasa kwa madhumuni ya mpangilio wa muundo, tofauti na vipengele vingine vya maudhui ulivyotumia hadi sasa. Ongeza kipengele cha `div` ndani ya kipengele cha `body` kisha hamisha vipengele vyote vingine ndani ya `div` mpya.

Ndani ya lebo ya kufungua ya `div`, ongeza sifa ya kipengele ya `id` yenye thamani ya `menu`.

# --hints--

Leboa ya kufungua ya `<div>` inapaswa kuwa na sifa ya kipengele ya `id` iliyowekwa kuwa `menu`.

```js
assert.strictEqual(document.querySelector('div')?.id, 'menu');
```

Unapaswa kuwa na lebo ya kufunga ya `</div>`.

```js
assert.match(code, /<\/div>/i);
```

Hupaswi kubadilisha kipengele chako cha `body` kilichopo. Hakikisha hujafuta lebo ya kufunga.

```js
assert.lengthOf(document.querySelectorAll('body'), 1);
```

Kipengele chako cha `div` kinapaswa kupangwa ndani ya `body`.

```js
assert.equal(document.querySelector('div')?.parentElement?.tagName, 'BODY');
```

Unapaswa kuhamisha vipengele vyote vingine ndani ya `div` mpya.

```js
assert.lengthOf(document.querySelector('body > div#menu > main')?.children, 3);
```

# --seed--

## --seed-contents--

```html
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Cafe Menu</title>
    <link href="styles.css" rel="stylesheet"/>
  </head>
  <body>
--fcc-editable-region--
    <main>
      <h1>CAMPER CAFE</h1>
      <p>Est. 2020</p>
      <section>
        <h2>Coffee</h2>
      </section>
    </main>
--fcc-editable-region--
  </body>
</html>
```

```css
body {
  background-color: burlywood;
}

h1, h2, p {
  text-align: center;
}
```
