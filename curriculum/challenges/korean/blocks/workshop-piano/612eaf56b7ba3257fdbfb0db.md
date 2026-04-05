---
id: 612eaf56b7ba3257fdbfb0db
title: Step 19
challengeType: 0
dashedName: step-19
---

# --description--

피아노에 freeCodeCamp 로고를 추가해 공식적으로 만드세요.

`img` 요소 앞에 `.keys` 요소를 추가하세요. `img`에 `class`를 `logo`로 지정하고, `src`를 `https://cdn.freecodecamp.org/platform/universal/fcc_primary.svg`로 설정하세요. `alt` 텍스트는 `freeCodeCamp Logo`로 지정하세요.

# --hints--

새로운 `img` 요소를 추가해야 합니다.

```js
assert.lengthOf(document.querySelectorAll('img'), 1);
```

`img` 요소는 첫 번째 `.keys` 요소 앞에 와야 합니다.

```js
const img = document.querySelector('img');
assert.equal(img?.nextElementSibling?.className, 'keys');
assert.isNull(img?.previousElementSibling);
```

`img` 요소에 `class`가 `logo`로 설정되어야 합니다.

```js
const img = document.querySelector('img');
assert.equal(img?.className, 'logo');
```

`img` 요소에 `src`가 `https://cdn.freecodecamp.org/platform/universal/fcc_primary.svg`로 설정되어야 합니다.

```js
const img = document.querySelector('img');
assert.equal(img?.getAttribute('src'), 'https://cdn.freecodecamp.org/platform/universal/fcc_primary.svg');
```

`img` 요소에 `alt` 속성이 `freeCodeCamp Logo`로 설정되어야 합니다.

```js
assert.equal(document.querySelector('img')?.getAttribute('alt')?.toLowerCase(), 'freecodecamp logo');
```

대소문자와 철자가 정확해야 합니다.

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
