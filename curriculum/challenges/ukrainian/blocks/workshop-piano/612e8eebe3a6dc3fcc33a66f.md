---
id: 612e8eebe3a6dc3fcc33a66f
title: Крок 9
challengeType: 0
dashedName: step-9
---

# --description--

Тепер націльте свій `#piano` елемент за допомогою `id` селектора. Встановіть його `background-color` властивість у `#00471b`, `width` властивість у `992px` і `height` властивість у `290px`.

# --hints--

Ви повинні мати `#piano` селектор.

```js
assert.exists(new __helpers.CSSHelp(document).getStyle('#piano'));
```

Ваш `#piano` селектор має мати `background-color` властивість, встановлену в `#00471b`.

```js
assert.equal(new __helpers.CSSHelp(document).getStyle('#piano')?.backgroundColor, 'rgb(0, 71, 27)');
```

Ваш `#piano` селектор має мати `width` властивість, встановлену в `992px`.

```js
assert.equal(new __helpers.CSSHelp(document).getStyle('#piano')?.width, '992px');
```

Ваш `#piano` селектор має мати `height`, встановлену в `290px`.

```js
assert.equal(new __helpers.CSSHelp(document).getStyle('#piano')?.height, '290px');
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

--fcc-editable-region--

--fcc-editable-region--
```
