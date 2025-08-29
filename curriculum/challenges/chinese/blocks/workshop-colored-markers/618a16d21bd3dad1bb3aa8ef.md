---
id: 618a16d21bd3dad1bb3aa8ef
title: 步骤 36
challengeType: 0
dashedName: step-36
---

# --description--

现在给马克笔添加其他细节，从第一个开始。

在第一个马克笔 `div` 元素中，将 `one` 类改为 `red`。

# --hints--

你的第一个马克笔 `div` 不应该有 `one` 类。

```js
const containerFirstChild = [...document.querySelector('.container')?.children][0];
assert.isFalse(containerFirstChild?.classList?.contains('one'));
```

你的第一个马克笔 `div` 应该有类 `marker` 和 `red`。

```js
const containerFirstChild = [...document.querySelector('.container')?.children][0];
assert.isTrue(containerFirstChild?.classList?.contains('marker'));
assert.isTrue(containerFirstChild?.classList?.contains('red'));
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
      <div class="marker one">
      </div>
      <div class="marker two">
      </div>
      <div class="marker three">
      </div>
      --fcc-editable-region--
    </div>
  </body>
</html>
```

```css
h1 {
  text-align: center;
}

.container {
  background-color: rgb(255, 255, 255);
  padding: 10px 0;
}

.marker {
  width: 200px;
  height: 25px;
  margin: 10px auto;
}

.one {
  background-color: rgb(0, 0, 0);
}

.two {
  background-color: rgb(0, 0, 0);
}

.three {
  background-color: rgb(0, 0, 0);
}

```
