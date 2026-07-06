---
id: 618a16d21bd3dad1bb3aa8ef
title: خطوة 41
challengeType: 0
dashedName: step-41
---

# --description--

حان الوقت الآن لإضافة تفاصيل أخرى إلى العلامات، بدءًا بالأولى.

في عنصر `div` الخاص بالعلامة الأولى، غيّر الصنف `one` إلى `red`.

# --hints--

يجب ألا يحتوي عنصر `div` الخاص بالعلامة الأولى على الصنف `one`.

```js
const containerFirstChild = [...document.querySelector('.container')?.children][0];
assert(!containerFirstChild?.classList?.contains('one'));
```

يجب أن يحتوي عنصر `div` الخاص بالعلامة الأولى على الأصناف `marker` و `red`.

```js
const containerFirstChild = [...document.querySelector('.container')?.children][0];
assert(containerFirstChild?.classList?.contains('marker') && containerFirstChild?.classList?.contains('red'));
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
