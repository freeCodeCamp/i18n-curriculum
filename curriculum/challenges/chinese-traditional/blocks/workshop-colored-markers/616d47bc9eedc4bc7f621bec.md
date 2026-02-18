---
id: 616d47bc9eedc4bc7f621bec
title: 步驟 5
challengeType: 0
dashedName: step-5
---

# --description--

接著，在 `div` 元素內，添加另一個 `div` 元素並為它指定 `marker` 類別。

# --hints--

你的新 `div` 元素應該有一個開啟的頁籤。

```js
assert.exists([...code.matchAll(/<div.*?>/gi)][1]);
```

你的新 `div` 元素應該有一個結束標籤。

```js
assert.exists([...code.matchAll(/<\/div\s*>/gi)][1]);
```

你應該將新的 `div` 元素巢狀於具有 `container` 類別的 `div` 中。

```js
assert.strictEqual(document.querySelector('.container')?.children[0]?.localName, 'div');
```

你應該為你的新 `div` 元素指定一個 `marker` 類別。

```js
const containerChildren = [...document.querySelector('.container')?.children];
assert.isNotEmpty(containerChildren)
containerChildren.forEach(child => assert.isTrue(child.classList?.contains('marker')));
```

# --seed--

## --seed-contents--

```html
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Colored Markers</title>
    <link rel="stylesheet" href="styles.css">
  </head>
  <body>
    <h1>CSS Color Markers</h1>
    <div class="container">
--fcc-editable-region--
      
--fcc-editable-region--
    </div>
  </body>
</html>
```

```css
h1 {
  text-align: center;
}
```
