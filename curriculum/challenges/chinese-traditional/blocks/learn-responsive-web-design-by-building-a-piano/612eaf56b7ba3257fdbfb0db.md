---
id: 612eaf56b7ba3257fdbfb0db
title: 第 21 步
challengeType: 0
dashedName: step-21
---

# --description--

鋼琴需要 freeCodeCamp 標誌才能使其正式。

在你的 `.keys` 元素前添加一個 `img` 元素。為 `img` 指定一個 `class` 為 `logo`，並將 `src` 設定為 `https://cdn.freecodecamp.org/platform/universal/fcc_primary.svg`。為它指定一個 `alt` 文字為 `freeCodeCamp Logo`。

# --hints--

你應該添加一個新的 `img` 元素。

```js
assert(document.querySelectorAll('img')?.length === 1);
```

你的 `img` 元素應該放在你的第一個 `.keys` 元素之前。

```js
const img = document.querySelector('img');
assert(img?.nextElementSibling?.className === 'keys');
assert(img?.previousElementSibling === null);
```

你的 `img` 元素應該設定一個 `class` 為 `logo`。

```js
const img = document.querySelector('img');
assert(img?.className === 'logo');
```

你的 `img` 元素應該有一個 `src` 設定為 `https://cdn.freecodecamp.org/platform/universal/fcc_primary.svg`。

```js
const img = document.querySelector('img');
assert(img?.getAttribute('src') === 'https://cdn.freecodecamp.org/platform/universal/fcc_primary.svg');
```

你的 `img` 元素應該有一個設定為 `freeCodeCamp Logo` 的 `alt` 屬性。

```js
assert(document.querySelector('img')?.getAttribute('alt')?.toLowerCase() === 'freecodecamp logo');
```

請記住大小寫和拼寫很重要。

```js
assert(document.querySelector('img')?.getAttribute('alt') === 'freeCodeCamp Logo');
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
