---
id: 5dfa30b9eacea3f48c6300ad
title: 第 17 步
challengeType: 0
dashedName: step-17
---

# --description--

在先前的步驟中，你使用了錨點元素將文字轉換成聯結。其他型別的內容也可以透過將其包裹在錨點頁籤中來轉換成聯結。 

以下是將影像轉換為聯結的範例：

```html
<a href="example-link">
  <img src="image-link.jpg" alt="A photo of a cat.">
</a>
```

將影像包圍在必要的元素標記中，將其轉換為聯結。使用 `https://freecatphotoapp.com` 作為錨點的 `href` 屬性值。

# --hints--

你應該有一個 `img` 元素，其 `src` 值為 `https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg`。你可能不小心刪除了它。

```js
assert(
  document.querySelector('img') &&
    document.querySelector('img').getAttribute('src') ===
      'https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg'
);
```

你的錨點（`a`）元素應該有一個開啟標籤。開啟標籤具有此語法：`<elementName>`。

```js
assert(document.querySelectorAll('a').length >= 2);
```

你在影像後面遺漏了關閉的 (`a`) 頁籤。

```js
assert.lengthOf(document.querySelectorAll('a'), 3);
```

你的錨點（`a`）元素應該有一個結束標籤。結束標籤在 `<` 字元後面緊接著有一個 `/`。

```js
assert(code.match(/<\/a>/g).length >= 2);
```

你應該只添加一個關閉的錨點（`a`）標籤。請移除任何多餘的標籤。

```js
assert.lengthOf(code.match(/<\/a>/g), 3);
```

你的錨點（`a`）元素沒有 `href` 屬性。請檢查開啟標籤名稱後是否有空格和／或所有屬性名稱前是否有空格。

```js
assert(document.querySelector('a').hasAttribute('href'));
```

你的錨點（`a`）元素應該要連結到 `https://freecatphotoapp.com`。你要麼遺漏了 URL，要麼有拼寫錯誤。

```js
assert(
  document.querySelectorAll('a')[1].getAttribute('href') ===
    'https://freecatphotoapp.com'
);
```

你的錨點（`a`）元素沒有 `href` 屬性。請檢查開啟標籤名稱後是否有空格和／或所有屬性名稱前是否有空格。

```js
assert.isTrue(document.querySelectorAll('a')[2]?.hasAttribute('href'));
```

你的錨點（`a`）元素應該要連結到 `https://freecatphotoapp.com`。你要麼遺漏了 URL，要麼有拼寫錯誤。

```js
assert.equal(
  document.querySelectorAll('a')[2]?.getAttribute('href').trim(),
    'https://freecatphotoapp.com'
);
```

你的 `img` 元素應該巢狀在錨點（`a`）元素內。整個 `img` 元素應該位於錨點（`a`）元素的開啟和關閉標籤之間。

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

