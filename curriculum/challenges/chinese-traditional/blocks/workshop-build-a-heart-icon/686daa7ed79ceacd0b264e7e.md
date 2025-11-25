---
id: 686daa7ed79ceacd0b264e7e
title: 步驟 3
challengeType: 0
dashedName: step-3
---

# --description--

You are getting closer, now look at this example:

```html
<svg viewBox="0 0 50 50">
</svg>
```

The `viewBox` attribute controls what part of the image is visible inside the SVG.

- The first two numbers (`0 0`) set the starting position of the `viewBox` — the top-left corner (x and y).
- The next two numbers (`50 50`) define the `viewBox`'s width and height.

Set the `viewBox` attribute to `0 0 24 24`.

# --hints--

你應該有一個 `viewBox` 屬性。

```js
const svg = document.querySelector('svg');
const viewBox = svg.getAttribute('viewBox');
assert.exists(viewBox);
```

你應將 `viewBox` 的 x 座標設置爲 0。

```js
const svg = document.querySelector('svg');
const viewBox = svg.getAttribute('viewBox');
const x = viewBox?.trim().split(' ')[0];
assert.strictEqual(x, '0');
```

你應將 `viewBox` 的 y 座標設置爲 0。

```js
const svg = document.querySelector('svg');
const viewBox = svg.getAttribute('viewBox');
const y = viewBox?.trim().split(' ')[1];
assert.strictEqual(y, '0');
```

你應將 `viewBox` 的寬度設置爲 24。

```js
const svg = document.querySelector('svg');
const viewBox = svg.getAttribute('viewBox');
const width = viewBox?.trim().split(' ')[2];
assert.strictEqual(width, '24');
```

你應將 `viewBox` 的高度設置爲 24。

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
