---
id: bad87fee1348bd9aec908854
title: 給 Bootstrap Wells 設置標籤
challengeType: 0
forumTopicId: 18223
dashedName: label-bootstrap-wells
---

# --description--

For the sake of clarity, let's label both of our wells with their ids.

Above your left-well, inside its `col-xs-6` `div` element, add an `h4` element with the text `#left-well`.

Above your right-well, inside its `col-xs-6` `div` element, add an `h4` element with the text `#right-well`.

# --hints--

應該爲每個 `<div class="col-xs-6">` 元素添加一個 `h4` 元素。

```js
const columnSixes = document.querySelectorAll('.col-xs-6');
const columnSixOneChildren = columnSixes?.[0]?.querySelectorAll(`:scope ${'h4'}`);
assert.lengthOf(columnSixOneChildren,1); 

const columnSixTwoChildren = columnSixes?.[1]?.querySelectorAll(`:scope ${'h4'}`);
assert.lengthOf(columnSixTwoChildren,1); 
```

其中一個 `h4` 元素應該含有文本內容 `#left-well`。

```js
const firstH4 = document.querySelectorAll('h4')?.[0]; 
assert.match(firstH4?.textContent,/#left-well/gi); 
```

其中一個 `h4` 元素應該含有文本內容 `#right-well`。

```js
const secondH4 = document.querySelectorAll('h4')?.[1]; 
assert.match(secondH4?.textContent,/#right-well/gi); 
```

確保每個 `h4` 元素都有一個閉合標籤。

```js
assert.match(code,/<\/h4>/g);
assert.match(code,/<h4/g);
assert.equal(code.match(/<\/h4>/g).length , code.match(/<h4/g).length);
```

# --seed--

## --seed-contents--

```html
<div class="container-fluid">
  <h3 class="text-primary text-center">jQuery Playground</h3>
  <div class="row">
    <div class="col-xs-6">

      <div class="well" id="left-well">
        <button class="btn btn-default target"></button>
        <button class="btn btn-default target"></button>
        <button class="btn btn-default target"></button>
      </div>
    </div>
    <div class="col-xs-6">

      <div class="well" id="right-well">
        <button class="btn btn-default target"></button>
        <button class="btn btn-default target"></button>
        <button class="btn btn-default target"></button>
      </div>
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
      <h4>#left-well</h4>
      <div class="well" id="left-well">
        <button class="btn btn-default target"></button>
        <button class="btn btn-default target"></button>
        <button class="btn btn-default target"></button>
      </div>
    </div>
    <div class="col-xs-6">
      <h4>#right-well</h4>
      <div class="well" id="right-well">
        <button class="btn btn-default target"></button>
        <button class="btn btn-default target"></button>
        <button class="btn btn-default target"></button>
      </div>
    </div>
  </div>
</div>
```
