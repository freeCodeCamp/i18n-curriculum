---
id: 5dfa371beacea3f48c6300af
title: 第 21 步
challengeType: 0
dashedName: step-21
---

# --description--

當你將較低等級的標題元素添加到頁面時，表示你正在開始一個新的子章節。

在第二個 `section` 元素的最後一個 `h2` 元素之後，添加一個帶有此文字的 `h3` 元素：

`Things cats love:`

# --hints--

第二個 `section` 元素似乎遺失或沒有同時包含開啟和關閉的標籤。

```js
assert.exists(document.querySelectorAll('main > section')[1]);
assert.lengthOf(code.match(/\<\/section>/g), 2);
```

在第二個 `section` 元素的結束標籤正上方應該有一個 `h3` 元素。

```js
assert.equal(
  document.querySelectorAll('main > section')[1]?.lastElementChild.nodeName,
    'H3'
);
```

你的 `h3` 元素應該有一個結束標籤。結束標籤在 `<` 字元後面緊接著有一個 `/`。

```js
assert.lengthOf(code.match(/<\/h3>/g), 1);
```

第二個 `section` 元素結束標籤正上方的 `h3` 元素應該有文字 `Things cats love:`。請確保文字結尾包含冒號。

```js
assert.equal(
  document
    .querySelectorAll('main > section')[1]
    ?.lastElementChild.innerText?.trim().toLowerCase()
    .replace(/\s+/g, ' '), 'things cats love:'
);
```

在最後一個巢狀於最後一個 `section` 元素中的 `h3` 元素上方，應該有一個文字為 `Cat Lists` 的 `h2` 元素。你可能不小心刪除了該 `h2` 元素。

```js
const secondSectionLastElemNode = document.querySelectorAll('main > section')[1]
  ?.lastElementChild;
assert.equal( secondSectionLastElemNode?.nodeName, 'H3');
assert.equal(
 secondSectionLastElemNode?.previousElementSibling.innerText?.trim()
      .toLowerCase()
      .replace(/\s+/g, ' '), 'cat lists'
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
--fcc-editable-region--
        
--fcc-editable-region--
      </section>
    </main>
  </body>
</html>
```
