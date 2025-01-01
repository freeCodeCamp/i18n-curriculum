---
id: 5a94fe6269fb03452672e462
title: 使用 auto-fit 創建彈性佈局
challengeType: 0
videoUrl: 'https://scrimba.com/p/pByETK/c3dPph8'
forumTopicId: 301127
dashedName: create-flexible-layouts-using-auto-fit
---

# --description--

`auto-fit` works almost identically to `auto-fill`. The only difference is that when the container's size exceeds the size of all the items combined, `auto-fill` keeps inserting empty rows or columns and pushes your items to the side, while `auto-fit` collapses those empty rows or columns and stretches your items to fit the size of the container.

**注意：** 如果容器寬度不足以將所有網格項放在同一行，餘下的網格項將會移至新的一行。

# --instructions--

在第二個網格中，請用 `auto-fit` 和 `repeat` 來填充網格，其中列寬的最小值爲 `60px`，最大值爲`1fr`。 你可以調整最右側的預覽區來查看效果。

# --hints--

`container2` class 應該有一個 `grid-template-columns` 屬性，通過 `repeat` 和 `auto-fit` 將網格中的列的寬度設置爲最小 `60px`，最大 `1fr`。

```js
assert.match(
  code,
  /.container2\s*?{[\s\S]*grid-template-columns\s*?:\s*?repeat\s*?\(\s*?auto-fit\s*?,\s*?minmax\s*?\(\s*?60px\s*?,\s*?1fr\s*?\)\s*?\)\s*?;[\s\S]*}/gi
);
```

# --seed--

## --seed-contents--

```html
<style>
  .item1 {
    background: LightSkyBlue;
  }
  .item2 {
    background: LightSalmon;
  }
  .item3 {
    background: PaleTurquoise;
  }
  .item4 {
    background: LightPink;
  }
  .item5 {
    background: PaleGreen;
  }

  .container {
    font-size: 40px;
    min-height: 100px;
    width: 100%;
    background: LightGray;
    display: grid;
    grid-template-columns: repeat(auto-fill, minmax(60px, 1fr));
    grid-template-rows: 1fr 1fr 1fr;
    grid-gap: 10px;
  }

  .container2 {
    font-size: 40px;
    min-height: 100px;
    width: 100%;
    background: Silver;
    display: grid;
    /* Only change code below this line */

    grid-template-columns: repeat(3, minmax(60px, 1fr));

    /* Only change code above this line */
    grid-template-rows: 1fr 1fr 1fr;
    grid-gap: 10px;
  }
</style>

<div class="container">
  <div class="item1">1</div>
  <div class="item2">2</div>
  <div class="item3">3</div>
  <div class="item4">4</div>
  <div class="item5">5</div>
</div>
<div class="container2">
  <div class="item1">1</div>
  <div class="item2">2</div>
  <div class="item3">3</div>
  <div class="item4">4</div>
  <div class="item5">5</div>
</div>
```

# --solutions--

```html
<style>
  .container {
    grid-template-columns: repeat(auto-fill, minmax(60px, 1fr));
  }
  .container2 {
    grid-template-columns: repeat(auto-fit, minmax(60px, 1fr));
  }
</style>
```
