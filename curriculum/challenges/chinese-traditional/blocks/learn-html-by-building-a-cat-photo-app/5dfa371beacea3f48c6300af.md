---
id: 5dfa371beacea3f48c6300af
title: 步驟 21
challengeType: 0
dashedName: step-21
---

# --description--

When you add a lower rank heading element to the page, it's implied that you're starting a new subsection.

在第二個 `section` 元素的最後一個 `h2` 元素之後，添加一個 `h3` 元素，文本爲：

`Things cats love:`

# --hints--

第二個 `section` 元素缺失或沒有開始和結束標籤。

```js
assert(
  document.querySelectorAll('main > section')[1] &&
    code.match(/\<\/section>/g).length == 2
);
```

在第二個 `section` 元素的結束標籤上方應該有一個 `h3` 元素。

```js
assert(
  document.querySelectorAll('main > section')[1].lastElementChild.nodeName ===
    'H3'
);
```

你的 `h3` 元素應該有一個結束標籤。 結束標籤在 `<` 字符之後有一個 `/`。

```js
assert.lengthOf(code.match(/<\/h3>/g), 1);
```

第二個 `section` 元素的結束標籤上方的 `h3` 元素應該包含文本 `Things cats love:`。 確保在文本末尾包含冒號。

```js
assert(
  document
    .querySelectorAll('main > section')[1]
    .lastElementChild.innerText.toLowerCase()
    .replace(/\s+/g, ' ') === 'things cats love:'
);
```

嵌套在最後一個 `section` 元素中的最後一個 `h3` 元素之上，應該有一個 `h2` 元素，其文本爲 `Cat Lists`。 你可能不小心刪除了 `h2` 元素。

```js
const secondSectionLastElemNode = document.querySelectorAll('main > section')[1]
  .lastElementChild;
assert(
  secondSectionLastElemNode.nodeName === 'H3' &&
    secondSectionLastElemNode.previousElementSibling.innerText
      .toLowerCase()
      .replace(/\s+/g, ' ') === 'cat lists'
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
--fcc-editable-region--
      <section>
        <h2>Cat Lists</h2>

      </section>
--fcc-editable-region--
    </main>
  </body>
</html>
```

