---
id: 612e8eebe3a6dc3fcc33a66f
title: Passaggio 11
challengeType: 0
dashedName: step-11
---

# --description--

Ora seleziona il tuo elemento `#piano` con un selettore `id`. Imposta la proprietà `background-color` su `#00471b`, la proprietà `width` su `992px` e la proprietà `height` su `290px`.

# --hints--

Dovresti avere un selettore `#piano`.

```js
assert(new __helpers.CSSHelp(document).getStyle('#piano'));
```

Il tuo selettore `#piano` dovrebbe avere la proprietà `background-color` impostata su `#00471b`.

```js
assert(new __helpers.CSSHelp(document).getStyle('#piano')?.backgroundColor === 'rgb(0, 71, 27)');
```

Il tuo selettore `#piano` dovrebbe avere una proprietà `width` impostata su `992px`.

```js
assert(new __helpers.CSSHelp(document).getStyle('#piano')?.width === '992px');
```

Il tuo selettore `#piano` dovrebbe avere la proprietà `height` impostata su `290px`.

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
