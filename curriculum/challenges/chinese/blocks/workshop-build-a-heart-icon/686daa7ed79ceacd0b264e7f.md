---
id: 686daa7ed79ceacd0b264e7f
title: 步骤 4
challengeType: 0
dashedName: step-4
---

# --description--

在开始为图像上色之前，你应该在 `svg` 元素内部嵌套一个 `path` 元素，以赋予图像形状。

创建一个 `path` 元素。

# --hints--

你应该在 `svg` 元素内部嵌套一个 `path` 元素。

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
    --fcc-editable-region--
    <svg width="24" height="24" viewBox="0 0 24 24">

    </svg>
    --fcc-editable-region--
  </body>
</html>
```
