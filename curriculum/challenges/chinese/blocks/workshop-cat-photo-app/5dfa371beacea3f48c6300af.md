---
id: 5dfa371beacea3f48c6300af
title: 步骤21
challengeType: 0
dashedName: step-21
---

# --description--

当你向页面添加较低级别标题元素时，这意味着你正在开始一个新的子部分。

在第二个 `section` 元素的最后一个 `h2` 元素之后，添加一个 `h3` 元素，文本为：

`Things cats love:`

# --hints--

第二个 `section` 元素缺失或没有开始和结束标签。

```js
assert.exists(document.querySelectorAll('main > section')[1]);
assert.lengthOf(code.match(/\<\/section>/g), 2);
```

在第二个 `section` 元素的结束标签上方应该有一个 `h3` 元素。

```js
assert.equal(
  document.querySelectorAll('main > section')[1]?.lastElementChild.nodeName,
    'H3'
);
```

你的 `h3` 元素应该有一个结束标签。 结束标签在 `<` 字符之后有一个 `/`。

```js
assert.lengthOf(code.match(/<\/h3>/g), 1);
```

第二个 `section` 元素的结束标签上方的 `h3` 元素应该包含文本 `Things cats love:`。 确保在文本末尾包含冒号。

```js
assert.equal(
  document
    .querySelectorAll('main > section')[1]
    ?.lastElementChild.innerText?.trim().toLowerCase()
    .replace(/\s+/g, ' '), 'things cats love:'
);
```

嵌套在最后一个 `section` 元素中的最后一个 `h3` 元素之上，应该有一个 `h2` 元素，其文本为 `Cat Lists`。 你可能不小心删除了 `h2` 元素。

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
