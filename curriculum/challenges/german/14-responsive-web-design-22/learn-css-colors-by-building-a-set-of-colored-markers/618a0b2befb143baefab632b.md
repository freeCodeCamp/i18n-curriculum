---
id: 618a0b2befb143baefab632b
title: Schritt 37
challengeType: 0
dashedName: step-37
---

# --description--

Notice that the red and cyan colors are very bright right next to each other. This contrast can be distracting if it's overused on a website, and can make text hard to read if it's placed on a complementary-colored background.

Es ist besser eine Farbe als dominante Farbe zu wählen und seine Komplementärfarbe als Akzent zu verwenden, um auf bestimmte Inhalte der Seite aufmerksam zu machen.

Verwende in der `h1`-Regel zuerst die `rgb`-Funktion, um die `background-color` auf Cyan zu setzen.

# --hints--

Du solltest die `text-align`-Eigenschaft oder ihren Wert nicht entfernen oder verändern.

```js
assert(new __helpers.CSSHelp(document).getStyle('h1')?.textAlign === 'center');
```

Deine `h1`-CSS-Regel sollte eine `background-color`-Eigenschaft von `rgb(0, 255, 255)` haben.

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
