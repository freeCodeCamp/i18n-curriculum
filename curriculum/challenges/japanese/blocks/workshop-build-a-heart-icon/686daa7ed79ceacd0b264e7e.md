---
id: 686daa7ed79ceacd0b264e7e
title: ステップ 3
challengeType: 0
dashedName: step-3
---

# --description--

`path` 要素には形状を定義する必要があります。ここで `d` 属性が使われます。これは、形状を描くための一連のコマンド文字と数字を作成するために使われます。

これらの文字は「移動する」「線を引く」「閉じる」などのコマンドを表し、数字は座標を表します。

ハート形の `d` 属性を `M12 21s-6-4.35-9.33-8.22C-.5 7.39 3.24 1 8.4 4.28 10.08 5.32 12 7.5 12 7.5s1.92-2.18 3.6-3.22C20.76 1 24.5 7.39 21.33 12.78 18 16.65 12 21 12 21z` に設定してください。

# --hints--

`d` 要素に `path` 属性があるはずです。

```js
const path = document.querySelector('path');
const d = path.getAttribute('d');
assert.exists(d);
```

`d` 属性を `M12 21s-6-4.35-9.33-8.22C-.5 7.39 3.24 1 8.4 4.28 10.08 5.32 12 7.5 12 7.5s1.92-2.18 3.6-3.22C20.76 1 24.5 7.39 21.33 12.78 18 16.65 12 21 12 21z` に設定してください。

```js
const path = document.querySelector('path');
const d = path.getAttribute('d');
assert.strictEqual(
  d,
  'M12 21s-6-4.35-9.33-8.22C-.5 7.39 3.24 1 8.4 4.28 10.08 5.32 12 7.5 12 7.5s1.92-2.18 3.6-3.22C20.76 1 24.5 7.39 21.33 12.78 18 16.65 12 21 12 21z'
);
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
      <path
      --fcc-editable-region--
        
      --fcc-editable-region--
      ></path>
    </svg>
  </body>
</html>
```
