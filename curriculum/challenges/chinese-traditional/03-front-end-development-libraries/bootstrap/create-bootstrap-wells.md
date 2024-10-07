---
id: bad87fee1348bd9aec908848
title: 創建 Bootstrap Wells
challengeType: 0
forumTopicId: 16825
dashedName: create-bootstrap-wells
---

# --description--

Bootstrap has a class called `well` that can create a visual sense of depth for your columns.

在每一個 class 屬性爲 `col-xs-6` 的 `div` 元素中都嵌入一個帶有 `well` class 的 `div` 元素。

# --hints--

應在每一個 class 屬性爲 `col-xs-6` 的 `div` 元素中添加一個帶有 `well` class 的 `div` 元素。

```js
const wells = document.querySelectorAll('div.col-xs-6 > div.well');
assert.lengthOf( wells,2 ); 
```

兩個 class 爲 `col-xs-6` 的 `div` 元素都應該嵌入一個 class 爲 `row` 的 `div` 元素。

```js
assert.lengthOf(document.querySelectorAll('div.row > div.col-xs-6'),2);
```

確保所有的 `div` 元素都有一個閉合標籤。

```js
assert.match(code,/<\/div>/g);
assert.match(code,/<div/g);
assert.equal(code.match(/<\/div>/g)?.length , code.match(/<div/g)?.length);
```

# --seed--

## --seed-contents--

```html
<div class="container-fluid">
  <h3 class="text-primary text-center">jQuery Playground</h3>
  <div class="row">
    <div class="col-xs-6">

    </div>
    <div class="col-xs-6">

    </div>
  </div>
</div>
```

# --solutions--

```html
<div class="container-fluid">
  <h3 class="text-primary text-center">jQuery Playground</h3>
  <div class="row">
    <div class="col-xs-6">
      <div class="well"></div>
    </div>
    <div class="col-xs-6">
      <div class="well"></div>
    </div>
  </div>
</div>
```
