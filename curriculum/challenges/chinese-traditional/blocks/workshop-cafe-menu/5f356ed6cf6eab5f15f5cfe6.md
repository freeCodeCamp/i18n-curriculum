---
id: 5f356ed6cf6eab5f15f5cfe6
title: Step 16
challengeType: 0
dashedName: step-16
---

# --description--

`div` 元素主要用於設計佈局，這與你迄今爲止使用的其他內容元素不同。 在 `body` 元素內添加一個 `div` 元素，然後將所有其他元素移到新的 `div` 內。

在 `div` 開始標籤中，添加一個值爲 `menu` 的 `id` 屬性。

# --hints--

你的 `div` 開始標籤的 `id` 屬性值應爲 `menu`。

```js
assert.strictEqual(document.querySelector('div')?.id, 'menu');
```

你應該有一個 `</div>` 結束標籤。

```js
assert.match(code, /<\/div>/i);
```

你不應該改變你現有的 `body`元素。 確保你沒有刪除結束標籤。

```js
assert.lengthOf(document.querySelectorAll('body'), 1);
```

你的 `div` 元素應該嵌套在 `body` 元素內。

```js
assert.equal(document.querySelector('div')?.parentElement?.tagName, 'BODY');
```

你應該將所有其他元素都移動到新的 `div`元素 中。

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
  <body>
--fcc-editable-region--
    <main>
      <h1>CAMPER CAFE</h1>
      <p>Est. 2020</p>
      <section>
        <h2>Coffee</h2>
      </section>
    </main>
--fcc-editable-region--
  </body>
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
