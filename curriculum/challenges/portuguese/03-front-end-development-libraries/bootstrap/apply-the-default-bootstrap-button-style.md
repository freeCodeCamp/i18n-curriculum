---
id: bad87fee1348bd9aec908850
title: Aplicar o estilo de botão padrão do Bootstrap
challengeType: 0
forumTopicId: 16657
dashedName: apply-the-default-bootstrap-button-style
---

# --description--

Bootstrap has another button class called `btn-default`.

Aplique ambas as classes `btn` e `btn-default` a cada um dos elementos `button`.

# --hints--

Você deve aplicar a classe `btn` para cada um dos elementos `button`.

```js
assert.lengthOf(document.querySelectorAll('.btn'),6);
```

Você deve aplicar a classe `btn-default` para cada um dos elementos `button`.

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
