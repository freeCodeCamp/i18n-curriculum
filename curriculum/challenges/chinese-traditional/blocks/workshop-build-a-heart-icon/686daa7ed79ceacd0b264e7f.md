---
id: 686daa7ed79ceacd0b264e7f
title: 步驟 4
challengeType: 0
dashedName: step-4
---

# --description--

在開始爲圖像上色之前，你應該在 `svg` 元素內部嵌套一個 `path` 元素，以賦予圖像形狀。

創建一個 `path` 元素。

# --hints--

你應該在 `svg` 元素內部嵌套一個 `path` 元素。

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
