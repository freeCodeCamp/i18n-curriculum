---
id: bad87fee1348bd9aec908855
title: Надайте кожному елементу унікальний id
challengeType: 0
forumTopicId: 18191
dashedName: give-each-element-a-unique-id
---

# --description--

Вам потрібно вміти використовувати jQuery, щоб націлити кожну кнопку за її унікальним id.

Надайте кожній кнопці унікальний id, починаючи з `target1` і закінчуючи `target6`.

Переконайтесь, що кнопки від `target1` до `target3` знаходяться в `#left-well`, а кнопки від `target4` до `target6` знаходяться в `#right-well`.

# --hints--

Один елемент `button` повинен мати id зі значенням `target1`.

```js
const leftWall = document.querySelector('#left-well'); 
const targetOne = leftWall?.querySelectorAll(`:scope ${'#target1'}`)
assert.lengthOf(targetOne,1);
```

Один елемент `button` повинен мати id зі значенням `target2`.

```js
const leftWall = document.querySelector('#left-well'); 
const targetTwo = leftWall?.querySelectorAll(`:scope ${'#target2'}`)
assert.lengthOf(targetTwo,1);
```

Один елемент `button` повинен мати id зі значенням `target3`.

```js
const leftWall = document.querySelector('#left-well'); 
const targetThree = leftWall?.querySelectorAll(`:scope ${'#target3'}`)
assert.lengthOf(targetThree,1);
```

Один елемент `button` повинен мати id зі значенням `target4`.

```js
const leftWall = document.querySelector('#right-well'); 
const targetFour = leftWall?.querySelectorAll(`:scope ${'#target4'}`)
assert.lengthOf(targetFour,1);
```

Один елемент `button` повинен мати id зі значенням `target5`.

```js
const leftWall = document.querySelector('#right-well'); 
const targetFive = leftWall?.querySelectorAll(`:scope ${'#target5'}`)
assert.lengthOf(targetFive,1);
```

Один елемент `button` повинен мати id зі значенням `target6`.

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
