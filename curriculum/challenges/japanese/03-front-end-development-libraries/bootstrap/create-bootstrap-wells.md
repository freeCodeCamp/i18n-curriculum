---
id: bad87fee1348bd9aec908848
title: Bootstrap のウェルを作成する
challengeType: 0
forumTopicId: 16825
dashedName: create-bootstrap-wells
---

# --description--

Bootstrap has a class called `well` that can create a visual sense of depth for your columns.

クラス `well` を持つ `div` 要素を各 `col-xs-6` `div` 要素の中に 1 つずつ入れてください。

# --hints--

クラス `col-xs-6` を持つ各 `div` 要素の中に、クラス `well` を持つ `div` 要素を追加します。

```js
const wells = document.querySelectorAll('div.col-xs-6 > div.well');
assert.lengthOf( wells,2 ); 
```

クラス `col-xs-6` を持つ `div` 要素はどちらも、クラス `row` を持つ `div` 要素の中にネストする必要があります。

```js
assert.lengthOf(document.querySelectorAll('div.row > div.col-xs-6'),2);
```

`div` 要素にはすべて終了タグが必要です。

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
