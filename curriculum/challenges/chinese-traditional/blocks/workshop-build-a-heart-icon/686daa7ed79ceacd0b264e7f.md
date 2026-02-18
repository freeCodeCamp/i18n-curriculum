---
id: 686daa7ed79ceacd0b264e7f
title: 步驟 4
challengeType: 0
dashedName: step-4
---

# --description--

下一步是為 `svg` 元素設定 `width` 和 `height` 屬性。由於你正在建立圖示，兩個值都應該設定得很小。

將兩個值都設為 `24`。

# --hints--

你的 `svg` 元素應該有一個 `width` 屬性為 `24`。

```js
const svg = document.querySelector('svg');
assert.strictEqual(svg.getAttribute('width'), '24');
```

你的 `svg` 元素應該有一個 `height` 屬性，值為 `24`。

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
    --fcc-editable-region--
      <path
        d="M12 21s-6-4.35-9.33-8.22C-.5 7.39 3.24 1 8.4 4.28 10.08 5.32 12 7.5 12 7.5s1.92-2.18 3.6-3.22C20.76 1 24.5 7.39 21.33 12.78 18 16.65 12 21 12 21z"
      ></path>
    </svg>
  </body>
</html>
```
