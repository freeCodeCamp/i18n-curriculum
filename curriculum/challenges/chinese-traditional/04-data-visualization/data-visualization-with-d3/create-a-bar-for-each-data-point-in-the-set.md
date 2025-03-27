---
id: 587d7fa8367417b2b2512bcd
title: 爲集合中的每個數據點創建一個數據條
challengeType: 6
forumTopicId: 301482
dashedName: create-a-bar-for-each-data-point-in-the-set
---

# --description--

The last challenge added only one rectangle to the `svg` element to represent a bar. Here, you'll combine what you've learned so far about `data()`, `enter()`, and SVG shapes to create and append a rectangle for each data point in `dataset`.

之前的挑戰展示瞭如何爲 `dataset` 中的每個對象創建並添加一個 `div`：

```js
d3.select('body')?.selectAll('div').data(dataset).enter().append('div');
```

操作 `rect` 元素和 `div` 元素有一些不同。 `rect` 元素必須添加在 `svg` 元素內，而不能直接添加在 `body` 內。 同時，你需要告訴 D3 將 `rect` 放在 `svg` 區域的哪個位置。 條形的放置會在下一個挑戰中講到。

# --instructions--

用 `data()`、`enter()`、`append()` 方法爲 `dataset` 中的每一個對象創建並添加一個 `rect` 。 每個數據條都將直接顯示在上一個數據條的上面，這一點將在下一個挑戰中實現。

# --hints--

應該包含 9 個 `rect` 元素。

```js
assert.lengthOf(document.querySelectorAll('rect'), 9);
```

應該使用 `data()` 方法。

```js
assert.match(code, /\.data/g);
```

應該使用 `enter()` 方法。

```js
assert.match(code, /\.enter/g);
```

應該使用 `append()` 方法。

```js
assert.match(code, /\.append/g);
```

# --seed--

## --seed-contents--

```html
<body>
  <script>
    const dataset = [12, 31, 22, 17, 25, 18, 29, 14, 9];

    const w = 500;
    const h = 100;

    const svg = d3
      .select('body')
      .append('svg')
      .attr('width', w)
      .attr('height', h);

    svg
      .selectAll('rect')
      // Add your code below this line

      // Add your code above this line
      .attr('x', 0)
      .attr('y', 0)
      .attr('width', 25)
      .attr('height', 100);
  </script>
</body>
```

# --solutions--

```html
<body>
  <script>
    const dataset = [12, 31, 22, 17, 25, 18, 29, 14, 9];

    const w = 500;
    const h = 100;

    const svg = d3
      .select('body')
      .append('svg')
      .attr('width', w)
      .attr('height', h);

    svg
      .selectAll('rect')
      .data(dataset)
      .enter()
      .append('rect')
      .attr('x', 0)
      .attr('y', 0)
      .attr('width', 25)
      .attr('height', 100);
  </script>
</body>
```
