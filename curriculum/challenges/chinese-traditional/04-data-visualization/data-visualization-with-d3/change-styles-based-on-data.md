---
id: 587d7fa7367417b2b2512bc7
title: 根據數據更改樣式
challengeType: 6
forumTopicId: 301479
dashedName: change-styles-based-on-data
---

# --description--

D3 is about visualization and presentation of data. It's likely you'll want to change the styling of elements based on the data. For example, you may want to color a data point blue if it has a value less than 20, and red otherwise. You can use a callback function in the `style()` method and include the conditional logic. The callback function uses the `d` parameter to represent the data point:

```js
selection.style("color", (d) => {

});
```

`style()` 方法不僅僅可以設置 `color`——它也適用於其他 CSS 屬性。

# --instructions--

在編輯器中添加 `style()` 方法，根據條件設置 `h2` 元素的 `color` 屬性。 寫一個回調函數，如果數據值小於 20，則返回紅色（red），否則返回綠色（green）。

**注意：** 你可以使用 if-else 邏輯或者三元操作符。

# --hints--

第一個 `h2` 的 `color` 應該爲 red。

```js
assert($('h2').eq(0).css('color') == 'rgb(255, 0, 0)');
```

第二個 `h2` 的 `color` 應該爲 green。

```js
assert($('h2').eq(1).css('color') == 'rgb(0, 128, 0)');
```

第三個 `h2` 的 `color` 應該爲 green。

```js
assert($('h2').eq(2).css('color') == 'rgb(0, 128, 0)');
```

第四個 `h2` 的 `color` 應該爲 red。

```js
assert($('h2').eq(3).css('color') == 'rgb(255, 0, 0)');
```

第五個 `h2` 的 `color` 應該爲 green。

```js
assert($('h2').eq(4).css('color') == 'rgb(0, 128, 0)');
```

第六個 `h2` 的 `color` 應該爲 red。

```js
assert($('h2').eq(5).css('color') == 'rgb(255, 0, 0)');
```

第七個 `h2` 的 `color` 應該爲 green。

```js
assert($('h2').eq(6).css('color') == 'rgb(0, 128, 0)');
```

第八個 `h2` 的 `color` 應該爲 red。

```js
assert($('h2').eq(7).css('color') == 'rgb(255, 0, 0)');
```

第九個 `h2` 的 `color` 應該爲 red。

```js
assert($('h2').eq(8).css('color') == 'rgb(255, 0, 0)');
```

# --seed--

## --seed-contents--

```html
<body>
  <script>
    const dataset = [12, 31, 22, 17, 25, 18, 29, 14, 9];

    d3.select("body").selectAll("h2")
      .data(dataset)
      .enter()
      .append("h2")
      .text((d) => (d + " USD"))
      // Add your code below this line



      // Add your code above this line
  </script>
</body>
```

# --solutions--

```html
<body>
  <script>
    const dataset = [12, 31, 22, 17, 25, 18, 29, 14, 9];

    d3.select("body").selectAll("h2")
      .data(dataset)
      .enter()
      .append("h2")
      .text((d) => (d + " USD"))
      .style("color", (d) => d < 20 ? "red" : "green")
  </script>
</body>
```
