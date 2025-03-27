---
id: 587d7fab367417b2b2512bda
title: 用 D3 创建线性比例尺
challengeType: 6
forumTopicId: 301483
dashedName: create-a-linear-scale-with-d3
---

# --description--

The bar and scatter plot charts both plotted data directly onto the SVG. However, if the height of a bar or one of the data points were larger than the SVG height or width values, it would go outside the SVG area.

在 D3 中，比例尺可帮助布局数据。 `scales` 是函数，它告诉程序如何将一组原始数据点映射到 SVG 上。

例如，假设你有一个 100x500 大小的 SVG，你想为许多国家绘制国内生产总值（GDP）的图表。 这组数据将在十亿美元或万亿美元的范围内。 你给 D3 提供一种比例尺，告诉它如何将大的 GDP 值放置在 100x500 大小的区域。

你不太可能按数据原本的大小来绘制图表。 在绘制之前，你可以设置整个数据集的比例尺，以便 `x` 和 `y` 值适合你的 SVG 的宽度和高度。

D3 有几种缩放类型。 对于线性缩放（通常使用于定量数据），使用 D3 的 `scaleLinear()` 方法：

```js
const scale = d3.scaleLinear();
```

默认情况下，比例尺使用一对一关系（identity relationship）。 输入的值和输出的值相同。 后面的挑战将涉及如何改变默认比例。

# --instructions--

更改 `scale` 变量，以创建线性比例。 然后将 `output` 变量设置为 scale 函数，调用函数时传入参数 `50`。

# --hints--

`h2` 的文本应为 `50`。

```js
assert.strictEqual(document.querySelector('h2')?.textContent, '50');
```

应使用 `scaleLinear()` 方法。

```js
assert.match(code, /\.scaleLinear/g);
```

`output` 变量应调用 `scale`，传入参数 `50`。

```js
assert.strictEqual(output, 50);
assert.match(code, /scale\(\s*50\s*\)/g);
```

# --seed--

## --seed-contents--

```html
<body>
  <script>
    // Add your code below this line

    const scale = undefined; // Create the scale here
    const output = scale(); // Call scale with an argument here

    // Add your code above this line

    d3.select('body').append('h2').text(output);
  </script>
</body>
```

# --solutions--

```html
<body>
  <script>
    const scale = d3.scaleLinear();
    const output = scale(50);

    d3.select('body').append('h2').text(output);
  </script>
</body>
```
