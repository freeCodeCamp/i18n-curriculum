---
id: 616d47bc9eedc4bc7f621bec
title: Paso 5
challengeType: 0
dashedName: step-5
---

# --description--

A continuación, dentro del elemento `div`, añade otro elemento `div` y asígnale una clase de `marker`.

# --hints--

Tu nuevo elemento `div` debe tener una etiqueta de apertura.

```js
assert.exists([...code.matchAll(/<div.*?>/gi)][1]);
```

Tu nuevo elemento `div` debe tener una etiqueta de cierre.

```js
assert.exists([...code.matchAll(/<\/div\s*>/gi)][1]);
```

Debes anidar tu nuevo elemento `div` dentro del `div` con la clase `container`.

```js
assert.strictEqual(document.querySelector('.container')?.children[0]?.localName, 'div');
```

Debes darle a tu nuevo elemento `div` una clase de `marker`.

```js
const containerChildren = [...document.querySelector('.container')?.children];
assert.isNotEmpty(containerChildren)
containerChildren.forEach(child => assert.isTrue(child.classList?.contains('marker')));
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
