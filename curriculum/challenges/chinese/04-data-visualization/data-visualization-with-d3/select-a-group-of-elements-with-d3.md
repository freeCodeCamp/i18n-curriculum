---
id: 587d7fa6367417b2b2512bc3
title: 用 D3 选择一组元素
challengeType: 6
forumTopicId: 301490
dashedName: select-a-group-of-elements-with-d3
---

# --description--

D3 also has the `selectAll()` method to select a group of elements. It returns an array of HTML nodes for all the items in the document that match the input string. Here's an example to select all the anchor tags in a document:

```js
const anchors = d3.selectAll('a');
```

像 `select()` 方法一样，`selectAll()` 也支持链式调用，你可以在它之后调用其他方法。

# --instructions--

选择所有的 `li` 标签，通过 `.text()` 方法将它们的文本改为 `list item`。

# --hints--

页面上应该有 3 个 `li` 元素，每个元素的文本内容应为 `list item`。 大写和间距应完全匹配。

```js
const listItems = document.querySelectorAll('li');
assert.lengthOf(listItems, 3);
for (let i = 0; i < listItems.length; i++) {
  assert.match(listItems[i]?.textContent, /list item/g);
}
```

应该能访问 `d3` 的对象。

```js
assert.match(code, /d3/g);
```

应该使用 `selectAll` 方法。

```js
assert.match(code, /\.selectAll/g);
```

# --seed--

## --seed-contents--

```html
<body>
  <ul>
    <li>Example</li>
    <li>Example</li>
    <li>Example</li>
  </ul>
  <script>
    // Add your code below this line



    // Add your code above this line
  </script>
</body>
```

# --solutions--

```html
<body>
  <ul>
    <li>Example</li>
    <li>Example</li>
    <li>Example</li>
  </ul>
  <script>
    d3.selectAll('li').text('list item');
  </script>
</body>
```
