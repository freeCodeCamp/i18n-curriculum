---
id: 612e8eebe3a6dc3fcc33a66f
title: Passo 9
challengeType: 0
dashedName: step-9
---

# --description--

Agora dê ao elemento `#piano` um seletor `id`. Defina a propriedade `background-color` para `#00471b`, a propriedade `width` para `992px` e a propriedade `height` para `290px`.

# --hints--

Você deve ter um seletor `#piano`.

```js
assert.exists(new __helpers.CSSHelp(document).getStyle('#piano'));
```

O seletor `#piano` deve ter a propriedade `background-color` definida como `#00471b`.

```js
assert.equal(new __helpers.CSSHelp(document).getStyle('#piano')?.backgroundColor, 'rgb(0, 71, 27)');
```

O seletor `#piano` deve ter a propriedade `width` definida como `992px`.

```js
assert.equal(new __helpers.CSSHelp(document).getStyle('#piano')?.width, '992px');
```

O seletor `#piano` deve ter a propriedade `height` definida como `290px`.

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
