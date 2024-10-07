---
id: bad87fee1348bd9aec908847
title: Bootstrap の行を分割する
challengeType: 0
forumTopicId: 18306
dashedName: split-your-bootstrap-row
---

# --description--

Now that we have a Bootstrap Row, let's split it into two columns to house our elements.

行の中に 2 つの `div` 要素を作成し、どちらにもクラス `col-xs-6` を付けてください。

# --hints--

2 つの `div class="col-xs-6"` 要素を `div class="row"` 要素の中に入れます。

```js
assert.lengthOf(document.querySelectorAll('div.row > div.col-xs-6'),2);
```

`div` 要素にはすべて終了タグが必要です。

```js
assert.match(code,/<\/div>/g);
assert.match(code,/<div/g);
assert.equal(code.match(/<\/div>/g).length , code.match(/<div/g).length);
```

# --seed--

## --seed-contents--

```html
<div class="container-fluid">
  <h3 class="text-primary text-center">jQuery Playground</h3>
  <div class="row">


  </div>
</div>
```

# --solutions--

```html
<div class="container-fluid">
  <h3 class="text-primary text-center">jQuery Playground</h3>
  <div class="row">
    <div class="col-xs-6"></div>
    <div class="col-xs-6"></div>
  </div>
</div>
```
