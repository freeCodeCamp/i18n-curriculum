---
id: 618a0b2befb143baefab632b
title: ステップ 37
challengeType: 0
dashedName: step-37
---

# --description--

赤とシアンの色が隣り合って非常に明るく見えることに気づきましたか。このコントラストはウェブサイトで多用すると目が疲れることがあり、補色の背景にテキストを置くと読みづらくなる場合があります。

より良い方法は、1つの色を支配的な色として選び、その補色をアクセントとして使い、ページの特定のコンテンツに注目を集めることです。

まず、`h1` のルール内で、`rgb` 関数を使ってその `background-color` をシアンに設定してください。

# --hints--

`text-align` プロパティやその値を削除または変更してはいけません。

```js
assert(new __helpers.CSSHelp(document).getStyle('h1')?.textAlign === 'center');
```

`h1` の CSS ルールには `background-color` プロパティが `rgb(0, 255, 255)` に設定されている必要があります。

```js
assert(new __helpers.CSSHelp(document).getStyle('h1')?.backgroundColor === 'rgb(0, 255, 255)');
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
      <div class="marker one">
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
--fcc-editable-region--
h1 {
  text-align: center;
}
--fcc-editable-region--

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
  background-color: rgb(255, 0, 0);
}

.two {
  background-color: rgb(0, 255, 255);
}

.three {
  background-color: rgb(0, 0, 0);
}

```
