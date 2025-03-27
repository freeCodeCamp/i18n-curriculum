---
id: 587d7fa8367417b2b2512bcc
title: 用 SVG 顯示形狀
challengeType: 6
forumTopicId: 301485
dashedName: display-shapes-with-svg
---

# --description--

The last challenge created an `svg` element with a given width and height, which was visible because it had a `background-color` applied to it in the `style` tag. The code made space for the given width and height.

下一步是在 `svg` 區域中創建圖形。 SVG 支持多種圖形，比如矩形和圓形， 並用它們來顯示數據。 例如，在條形圖中一個矩形（`<rect>`）SVG 圖形可以創建一個組。

當把圖形放入 `svg` 區域中時，你可以用 `x` 和 `y` 座標來指定它的位置。 起始點 (0,0) 是在左上角。 `x` 正值將圖形右移，`y` 正值將圖形從原點下移

若要把一個圖形放在上個挑戰的 500（寬）x 100（高）的 `svg` 中心，可將 `x` 座標設置爲 250，`y` 座標設置爲 50。

SVG 的 `rect` 有四個屬性。 `x` 和 `y` 座標指定圖形放在 `svg` 區域的位置， `height` 和 `width` 指定圖形大小。

# --instructions--

用 `append()` 給 `svg` 添加一個 `width` 爲 `25`、`height` 爲 `100` 的 `rect` 形狀。 同時，將 `rect` 的 `x` 和 `y` 都設置爲 `0`。

# --hints--

文檔應該有 1 個 `rect` 元素。

```js
assert.lengthOf(document.querySelectorAll('rect'), 1);
```

`rect` 元素的 `width` 應爲 `25`。

```js
assert.strictEqual(document.querySelector('rect')?.getAttribute('width'), '25');
```

`rect` 元素的 `height` 應爲 `100`。

```js
assert.strictEqual(
  document.querySelector('rect')?.getAttribute('height'),
  '100'
);
```

`rect` 元素的 `x` 值應爲 `0`。

```js
assert.strictEqual(document.querySelector('rect')?.getAttribute('x'), '0');
```

`rect` 元素的 `y` 值應爲 `0`。

```js
assert.strictEqual(document.querySelector('rect')?.getAttribute('y'), '0');
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

    const w = 500;
    const h = 100;

    const svg = d3
      .select('body')
      .append('svg')
      .attr('width', w)
      .attr('height', h)
      .append('rect')
      .attr('width', 25)
      .attr('height', 100)
      .attr('x', 0)
      .attr('y', 0);
  </script>
</body>
```
