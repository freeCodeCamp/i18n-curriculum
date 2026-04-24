---
id: 686daa7ed79ceacd0b264e7f
title: ステップ 4
challengeType: 0
dashedName: step-4
---

# --description--

次のステップは、`width` 要素の `height` と `svg` 属性を設定することです。アイコンを作成しているので、両方の値は小さく設定してください。

両方の値を `24` に設定してください。

# --hints--

`svg` 要素には `width` の `24` 属性が必要です。

```js
const svg = document.querySelector('svg');
assert.strictEqual(svg.getAttribute('width'), '24');
```

`svg` 要素には `height` の `24` 属性が必要です。

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
