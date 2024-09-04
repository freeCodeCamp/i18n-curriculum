---
id: bad87fee1348bd9aec908855
title: 給每個元素一個唯一的 id
challengeType: 0
forumTopicId: 18191
dashedName: give-each-element-a-unique-id
---

# --description--

也可以通過 jQuery 根據每個按鈕唯一的 id 來定位出它們。

給每一個按鈕設置唯一的 id，以 `target1` 開始，`target6` 結束。

確保 `target1` 到 `target3` 在 `#left-well` 之中，`target4` 到 `target6` 在 `#right-well` 之中。

# --hints--

其中一個 `button` 元素應該有 id `target1`。

```js
const leftWall = document.querySelector('#left-well'); 
const targetOne = leftWall?.querySelectorAll(`:scope ${'#target1'}`)
assert.lengthOf(targetOne,1);
```

其中一個 `button` 元素應該有 id `target2`。

```js
const leftWall = document.querySelector('#left-well'); 
const targetTwo = leftWall?.querySelectorAll(`:scope ${'#target2'}`)
assert.lengthOf(targetTwo,1);
```

其中一個 `button` 元素應該有 id `target3`。

```js
const leftWall = document.querySelector('#left-well'); 
const targetThree = leftWall?.querySelectorAll(`:scope ${'#target3'}`)
assert.lengthOf(targetThree,1);
```

其中一個 `button` 元素應該有 id `target4`。

```js
const leftWall = document.querySelector('#right-well'); 
const targetFour = leftWall?.querySelectorAll(`:scope ${'#target4'}`)
assert.lengthOf(targetFour,1);
```

其中一個 `button` 元素應該有 id `target5`。

```js
const leftWall = document.querySelector('#right-well'); 
const targetFive = leftWall?.querySelectorAll(`:scope ${'#target5'}`)
assert.lengthOf(targetFive,1);
```

其中一個 `button` 元素應有 id `target6`。

```js
const leftWall = document.querySelector('#right-well'); 
const targetSix = leftWall?.querySelectorAll(`:scope ${'#target6'}`)
assert.lengthOf(targetSix,1);
```

# --seed--

## --seed-contents--

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

# --solutions--

```html
<div class="container-fluid">
  <h3 class="text-primary text-center">jQuery Playground</h3>
  <div class="row">
    <div class="col-xs-6">
      <h4>#left-well</h4>
      <div class="well" id="left-well">
        <button class="btn btn-default target" id="target1"></button>
        <button class="btn btn-default target" id="target2"></button>
        <button class="btn btn-default target" id="target3"></button>
      </div>
    </div>
    <div class="col-xs-6">
      <h4>#right-well</h4>
      <div class="well" id="right-well">
        <button class="btn btn-default target" id="target4"></button>
        <button class="btn btn-default target" id="target5"></button>
        <button class="btn btn-default target" id="target6"></button>
      </div>
    </div>
  </div>
</div>
```
