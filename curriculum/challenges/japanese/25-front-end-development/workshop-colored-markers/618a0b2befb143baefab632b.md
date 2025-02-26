---
id: 618a0b2befb143baefab632b
title: ステップ 32
challengeType: 0
dashedName: step-32
---

# --description--

赤とシアンの色が隣り合わせにあると、とても明るく見えることに注目してください。 このコントラストはウェブサイト上で過度に使用すると目障りになることがあり、また、補色の背景色の上ではテキストが読みづらくなることがあります。

It's better practice to choose one color as the dominant color, and use its complementary color as an accent to bring attention to certain content on the page.

では最初に、`h1` ルール内で、`rgb` 関数を使用して `background-color` をシアンに設定してください。

# --hints--

You should not remove or modify the `text-align` property or its value.

```js
assert.strictEqual(new __helpers.CSSHelp(document).getStyle('h1')?.textAlign, 'center');
```

Your `h1` CSS rule should have a `background-color` property set to `rgb(0, 255, 255)`.

```js
assert.strictEqual(new __helpers.CSSHelp(document).getStyle('h1')?.backgroundColor, 'rgb(0, 255, 255)');
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
