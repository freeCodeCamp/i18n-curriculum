---
id: bad87fee1348bd9aec908746
title: Bootstrap の container-fluid div の中にページを配置する
challengeType: 0
forumTopicId: 18198
dashedName: house-our-page-within-a-bootstrap-container-fluid-div
---

# --description--

ページ上のすべてのコンテンツがモバイル対応になっていることを確認してみましょう。

クラス `container-fluid` を持つ `div` 要素の中に `h3` 要素を入れてみましょう。

# --hints--

`div` 要素にクラス `container-fluid` を付けます。

```js
assert.isTrue(document.querySelector('div')?.classList?.contains('container-fluid'));
```

各 `div` 要素には終了タグが必要です。

```js
assert.match(code,/<\/div>/g);
assert.match(code,/<div/g);

assert.equal(code.match(/<\/div>/g).length ,code.match(/<div/g).length);
```

`div` 要素の内側に `h3` 要素をネストします。

```js
const divElement = document.querySelector('div');
const divChildren = divElement?.querySelectorAll(`:scope ${'h3'}`)
assert.lengthOf(divChildren,1);
```

# --seed--

## --seed-contents--

```html
<h3 class="text-primary text-center">jQuery Playground</h3>
```

# --solutions--

```html
<div class="container-fluid">
    <h3 class="text-primary text-center">jQuery Playground</h3>
</div>
```
