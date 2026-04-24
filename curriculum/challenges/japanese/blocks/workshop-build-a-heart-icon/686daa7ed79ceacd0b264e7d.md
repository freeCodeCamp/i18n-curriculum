---
id: 686daa7ed79ceacd0b264e7d
title: ステップ 2
challengeType: 0
dashedName: step-2
---

# --description--

画像の形を作るために、`path` 要素の中に `svg` 要素をネストしてください。

`path` 要素を作成してください。

# --hints--

`path` 要素の中に `svg` 要素がネストされている必要があります。

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
