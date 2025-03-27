---
id: 587d7fa7367417b2b2512bc5
title: 使用 D3 中的動態數據
challengeType: 6
forumTopicId: 301498
dashedName: work-with-dynamic-data-in-d3
---

# --description--

The last two challenges cover the basics of displaying data dynamically with D3 using the `data()` and `enter()` methods. These methods take a data set and, together with the `append()` method, create a new DOM element for each entry in the data set.

在之前的挑戰中，你爲 `dataset` 數組中的每一個對象創建了一個新的 `h2` 元素，但是它們的文本都是相同的 `New Title`。 這是因爲你還沒有使用和每個 `h2` 元素關聯的數據。

`text()` 方法以字符串或者回調函數作爲參數：

```js
selection.text(d => d);
```

上面這個例子中的參數 `d` 指關聯數據集的一個對象。

使用當前示例作爲上下文，第一個 `h2` 元素綁定到 12，第二個 `h2` 元素綁定到 31，第三個 `h2` 元素綁定到 22，依此類推。

# --instructions--

修改 `text()` 方法，使每個 `h2` 元素顯示 `dataset` 數組中的對應值，加上一個空格和字符串 `USD`。 例如，第一個標題應該爲 `12 USD`。

# --hints--

第一個 `h2` 的文本爲 `12 USD`。

```js
assert.strictEqual(document.querySelectorAll('h2')[0]?.textContent, '12 USD');
```

第二個 `h2` 的文本爲 `31 USD`。

```js
assert.strictEqual(document.querySelectorAll('h2')[1]?.textContent, '31 USD');
```

第三個 `h2` 的文本爲 `22 USD`。

```js
assert.strictEqual(document.querySelectorAll('h2')[2]?.textContent, '22 USD');
```

第四個 `h2` 的文本爲 `17 USD`。

```js
assert.strictEqual(document.querySelectorAll('h2')[3]?.textContent, '17 USD');
```

第五個 `h2` 的文本爲 `25 USD`。

```js
assert.strictEqual(document.querySelectorAll('h2')[4]?.textContent, '25 USD');
```

第六個 `h2` 的文本爲 `18 USD`。

```js
assert.strictEqual(document.querySelectorAll('h2')[5]?.textContent, '18 USD');
```

第七個 `h2` 的文本爲 `29 USD`。

```js
assert.strictEqual(document.querySelectorAll('h2')[6]?.textContent, '29 USD');
```

第八個 `h2` 的文本爲 `14 USD`。

```js
assert.strictEqual(document.querySelectorAll('h2')[7]?.textContent, '14 USD');
```

第九個 `h2` 的文本爲 `9 USD`。

```js
assert.strictEqual(document.querySelectorAll('h2')[8]?.textContent, '9 USD');
```

# --seed--

## --seed-contents--

```html
<body>
  <script>
    const dataset = [12, 31, 22, 17, 25, 18, 29, 14, 9];

    d3.select('body')
      .selectAll('h2')
      .data(dataset)
      .enter()
      .append('h2')
      // Add your code below this line

      .text('New Title');

    // Add your code above this line
  </script>
</body>
```

# --solutions--

```html
<body>
  <script>
    const dataset = [12, 31, 22, 17, 25, 18, 29, 14, 9];

    d3.select('body')
      .selectAll('h2')
      .data(dataset)
      .enter()
      .append('h2')
      .text(d => `${d} USD`);
  </script>
</body>
```
