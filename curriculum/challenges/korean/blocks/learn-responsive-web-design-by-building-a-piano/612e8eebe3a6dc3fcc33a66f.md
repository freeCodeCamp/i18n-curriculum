---
id: 612e8eebe3a6dc3fcc33a66f
title: 11단계
challengeType: 0
dashedName: step-11
---

# --description--

이제 `#piano` 요소를 `id` 선택자로 지정하세요. `background-color` 속성을 `#00471b`로, `width` 속성을 `992px`로, `height` 속성을 `290px`로 설정하세요.

# --hints--

`#piano` 선택자가 있어야 합니다.

```js
assert(new __helpers.CSSHelp(document).getStyle('#piano'));
```

`#piano` 선택자에 `background-color` 속성이 `#00471b`로 설정되어야 합니다.

```js
assert(new __helpers.CSSHelp(document).getStyle('#piano')?.backgroundColor === 'rgb(0, 71, 27)');
```

`#piano` 선택자에 `width` 속성이 `992px`로 설정되어야 합니다.

```js
assert(new __helpers.CSSHelp(document).getStyle('#piano')?.width === '992px');
```

`#piano` 선택자에 `height`가 `290px`로 설정되어야 합니다.

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
