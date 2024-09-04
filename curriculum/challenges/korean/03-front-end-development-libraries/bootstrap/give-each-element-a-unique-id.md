---
id: bad87fee1348bd9aec908855
title: 각 요소들마다 고유한 id 부여하기
challengeType: 0
forumTopicId: 18191
dashedName: give-each-element-a-unique-id
---

# --description--

우리는 각 버튼에 고유한 id를 부여해 jQuery에서 원하는 버튼을 선택할 수 있도록 하려고 합니다.

각 버튼에 `target1`부터 `target6`까지의 고유한 id를 부여해주세요.

`target1`부터 `target3`까지는 `#left-well`에, `target4`부터 `target6`까지는 `#right-well` 에 배치해 주세요.

# --hints--

한 `button` 요소는 `target1` 이라는 id를 가져야 합니다.

```js
const leftWall = document.querySelector('#left-well'); 
const targetOne = leftWall?.querySelectorAll(`:scope ${'#target1'}`)
assert.lengthOf(targetOne,1);
```

한 `button` 요소는 `target2` 이라는 id를 가져야 합니다.

```js
const leftWall = document.querySelector('#left-well'); 
const targetTwo = leftWall?.querySelectorAll(`:scope ${'#target2'}`)
assert.lengthOf(targetTwo,1);
```

한 `button` 요소는 `target3` 이라는 id를 가져야 합니다.

```js
const leftWall = document.querySelector('#left-well'); 
const targetThree = leftWall?.querySelectorAll(`:scope ${'#target3'}`)
assert.lengthOf(targetThree,1);
```

한 `button` 요소는 `target4` 이라는 id를 가져야 합니다.

```js
const leftWall = document.querySelector('#right-well'); 
const targetFour = leftWall?.querySelectorAll(`:scope ${'#target4'}`)
assert.lengthOf(targetFour,1);
```

한 `button` 요소는 `target5` 이라는 id를 가져야 합니다.

```js
const leftWall = document.querySelector('#right-well'); 
const targetFive = leftWall?.querySelectorAll(`:scope ${'#target5'}`)
assert.lengthOf(targetFive,1);
```

한 `button` 요소는 `target6` 이라는 id를 가져야 합니다.

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
