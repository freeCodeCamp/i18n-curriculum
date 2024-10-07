---
id: 618a0b2befb143baefab632b
title: 步驟 37
challengeType: 0
dashedName: step-37
---

# --description--

Notice that the red and cyan colors are very bright right next to each other. This contrast can be distracting if it's overused on a website, and can make text hard to read if it's placed on a complementary-colored background.

選擇一種顏色作爲主要顏色， 並使用其補充顏色作爲強調來提醒訪問者注意頁面上的某些內容，是一種更好的方式。

首先，在 `h1` 規則中，使用 `rgb` 函數將其 `background-color` 設置爲 cyan（藍綠色）。

# --hints--

你不應該刪除或修改 `text-align` 屬性或它的值。

```js
assert(new __helpers.CSSHelp(document).getStyle('h1')?.textAlign === 'center');
```

你的 `h1` CSS 規則應該有一個 `background-color` 屬性設置爲 `rgb(0, 255, 255)`。

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
