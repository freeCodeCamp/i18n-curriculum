---
id: 686daa7ed79ceacd0b264e7d
title: Schritt 2
challengeType: 0
dashedName: step-2
---

# --description--

Sie sollten ein `path`-Element innerhalb Ihres `svg`-Elements verschachteln, um dem Bild eine Form zu geben.

Erstellen Sie ein `path`-Element.

# --hints--

Sie sollten ein `path`-Element verschachtelt innerhalb Ihres `svg`-Elements haben.

```js
const path = document.querySelector('svg path');
assert.exists(path);
```

# --seed--

## --seed-contents--

```html
<!doctype html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <title>Heart Icon</title>
  </head>
  <body>
    <svg>
    --fcc-editable-region--
      
    --fcc-editable-region--
    </svg>
  </body>
</html>
```
