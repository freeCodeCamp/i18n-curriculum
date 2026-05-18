---
id: 616d47bc9eedc4bc7f621bec
title: Step 5
challengeType: 0
dashedName: step-5
---

# --description--

Fügen Sie als Nächstes innerhalb des `div`-Elements ein weiteres `div`-Element hinzu und geben Sie ihm die Klasse `marker`.

# --hints--

Ihr neues `div`-Element sollte ein öffnendes Tag haben.

```js
assert.exists([...code.matchAll(/<div.*?>/gi)][1]);
```

Ihr neues `div`-Element sollte ein schließendes Tag haben.

```js
assert.exists([...code.matchAll(/<\/div\s*>/gi)][1]);
```

Sie sollten Ihr neues `div`-Element innerhalb des `div` mit der Klasse `container` verschachteln.

```js
assert.strictEqual(document.querySelector('.container')?.children[0]?.localName, 'div');
```

Sie sollten Ihrem neuen `div`-Element die Klasse `marker` geben.

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
