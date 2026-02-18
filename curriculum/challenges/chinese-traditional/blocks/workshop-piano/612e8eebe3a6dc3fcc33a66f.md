---
id: 612e8eebe3a6dc3fcc33a66f
title: 第 9 步
challengeType: 0
dashedName: step-9
---

# --description--

現在使用 `id` 選擇器將標的設定為你的 `#piano` 元素。將其 `background-color` 屬性設為 `#00471b`，`width` 屬性設為 992px，`height` 屬性設為 290px。

# --hints--

你應該有一個 `#piano` 選擇器。

```js
assert.exists(new __helpers.CSSHelp(document).getStyle('#piano'));
```

你的 `#piano` 選擇器應該設定 `background-color` 屬性為 `#00471b`。

```js
assert.equal(new __helpers.CSSHelp(document).getStyle('#piano')?.backgroundColor, 'rgb(0, 71, 27)');
```

你的 `#piano` 選擇器應該有一個設定為 `992px` 的 `width` 屬性。

```js
assert.equal(new __helpers.CSSHelp(document).getStyle('#piano')?.width, '992px');
```

你的 `#piano` 選擇器應該將 `height` 設定為 `290px`。

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
