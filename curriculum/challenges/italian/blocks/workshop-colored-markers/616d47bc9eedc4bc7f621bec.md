---
id: 616d47bc9eedc4bc7f621bec
title: Passaggio 5
challengeType: 0
dashedName: step-5
---

# --description--

Successivamente, all'interno dell'elemento `div`, aggiungi un altro elemento `div` e assegna a questo una classe `marker`.

# --hints--

Il tuo nuovo elemento `div` dovrebbe avere un tag di apertura.

```js
assert.exists([...code.matchAll(/<div.*?>/gi)][1]);
```

Il tuo nuovo elemento `div` dovrebbe avere un tag di chiusura.

```js
assert.exists([...code.matchAll(/<\/div\s*>/gi)][1]);
```

Dovresti annidare il tuo nuovo elemento `div` all'interno dell'elemento `div` con la classe `container`.

```js
assert.strictEqual(document.querySelector('.container')?.children[0]?.localName, 'div');
```

Dovresti assegnare al tuo nuovo elemento `div` una classe `marker`.

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
  <body>
    <h1>CSS Color Markers</h1>
    <div class="container">
--fcc-editable-region--
      
--fcc-editable-region--
    </div>
  </body>
</html>
```

```css
h1 {
  text-align: center;
}
```
