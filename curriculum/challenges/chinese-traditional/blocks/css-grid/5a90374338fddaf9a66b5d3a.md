---
id: 5a90374338fddaf9a66b5d3a
title: 使用 justify-self 水平對齊項目
challengeType: 0
videoUrl: 'https://scrimba.com/p/pByETK/cJbpKHq'
forumTopicId: 301122
dashedName: align-an-item-horizontally-using-justify-self
---

# --description--

In CSS Grid, the content of each item is located in a box which is referred to as a <dfn>cell</dfn>. You can align the content's position within its cell horizontally using the `justify-self` property on a grid item. By default, this property has a value of `stretch`, which will make the content fill the whole width of the cell. This CSS Grid property accepts other values as well:

`start`：使內容在單元格左側對齊，

`center`：使內容在單元格居中對齊，

`end`：使內容在單元格右側對齊，

# --instructions--

請使用 `justify-self` 屬性讓 class 爲 `item2` 的網格項居中。

# --hints--

class 爲 `item2` 的元素應具有 `justify-self` 屬性且屬性值應爲 `center`。

```js
assert.match(
  code,
  /.item2\s*?{[\s\S]*justify-self\s*?:\s*?center\s*?;[\s\S]*}/gi
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
    /* Only change code below this line */


    /* Only change code above this line */
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
    min-height: 300px;
    width: 100%;
    background: LightGray;
    display: grid;
    grid-template-columns: 1fr 1fr 1fr;
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
```

# --solutions--

```html
<style>
  .item2 {
    justify-self: center;
  }
</style>
```
