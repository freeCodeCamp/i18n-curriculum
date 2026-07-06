---
id: 612e8eebe3a6dc3fcc33a66f
title: الخطوة 11
challengeType: 0
dashedName: step-11
---

# --description--

استهدف الآن عنصر `#piano` باستخدام محدِّد `id`. عيّن خاصية `background-color` إلى `#00471b`، وخاصية `width` إلى `992px`، وخاصية `height` إلى `290px`.

# --hints--

يجب أن يكون لديك محدِّد `#piano`.

```js
assert(new __helpers.CSSHelp(document).getStyle('#piano'));
```

يجب أن يحتوي محدِّد `#piano` على خاصية `background-color` مضبوطة إلى `#00471b`.

```js
assert(new __helpers.CSSHelp(document).getStyle('#piano')?.backgroundColor === 'rgb(0, 71, 27)');
```

يجب أن يحتوي محدِّد `#piano` على خاصية `width` مضبوطة إلى `992px`.

```js
assert(new __helpers.CSSHelp(document).getStyle('#piano')?.width === '992px');
```

يجب أن يحتوي محدِّد `#piano` على خاصية `height` مضبوطة إلى `290px`.

```js
assert(new __helpers.CSSHelp(document).getStyle('#piano')?.height === '290px');
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
