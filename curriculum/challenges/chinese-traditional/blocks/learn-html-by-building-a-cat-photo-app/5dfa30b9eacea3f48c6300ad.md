---
id: 5dfa30b9eacea3f48c6300ad
title: Step 17
challengeType: 0
dashedName: step-25
---

# --description--

在之前的步驟中，你使用了錨元素將文本轉換爲鏈接。 其他類型的內容也可以通過將其包裝在錨標籤中來轉換爲鏈接。

這是一個將圖像轉換爲鏈接的示例：

```html
<a href="example-link">
  <img src="image-link.jpg" alt="A photo of a cat.">
</a>
```

通過使用必要的元素標籤將圖像轉換爲鏈接。 使用 `https://freecatphotoapp.com` 作爲錨元素的 `href` 屬性的值。

# --hints--

你應該有一個 `img` 元素，其 `src` 值爲 `https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg`。 你可能不小心刪除了它。

```js
assert(
  document.querySelector('img') &&
    document.querySelector('img').getAttribute('src') ===
      'https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg'
);
```

你的錨元素（`a`）應該有一個開始標籤。 開始標籤的語法爲：`<elementName>`。

```js
assert(document.querySelectorAll('a').length >= 2);
```

你在圖像之後缺少一個結束（`a`）標籤。

```js
assert.lengthOf(document.querySelectorAll('a'), 3);
```

你的錨元素（`a`）應該有一個結束標籤。 結束標籤在 `<` 字符之後有一個 `/`。

```js
assert(code.match(/<\/a>/g).length >= 2);
```

你應該只添加一個結束錨（`a`）標籤。 請刪除任何多餘的。

```js
assert.lengthOf(code.match(/<\/a>/g), 3);
```

你的錨元素（`a`）缺少一個 `href` 屬性。 檢查開始標記的名稱後面是否有空格和/或所有屬性名稱之前是否有空格。

```js
assert(document.querySelector('a').hasAttribute('href'));
```

你的錨（`a`）元素應該鏈接到 `https://freecatphotoapp.com`。 你要麼省略了 URL，要麼有拼寫錯誤。

```js
assert(
  document.querySelectorAll('a')[1].getAttribute('href') ===
    'https://freecatphotoapp.com'
);
```

你的錨元素（`a`）缺少 `href` 屬性。 確保在開始標籤的名稱後面有一個空格，且所有的屬性名稱前面也要有空格。

```js
assert.isTrue(document.querySelectorAll('a')[2]?.hasAttribute('href'));
```

你的錨元素（`a`）應該鏈接到 `https://freecatphotoapp.com`。 你可能忽略了 URL 或者有拼寫錯誤。

```js
assert.equal(
  document.querySelectorAll('a')[2]?.getAttribute('href').trim(),
    'https://freecatphotoapp.com'
);
```

Your `img` element should be nested within the anchor (`a`) element. The entire `img` element should be inside the opening and closing tags of the anchor (`a`) element.

```js
assert(document.querySelector('img').parentNode.nodeName === 'A');
```

# --seed--

## --seed-contents--

```html
<html>
  <body>
    <main>
      <h1>CatPhotoApp</h1>
      <h2>Cat Photos</h2>
      <p>Everyone loves <a href="https://cdn.freecodecamp.org/curriculum/cat-photo-app/running-cats.jpg">cute cats</a> online!</p>
      <p>See more <a target="_blank" href="https://freecatphotoapp.com">cat photos</a> in our gallery.</p>
--fcc-editable-region--
      <img src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg" alt="A cute orange cat lying on its back.">
--fcc-editable-region--
    </main>
  </body>
</html>
```

