---
id: 616d47bc9eedc4bc7f621bec
title: Hatua 10
challengeType: 0
dashedName: step-10
---

# --description--

Ifuatayo, ndani ya kipengele cha `div`, ongeza kipengele kingine cha `div` na kimpatie darasa la vitu la `marker`.

# --hints--

Kipengele chako kipya cha `div` kinapaswa kuwa na lebo ya kufungua.

```js
assert([...code.matchAll(/<div.*?>/gi)][1]);
```

Kipengele chako kipya cha `div` kinapaswa kuwa na lebo ya kufunga.

```js
assert([...code.matchAll(/<\/div\s*>/gi)][1]);
```

Unapaswa kupanga ndani kipengele chako kipya cha `div` ndani ya `div` yenye darasa la vitu la `container`.

```js
assert(document.querySelector('.container')?.children[0]?.localName === 'div');
```

Unapaswa kumpa kipengele chako kipya cha `div` darasa la vitu la `marker`.

```js
const containerChildren = [...document.querySelector('.container')?.children];
assert(containerChildren.every(child => child.classList?.contains('marker')));
```

# --seed--

## --seed-contents--

```html
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Colored Markers</title>
    <link rel="stylesheet" href="styles.css">
  </head>
--fcc-editable-region--
  <body>
    <h1>CSS Color Markers</h1>
    <div class="container">
    </div>
  </body>
--fcc-editable-region--
</html>
```

```css
h1 {
  text-align: center;
}
```
