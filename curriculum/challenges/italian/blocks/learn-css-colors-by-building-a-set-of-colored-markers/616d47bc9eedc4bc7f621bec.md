---
id: 616d47bc9eedc4bc7f621bec
title: Passaggio 10
challengeType: 0
dashedName: step-10
---

# --description--

Poi, all'interno dell'elemento `div`, aggiungi un altro elemento `div` e dagli una classe `marker`.

# --hints--

Il tuo nuovo elemento `div` dovrebbe avere un tag di apertura.

```js
assert([...code.matchAll(/<div.*?>/gi)][1]);
```

Il tuo nuovo elemento `div` dovrebbe avere un tag di chiusura.

```js
assert([...code.matchAll(/<\/div\s*>/gi)][1]);
```

Dovresti annidare il tuo nuovo elemento `div` all'interno del `div` con la classe `container`.

```js
assert(document.querySelector('.container')?.children[0]?.localName === 'div');
```

Dovresti dare al tuo nuovo elemento `div` una classe `marker`.

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
