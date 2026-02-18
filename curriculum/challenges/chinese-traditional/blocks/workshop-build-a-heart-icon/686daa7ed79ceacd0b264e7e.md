---
id: 686daa7ed79ceacd0b264e7e
title: 步驟 3
challengeType: 0
dashedName: step-3
---

# --description--

`path` 元素需要定義其形狀。這就是 `d` 屬性的用途。它用來創建一系列繪製形狀的指令字母和數字。 

這些字母表述像是移動到、繪製線條和關閉等指令，而數字則表述座標。  

將愛心形狀的 `d` 屬性設為 `M12 21s-6-4.35-9.33-8.22C-.5 7.39 3.24 1 8.4 4.28 10.08 5.32 12 7.5 12 7.5s1.92-2.18 3.6-3.22C20.76 1 24.5 7.39 21.33 12.78 18 16.65 12 21 12 21z`。

# --hints--

你的 `path` 元素上應該有一個 `d` 屬性。

```js
const path = document.querySelector('path');
const d = path.getAttribute('d');
assert.exists(d);
```

你應該將 `d` 屬性設為 `M12 21s-6-4.35-9.33-8.22C-.5 7.39 3.24 1 8.4 4.28 10.08 5.32 12 7.5 12 7.5s1.92-2.18 3.6-3.22C20.76 1 24.5 7.39 21.33 12.78 18 16.65 12 21 12 21z`

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
