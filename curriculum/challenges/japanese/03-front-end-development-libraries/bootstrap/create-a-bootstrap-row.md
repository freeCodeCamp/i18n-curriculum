---
id: bad87fee1348bd9bec908846
title: Bootstrap の行を作成する
challengeType: 0
forumTopicId: 16813
dashedName: create-a-bootstrap-row
---

# --description--

ここでは、インライン要素を収めるための Bootstrap の行を作成します。

`h3` タグの下に `div` 要素を作成し、クラス `row` を付けてください。

# --hints--

`h3` 要素の下に `div` 要素を追加します。

```js
assert.lengthOf(document.querySelectorAll('div'),2);
assert.lengthOf(document.querySelectorAll('div.row h3.text-primary'),0);
assert.lengthOf(document.querySelectorAll('div.row + h3.text-primary'),0)
assert.lengthOf(document.querySelectorAll('h3.text-primary + div.row'),1);
```

`div` 要素にクラス `row` を付けます。

```js
const newDiv = document.querySelectorAll('div')?.[1]; 
assert.isTrue(newDiv?.classList?.contains('row'));
```

クラス `row` の div はクラス `container-fluid` の div の内側に入れる必要があります。

```js
assert.lengthOf(document.querySelectorAll('div.container-fluid div.row'),1);
```

`div` 要素には終了タグが必要です。

```js
assert.match(code,/<\/div>/g);
assert.match(code,/<div/g);
assert.equal(code.match(/<\/div>/g).length ,code.match(/<div/g).length);
```

# --seed--

## --seed-contents--

```html
<div class="container-fluid">
  <h3 class="text-primary text-center">jQuery Playground</h3>

</div>
```

# --solutions--

```html
<div class="container-fluid">
  <h3 class="text-primary text-center">jQuery Playground</h3>
  <div class="row"></div>
</div>
```
