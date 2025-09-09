---
id: 686daa7ed79ceacd0b264e7e
title: 步骤 3
challengeType: 0
dashedName: step-3
---

# --description--

你越来越接近了。 下一步是设置 `svg` 元素的 `viewBox` 属性。 这将控制图像的可见范围。 前两个数字设定图像的中心位置。

后两个数字决定了我们所能看到的图像尺寸：宽度后跟高度。

由于此处图标应完整可见，你应将 `viewBox` 属性设置为 `0 0 24 24`。

# --hints--

你应该有一个 `viewBox` 属性。

```js
const svg = document.querySelector('svg');
const viewBox = svg.getAttribute('viewBox');
assert.exists(viewBox);
```

你应将 `viewBox` 的 x 坐标设置为 0。

```js
const svg = document.querySelector('svg');
const viewBox = svg.getAttribute('viewBox');
const x = viewBox?.trim().split(' ')[0];
assert.strictEqual(x, '0');
```

你应将 `viewBox` 的 y 坐标设置为 0。

```js
const svg = document.querySelector('svg');
const viewBox = svg.getAttribute('viewBox');
const y = viewBox?.trim().split(' ')[1];
assert.strictEqual(y, '0');
```

你应将 `viewBox` 的宽度设置为 24。

```js
const svg = document.querySelector('svg');
const viewBox = svg.getAttribute('viewBox');
const width = viewBox?.trim().split(' ')[2];
assert.strictEqual(width, '24');
```

你应将 `viewBox` 的高度设置为 24。

```js
const svg = document.querySelector('svg');
const viewBox = svg.getAttribute('viewBox');
const height = viewBox?.trim().split(' ')[3];
assert.strictEqual(height, '24');
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
    <svg width="24" height="24">
    </svg>
    --fcc-editable-region--
  </body>
</html>
```
