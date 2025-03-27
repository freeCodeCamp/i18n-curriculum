---
id: 587d7fa6367417b2b2512bc3
title: 用 D3 選擇一組元素
challengeType: 6
forumTopicId: 301490
dashedName: select-a-group-of-elements-with-d3
---

# --description--

D3 also has the `selectAll()` method to select a group of elements. It returns an array of HTML nodes for all the items in the document that match the input string. Here's an example to select all the anchor tags in a document:

```js
const anchors = d3.selectAll('a');
```

像 `select()` 方法一樣，`selectAll()` 也支持鏈式調用，你可以在它之後調用其他方法。

# --instructions--

選擇所有的 `li` 標籤，通過 `.text()` 方法將它們的文本改爲 `list item`。

# --hints--

頁面上應該有 3 個 `li` 元素，每個元素的文本內容應爲 `list item`。 大寫和間距應完全匹配。

```js
const listItems = document.querySelectorAll('li');
assert.lengthOf(listItems, 3);
for (let i = 0; i < listItems.length; i++) {
  assert.match(listItems[i]?.textContent, /list item/g);
}
```

應該能訪問 `d3` 的對象。

```js
assert.match(code, /d3/g);
```

應該使用 `selectAll` 方法。

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
