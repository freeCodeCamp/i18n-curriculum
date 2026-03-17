---
id: 618a0b2befb143baefab632b
title: Крок 32
challengeType: 0
dashedName: step-32
---

# --description--

Зверніть увагу, що червоний і бірюзовий кольори дуже яскраві поруч один з одним. Такий контраст може відволікати, якщо його надмірно використовувати на сайті, і може ускладнити читання тексту, якщо він розміщений на доповнюючому кольоровому фоні.

Краще обрати один колір як домінантний, а доповнюючий колір використовувати як акцент, щоб привернути увагу до певного вмісту на сторінці.

Спершу, у правилі `h1` використайте функцію `rgb`, щоб встановити його властивість `background-color` у бірюзовий колір.

# --hints--

Ви не повинні видаляти або змінювати властивість `text-align` або її значення.

```js
assert.strictEqual(new __helpers.CSSHelp(document).getStyle('h1')?.textAlign, 'center');
```

Ваше CSS-правило `h1` має містити властивість `background-color`, встановлену у `rgb(0, 255, 255)`.

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
h1 {
  text-align: center;
--fcc-editable-region--
  
--fcc-editable-region--
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
  background-color: rgb(255, 0, 0);
}

.two {
  background-color: rgb(0, 255, 255);
}

.three {
  background-color: rgb(0, 0, 0);
}

```
