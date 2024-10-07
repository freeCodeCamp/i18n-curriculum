---
id: bad87fee1348bd9aec908854
title: Bootstrap のウェルにラベルを付ける
challengeType: 0
forumTopicId: 18223
dashedName: label-bootstrap-wells
---

# --description--

For the sake of clarity, let's label both of our wells with their ids.

左側のウェルの上で、その `col-xs-6` `div` 要素の内側に、テキスト `#left-well` を持つ `h4` 要素を追加してください。

右側のウェルの上で、その `col-xs-6` `div` 要素の内側に、テキスト `#right-well` を持つ `h4` 要素を追加してください。

# --hints--

各 `<div class="col-xs-6">` 要素に `h4` 要素を追加します。

```js
const columnSixes = document.querySelectorAll('.col-xs-6');
const columnSixOneChildren = columnSixes?.[0]?.querySelectorAll(`:scope ${'h4'}`);
assert.lengthOf(columnSixOneChildren,1); 

const columnSixTwoChildren = columnSixes?.[1]?.querySelectorAll(`:scope ${'h4'}`);
assert.lengthOf(columnSixTwoChildren,1); 
```

一方の `h4` 要素にテキスト `#left-well` を付けます。

```js
const firstH4 = document.querySelectorAll('h4')?.[0]; 
assert.match(firstH4?.textContent,/#left-well/gi); 
```

もう一方の `h4` 要素にテキスト `#right-well` を付けます。

```js
const secondH4 = document.querySelectorAll('h4')?.[1]; 
assert.match(secondH4?.textContent,/#right-well/gi); 
```

`h4` 要素にはすべて終了タグが必要です。

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
