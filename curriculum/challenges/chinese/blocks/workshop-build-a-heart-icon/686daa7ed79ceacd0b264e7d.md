---
id: 686daa7ed79ceacd0b264e7d
title: 步骤2
challengeType: 0
dashedName: step-2
---

# --description--

你应该在你的 `svg` 元素内嵌套一个 `path` 元素以赋予图像形状。

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
    <svg>
    --fcc-editable-region--
      
    --fcc-editable-region--
    </svg>
  </body>
</html>
```
