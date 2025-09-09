---
id: 686daa7ed79ceacd0b264e7d
title: 步驟 2
challengeType: 0
dashedName: step-2
---

# --description--

下一步是設置 `svg` 元素的 `width` 和 `height` 屬性。 當你創建一個圖標時，這兩個值都應設置得比較小。

將兩個值都設置爲 `24`。

# --hints--

你的 `svg` 元素應該有一個 `width` 屬性，值爲 `24`。

```js
const svg = document.querySelector('svg');
assert.strictEqual(svg.getAttribute('width'), '24');
```

你的 `svg` 元素應該有一個 `height` 屬性，值爲 `24`。

```js
const svg = document.querySelector('svg');
assert.strictEqual(svg.getAttribute('height'), '24');
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
    <svg>
    </svg>
    --fcc-editable-region--
  </body>
</html>
```
