---
id: 612eaf56b7ba3257fdbfb0db
title: الخطوة 19
challengeType: 0
dashedName: step-19
---

# --description--

يحتاج البيانو إلى شعار freeCodeCamp ليصبح رسميًا.

أضف عنصر `img` قبل عنصر `.keys` . أعطِ عنصر `img` قيمة `class` تساوي `logo` ، وعيّن الخاصية `src` إلى `https://cdn.freecodecamp.org/platform/universal/fcc_primary.svg` . أضف نص `alt` يساوي `freeCodeCamp Logo` .

# --hints--

يجب أن تضيف عنصر `img` جديد.

```js
assert.lengthOf(document.querySelectorAll('img'), 1);
```

يجب أن يأتي عنصر `img` قبل أول عنصر `.keys` لديك.

```js
const img = document.querySelector('img');
assert.equal(img?.nextElementSibling?.className, 'keys');
assert.isNull(img?.previousElementSibling);
```

يجب أن يحتوي عنصر `img` على `class` مضبوط إلى `logo`.

```js
const img = document.querySelector('img');
assert.equal(img?.className, 'logo');
```

يجب أن يحتوي عنصر `img` على خاصية `src` مضبوطة إلى `https://cdn.freecodecamp.org/platform/universal/fcc_primary.svg`.

```js
const img = document.querySelector('img');
assert.equal(img?.getAttribute('src'), 'https://cdn.freecodecamp.org/platform/universal/fcc_primary.svg');
```

يجب أن يحتوي عنصر `img` على خاصية `alt` مضبوطة إلى `freeCodeCamp Logo`.

```js
assert.equal(document.querySelector('img')?.getAttribute('alt')?.toLowerCase(), 'freecodecamp logo');
```

تذكر أن حالة الأحرف والإملاء مهمان.

```js
assert.equal(document.querySelector('img')?.getAttribute('alt'), 'freeCodeCamp Logo');
```

# --seed--

## --seed-contents--

```html
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <title>Piano</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="./styles.css">
  </head>
  <body>
    <div id="piano">
--fcc-editable-region--
      
--fcc-editable-region--
      <div class="keys">
        <div class="key"></div>
        <div class="key black--key"></div>
        <div class="key black--key"></div>
        <div class="key"></div>
        <div class="key black--key"></div>
        <div class="key black--key"></div>
        <div class="key black--key"></div>

        <div class="key"></div>
        <div class="key black--key"></div>
        <div class="key black--key"></div>
        <div class="key"></div>
        <div class="key black--key"></div>
        <div class="key black--key"></div>
        <div class="key black--key"></div>

        <div class="key"></div>
        <div class="key black--key"></div>
        <div class="key black--key"></div>
        <div class="key"></div>
        <div class="key black--key"></div>
        <div class="key black--key"></div>
        <div class="key black--key"></div>
      </div>
    </div>
  </body>
</html>
```

```css
html {
  box-sizing: border-box;
}

*, *::before, *::after {
  box-sizing: inherit;
}

#piano {
  background-color: #00471b;
  width: 992px;
  height: 290px;
  margin: 80px auto;
  padding: 90px 20px 0 20px;
}

.keys {
  background-color: #040404;
  width: 949px;
  height: 180px;
  padding-left: 2px;
}

.key {
  background-color: #ffffff;
  position: relative;
  width: 41px;
  height: 175px;
  margin: 2px;
  float: left;
}

.key.black--key::after {
  background-color: #1d1e22;
  content: "";
  position: absolute;
  left: -18px;
  width: 32px;
  height: 100px;
}
```
