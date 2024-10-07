---
id: bad87fee1348bd9aec908850
title: 给 Bootstrap 按钮添加默认样式
challengeType: 0
forumTopicId: 16657
dashedName: apply-the-default-bootstrap-button-style
---

# --description--

Bootstrap has another button class called `btn-default`.

为所有的 `button` 元素增加两个 class： `btn` 和 `btn-default`。

# --hints--

应该将 `btn` class 添加到所有的 `button` 元素中。

```js
assert.lengthOf(document.querySelectorAll('.btn'),6);
```

应该将 `btn-default` class 添加到每一个 `button` 元素中。

```js
assert.lengthOf(document.querySelectorAll('.btn-default'), 6);
```

# --seed--

## --seed-contents--

```html
<div class="container-fluid">
  <h3 class="text-primary text-center">jQuery Playground</h3>
  <div class="row">
    <div class="col-xs-6">
      <div class="well">
        <button></button>
        <button></button>
        <button></button>
      </div>
    </div>
    <div class="col-xs-6">
      <div class="well">
        <button></button>
        <button></button>
        <button></button>
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
      <div class="well">
        <button class="btn btn-default"></button>
        <button class="btn btn-default"></button>
        <button class="btn btn-default"></button>
      </div>
    </div>
    <div class="col-xs-6">
      <div class="well">
        <button class="btn btn-default"></button>
        <button class="btn btn-default"></button>
        <button class="btn btn-default"></button>
      </div>
    </div>
  </div>
</div>
```
