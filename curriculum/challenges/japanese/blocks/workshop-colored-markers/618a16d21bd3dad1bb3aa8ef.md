---
id: 618a16d21bd3dad1bb3aa8ef
title: Step 36
challengeType: 0
dashedName: step-36
---

# --description--

マーカーに他の詳細を追加する時間です。まずは最初のマーカーから始めましょう。

最初のマーカーの `div` 要素で、クラス `one` を `red` に変更してください。

# --hints--

最初のマーカー `div` はクラス `one` を持ってはいけません。

```js
const containerFirstChild = [...document.querySelector('.container')?.children][0];
assert.isFalse(containerFirstChild?.classList?.contains('one'));
```

最初のマーカー `div` はクラス `marker` と `red` を持っている必要があります。

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
      --fcc-editable-region--
      </div>
      <div class="marker two">
      </div>
      <div class="marker three">
      </div>
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
