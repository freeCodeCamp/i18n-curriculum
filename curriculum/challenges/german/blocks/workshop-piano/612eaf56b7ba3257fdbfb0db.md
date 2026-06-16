---
id: 612eaf56b7ba3257fdbfb0db
title: Schritt 19
challengeType: 0
dashedName: step-19
---

# --description--

Das Klavier benötigt das freeCodeCamp-Logo, um offiziell zu sein.

Fügen Sie ein `img`-Element vor Ihrem `.keys`-Element hinzu. Geben Sie dem `img` ein `class` von `logo` und setzen Sie das `src` auf `https://cdn.freecodecamp.org/platform/universal/fcc_primary.svg`. Geben Sie ihm einen `alt`-Text von `freeCodeCamp Logo`.

# --hints--

Sie sollten ein neues `img`-Element hinzufügen.

```js
assert.lengthOf(document.querySelectorAll('img'), 1);
```

Ihr `img`-Element sollte vor Ihrem ersten `.keys`-Element stehen.

```js
const img = document.querySelector('img');
assert.equal(img?.nextElementSibling?.className, 'keys');
assert.isNull(img?.previousElementSibling);
```

Ihr `img`-Element sollte ein `class` mit dem Wert `logo` haben.

```js
const img = document.querySelector('img');
assert.equal(img?.className, 'logo');
```

Ihr `img`-Element sollte ein `src` mit dem Wert `https://cdn.freecodecamp.org/platform/universal/fcc_primary.svg` haben.

```js
const img = document.querySelector('img');
assert.equal(img?.getAttribute('src'), 'https://cdn.freecodecamp.org/platform/universal/fcc_primary.svg');
```

Ihr `img`-Element sollte ein `alt`-Attribut mit dem Wert `freeCodeCamp Logo` haben.

```js
assert.equal(document.querySelector('img')?.getAttribute('alt')?.toLowerCase(), 'freecodecamp logo');
```

Denken Sie daran, dass Groß- und Kleinschreibung sowie Rechtschreibung wichtig sind.

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
