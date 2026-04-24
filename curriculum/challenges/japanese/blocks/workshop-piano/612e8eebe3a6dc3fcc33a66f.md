---
id: 612e8eebe3a6dc3fcc33a66f
title: ステップ 9
challengeType: 0
dashedName: step-9
---

# --description--

今、`#piano` 要素を `id` セレクターで指定してください。`background-color` プロパティを `#00471b` に、`width` プロパティを `992px` に、`height` プロパティを `290px` に設定してください。

# --hints--

`#piano` セレクターが必要です。

```js
assert.exists(new __helpers.CSSHelp(document).getStyle('#piano'));
```

`#piano` セレクターには `background-color` プロパティを `#00471b` に設定してください。

```js
assert.equal(new __helpers.CSSHelp(document).getStyle('#piano')?.backgroundColor, 'rgb(0, 71, 27)');
```

`#piano` セレクターには `width` プロパティを `992px` に設定してください。

```js
assert.equal(new __helpers.CSSHelp(document).getStyle('#piano')?.width, '992px');
```

`#piano` セレクターには `height` を `290px` に設定してください。

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
