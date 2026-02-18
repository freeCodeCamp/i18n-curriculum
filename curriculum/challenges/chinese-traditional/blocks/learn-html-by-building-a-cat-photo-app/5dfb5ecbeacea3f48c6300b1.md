---
id: 5dfb5ecbeacea3f48c6300b1
title: 第 23 步
challengeType: 0
dashedName: step-23
---

# --description--

`li` 元素用於在有序或無序列表中創建列表項目。

以下是無序列表中列表項目的範例：

```html
<ul>
  <li>milk</li>
  <li>cheese</li>
</ul>
```

在 `ul` 元素中巢狀三個列表項目以顯示貓咪喜歡的三樣東西：

`catnip`

`laser pointers`

`lasagna` 

# --hints--

你應該有三個 `li` 元素。每個 `li` 元素都應該有自己的開啟和關閉標籤。

```js
assert.lengthOf(document.querySelectorAll('li'),3)
assert.lengthOf(code.match(/<\/li\>/g),3);
```

你應該有三個帶有 `catnip`、`laser pointers` 和 `lasagna` 文字的 `li` 元素，順序不限。你要麼遺漏了一些文字，要麼有拼寫錯誤。

```js
assert.deepStrictEqual(
  [...document.querySelectorAll('li')]
    .map((item) => item.innerText.toLowerCase())
    .sort((a, b) => a.localeCompare(b)),
  ['catnip', 'lasagna', 'laser pointers']
);
```

三個 `li` 元素應該位於 `ul` 元素的開啟與關閉標籤之間。

```js
assert(
  [...document.querySelectorAll('li')].filter(
    (item) => item.parentNode.nodeName === 'UL'
  ).length === 3
);
```

# --seed--

## --seed-contents--

```html
<html>
  <body>
    <main>
      <h1>CatPhotoApp</h1>
      <section>
        <h2>Cat Photos</h2>
        <p>Everyone loves <a href="https://cdn.freecodecamp.org/curriculum/cat-photo-app/running-cats.jpg">cute cats</a> online!</p>
        <p>See more <a target="_blank" href="https://freecatphotoapp.com">cat photos</a> in our gallery.</p>
        <a href="https://freecatphotoapp.com"><img src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg" alt="A cute orange cat lying on its back."></a>
      </section>
      <section>
        <h2>Cat Lists</h2>
        <h3>Things cats love:</h3>
--fcc-editable-region--
        <ul>
          
        </ul>
--fcc-editable-region--
      </section>
    </main>
  </body>
</html>
```

