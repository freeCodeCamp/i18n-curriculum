---
id: 612eaf56b7ba3257fdbfb0db
title: Step 19
challengeType: 0
dashedName: step-19
---

# --description--

ピアノを公式にするために freeCodeCamp のロゴが必要です。

`img` 要素の前に `.keys` 要素を追加してください。`img` に `class` を `logo` に設定し、`src` を `https://cdn.freecodecamp.org/platform/universal/fcc_primary.svg` に設定してください。`alt` のテキストを `freeCodeCamp Logo` にしてください。

# --hints--

新しい `img` 要素を追加する必要があります。

```js
assert.lengthOf(document.querySelectorAll('img'), 1);
```

`img` 要素は最初の `.keys` 要素の前に来るべきです。

```js
const img = document.querySelector('img');
assert.equal(img?.nextElementSibling?.className, 'keys');
assert.isNull(img?.previousElementSibling);
```

`img` 要素には `class` を `logo` に設定してください。

```js
const img = document.querySelector('img');
assert.equal(img?.className, 'logo');
```

`img` 要素には `src` を `https://cdn.freecodecamp.org/platform/universal/fcc_primary.svg` に設定してください。

```js
const img = document.querySelector('img');
assert.equal(img?.getAttribute('src'), 'https://cdn.freecodecamp.org/platform/universal/fcc_primary.svg');
```

`img` 要素には `alt` 属性を `freeCodeCamp Logo` に設定してください。

```js
assert.equal(document.querySelector('img')?.getAttribute('alt')?.toLowerCase(), 'freecodecamp logo');
```

大文字・小文字やスペルが重要であることを忘れないでください。

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
