---
id: bad87fee1348bd9aec908856
title: Bootstrap のボタンにラベルを付ける
challengeType: 0
forumTopicId: 18222
dashedName: label-bootstrap-buttons
---

# --description--

ウェルにラベルを付けたのとまったく同様に、ボタンにもラベルを付けてみましょう。

各 `button` 要素に、その id セレクターに対応するテキストを付けてください。

# --hints--

id が `target1` の `button` 要素にテキスト `#target1` を付けます。

```js
assert.match(document.querySelector('#target1')?.textContent,/#target1/gi)
```

id が `target2` の `button` 要素にテキスト `#target2` を付けます。

```js
assert.match(document.querySelector('#target2')?.textContent,/#target2/gi)
```

id が `target3` の `button` 要素にテキスト `#target3` を付けます。

```js
assert.match(document.querySelector('#target3')?.textContent,/#target3/gi)
```

id が `target4` の `button` 要素にテキスト `#target4` を付けます。

```js
assert.match(document.querySelector('#target4')?.textContent,/#target4/gi)
```

id が `target5` の `button` 要素にテキスト `#target5` を付けます。

```js
assert.match(document.querySelector('#target5')?.textContent,/#target5/gi)
```

id が `target6` の `button` 要素にテキスト `#target6` を付けます。

```js
assert.match(document.querySelector('#target6')?.textContent,/#target6/gi)
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

# --solutions--

```html
<div class="container-fluid">
  <h3 class="text-primary text-center">jQuery Playground</h3>
  <div class="row">
    <div class="col-xs-6">
      <h4>#left-well</h4>
      <div class="well" id="left-well">
        <button class="btn btn-default target" id="target1">#target1</button>
        <button class="btn btn-default target" id="target2">#target2</button>
        <button class="btn btn-default target" id="target3">#target3</button>
      </div>
    </div>
    <div class="col-xs-6">
      <h4>#right-well</h4>
      <div class="well" id="right-well">
        <button class="btn btn-default target" id="target4">#target4</button>
        <button class="btn btn-default target" id="target5">#target5</button>
        <button class="btn btn-default target" id="target6">#target6</button>
      </div>
    </div>
  </div>
</div>
```
