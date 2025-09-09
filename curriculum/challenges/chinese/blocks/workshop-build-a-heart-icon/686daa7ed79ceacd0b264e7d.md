---
id: 686daa7ed79ceacd0b264e7d
title: 步骤 2
challengeType: 0
dashedName: step-2
---

# --description--

下一步是设置 `svg` 元素的 `width` 和 `height` 属性。 当你创建一个图标时，这两个值都应设置得比较小。

将两个值都设置为 `24`。

# --hints--

你的 `svg` 元素应该有一个 `width` 属性，值为 `24`。

```js
const svg = document.querySelector('svg');
assert.strictEqual(svg.getAttribute('width'), '24');
```

你的 `svg` 元素应该有一个 `height` 属性，值为 `24`。

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
