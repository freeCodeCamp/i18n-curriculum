---
id: bad87fee1348bd9aec908854
title: 给 Bootstrap Wells 设置标签
challengeType: 0
forumTopicId: 18223
dashedName: label-bootstrap-wells
---

# --description--

For the sake of clarity, let's label both of our wells with their ids.

在 left-well 的上一层，class 属性为 `col-xs-6` 的 `div` 元素里面，增加一个文本为 `#left-well` 的 `h4` 元素。

在 right-well 的上一层，class 属性为 `col-xs-6` 的 `div` 元素里面，增加一个文本为 `#right-well` 的 `h4` 元素。

# --hints--

应该为每个 `<div class="col-xs-6">` 元素添加一个 `h4` 元素。

```js
const columnSixes = document.querySelectorAll('.col-xs-6');
const columnSixOneChildren = columnSixes?.[0]?.querySelectorAll(`:scope ${'h4'}`);
assert.lengthOf(columnSixOneChildren,1); 

const columnSixTwoChildren = columnSixes?.[1]?.querySelectorAll(`:scope ${'h4'}`);
assert.lengthOf(columnSixTwoChildren,1); 
```

其中一个 `h4` 元素应该含有文本内容 `#left-well`。

```js
const firstH4 = document.querySelectorAll('h4')?.[0]; 
assert.match(firstH4?.textContent,/#left-well/gi); 
```

其中一个 `h4` 元素应该含有文本内容 `#right-well`。

```js
const secondH4 = document.querySelectorAll('h4')?.[1]; 
assert.match(secondH4?.textContent,/#right-well/gi); 
```

确保每个 `h4` 元素都有一个闭合标签。

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
