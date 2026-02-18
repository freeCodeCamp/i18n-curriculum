---
id: 5f356ed6cf6eab5f15f5cfe6
title: 第 20 步
challengeType: 0
dashedName: step-20
---

# --description--

`div` 元素主要用於設計版面配置，與你迄今為止使用的其他內容元素不同。為你的 `body` 元素添加一個 `div` 元素，然後將所有其他元素移動到新的 `div` 裡面。

在開啟的 `div` 頁籤中，為你的 `id` 屬性添加值為 `menu`。

# --hints--

你的開啟 `<div>` 頁籤應該有一個 `id` 屬性設定為 `menu`。

```js
assert.strictEqual(document.querySelector('div')?.id, 'menu');
```

你應該有一個結束的 `</div>` 頁籤。

```js
assert(code.match(/<\/div>/i));
```

你不應該更改你現有的 `body` 元素。請確保你沒有刪除結束標籤。

```js
assert.lengthOf(document.querySelectorAll('body'), 1);
```

你的 `div` 元素應該巢狀在 `body` 中。

```js
assert.equal(document.querySelector('div')?.parentElement?.tagName, 'BODY');
```

你應該將所有其他元素移動到新的 `div` 裡面。

```js
assert.lengthOf(document.querySelector('body > div#menu > main')?.children, 3);
```

# --seed--

## --seed-contents--

```html
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Cafe Menu</title>
    <link href="styles.css" rel="stylesheet"/>
  </head>
--fcc-editable-region--
  <body>
    <main>
      <h1>CAMPER CAFE</h1>
      <p>Est. 2020</p>
      <section>
        <h2>Coffee</h2>
      </section>
    </main>
  </body>
--fcc-editable-region--
</html>
```

```css
body {
  background-color: burlywood;
}

h1, h2, p {
  text-align: center;
}
```
