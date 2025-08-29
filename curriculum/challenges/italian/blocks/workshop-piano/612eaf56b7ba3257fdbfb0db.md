---
id: 612eaf56b7ba3257fdbfb0db
title: Passo 19
challengeType: 0
dashedName: step-19
---

# --description--

The piano needs the freeCodeCamp logo to make it official.

Aggiungi un elemento `img` prima dell'elemento `.keys`. Assegna all'elemento `img` un valore `class` di `logo` e imposta l'`src` su `https://cdn.freecodecamp.org/platform/universal/fcc_primary.svg`. Dagli un testo `alt` di `freeCodeCamp Logo`.

# --hints--

Dovresti aggiungere un nuovo elemento `img`.

```js
assert.lengthOf(document.querySelectorAll('img'), 1);
```

L'elemento `img` dovrebbe trovarsi prima del primo elemento `.keys`.

```js
const img = document.querySelector('img');
assert.equal(img?.nextElementSibling?.className, 'keys');
assert.isNull(img?.previousElementSibling);
```

L'elemento `img` dovrebbe avere l'attributo `class` impostato su `logo`.

```js
const img = document.querySelector('img');
assert.equal(img?.className, 'logo');
```

L'elemento `img` dovrebbe avere un `src` impostato su `https://cdn.freecodecamp.org/platform/universal/fcc_primary.svg`.

```js
const img = document.querySelector('img');
assert.equal(img?.getAttribute('src'), 'https://cdn.freecodecamp.org/platform/universal/fcc_primary.svg');
```

L'elemento `img` dovrebbe avere un attributo `alt` impostato su `freeCodeCamp Logo`.

```js
assert.equal(document.querySelector('img')?.getAttribute('alt')?.toLowerCase(), 'freecodecamp logo');
```

Fai attenzione alle maiuscole/minuscole e all'ortografia.

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
    --fcc-editable-region--
    <div id="piano">
      <div class="keys">
    --fcc-editable-region--
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
