---
id: 686daa7ed79ceacd0b264e7d
title: Крок 2
challengeType: 0
dashedName: step-2
---

# --description--

Ви повинні вкласти один `path` елемент всередину вашого `svg` елемента, щоб надати зображенню форму.

Створіть `path` елемент.

# --hints--

У вас має бути `path` елемент, вкладений всередину вашого `svg` елемента.

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
