---
id: 618a0b2befb143baefab632b
title: 步驟 37
challengeType: 0
dashedName: step-37
---

# --description--

請注意紅色和青色彼此相鄰時非常鮮豔。如果在網站上過度使用這種對比，可能會令人分心，且如果將文字放置在互補色背景上，會使閱讀變得困難。

較佳的做法是選擇一種顏色作為主色，並使用其互補色作為點綴色，以吸引頁面上某些內容的注意力。

首先，在 `h1` 規則中，使用 `rgb` 函式（程式）將其 `background-color` 設為青色。

# --hints--

你不應該移除或修改 `text-align` 屬性或其值。

```js
assert(new __helpers.CSSHelp(document).getStyle('h1')?.textAlign === 'center');
```

你的 `h1` CSS 規則應該有一個 `background-color` 屬性設為 `rgb(0, 255, 255)`。

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
