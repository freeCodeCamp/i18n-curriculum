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
selection.style('color', d => {});
```

`style()` 方法不僅僅可以設置 `color`——它也適用於其他 CSS 屬性。

# --instructions--

在編輯器中添加 `style()` 方法，根據條件設置 `h2` 元素的 `color` 屬性。 寫一個回調函數，如果數據值小於 20，則返回紅色（red），否則返回綠色（green）。

**注意：** 你可以使用 if-else 邏輯或者三元操作符。

# --hints--

第一個 `h2` 的 `color` 應該爲 red。

```js
const headingTwoFirst = document.querySelector('h2');
assert.exists(headingTwoFirst); 
const color = window.getComputedStyle(headingTwoFirst)['color'];
assert.strictEqual(color, 'rgb(255, 0, 0)');
```

第二個 `h2` 的 `color` 應該爲 green。

```js
const headingTwoSecond = document.querySelectorAll('h2')[1];
assert.exists(headingTwoSecond); 
const color = window.getComputedStyle(headingTwoSecond)['color'];
assert.strictEqual(color, 'rgb(0, 128, 0)');
```

第三個 `h2` 的 `color` 應該爲 green。

```js
const headingTwoThird = document.querySelectorAll('h2')[2];
assert.exists(headingTwoThird); 
const color = window.getComputedStyle(headingTwoThird)['color'];
assert.strictEqual(color, 'rgb(0, 128, 0)');
```

第四個 `h2` 的 `color` 應該爲 red。

```js
const headingTwoFourth = document.querySelectorAll('h2')[3];
assert.exists(headingTwoFourth); 
const color = window.getComputedStyle(headingTwoFourth)['color'];
assert.strictEqual(color, 'rgb(255, 0, 0)');
```

第五個 `h2` 的 `color` 應該爲 green。

```js
const headingTwoFifth = document.querySelectorAll('h2')[4];
assert.exists(headingTwoFifth); 
const color = window.getComputedStyle(headingTwoFifth)['color'];
assert.strictEqual(color, 'rgb(0, 128, 0)');
```

第六個 `h2` 的 `color` 應該爲 red。

```js
const headingTwoSixth = document.querySelectorAll('h2')[5];
assert.exists(headingTwoSixth); 
const color = window.getComputedStyle(headingTwoSixth)['color'];
assert.strictEqual(color, 'rgb(255, 0, 0)');
```

第七個 `h2` 的 `color` 應該爲 green。

```js
const headingTwoSeventh = document.querySelectorAll('h2')[6];
assert.exists(headingTwoSeventh); 
const color = window.getComputedStyle(headingTwoSeventh)['color'];
assert.strictEqual(color, 'rgb(0, 128, 0)');
```

第八個 `h2` 的 `color` 應該爲 red。

```js
const headingTwoEighth = document.querySelectorAll('h2')[7];
assert.exists(headingTwoEighth); 
const color = window.getComputedStyle(headingTwoEighth)['color'];
assert.strictEqual(color, 'rgb(255, 0, 0)');
```

第九個 `h2` 的 `color` 應該爲 red。

```js
const headingTwoNinth = document.querySelectorAll('h2')[8];
assert.exists(headingTwoNinth); 
const color = window.getComputedStyle(headingTwoNinth)['color'];
assert.strictEqual(color, 'rgb(255, 0, 0)');
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
      .text(d => d + ' USD');
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

    d3.select('body')
      .selectAll('h2')
      .data(dataset)
      .enter()
      .append('h2')
      .text(d => d + ' USD')
      .style('color', d => (d < 20 ? 'red' : 'green'));
  </script>
</body>
```
