---
id: bad87fee1348bd9aec908856
title: Bootstrap-Buttons beschriften
challengeType: 0
forumTopicId: 18222
dashedName: label-bootstrap-buttons
---

# --description--

Just like we labeled our wells, we want to label our buttons.

Gib jedem deiner `button`-Elemente den Text, der seinem Id-Selektor entspricht.

# --hints--

Dein `button`-Element mit der Id `target1` sollte den Text `#target1` beinhalten.

```js
assert.match(document.querySelector('#target1')?.textContent,/#target1/gi)
```

Dein `button`-Element mit der Id `target2` sollte den Text `#target2` beinhalten.

```js
assert.match(document.querySelector('#target2')?.textContent,/#target2/gi)
```

Dein `button`-Element mit der Id `target3` sollte den Text `#target3` beinhalten.

```js
assert.match(document.querySelector('#target3')?.textContent,/#target3/gi)
```

Dein `button`-Element mit der Id `target4` sollte den Text `#target4` beinhalten.

```js
assert.match(document.querySelector('#target4')?.textContent,/#target4/gi)
```

Dein `button`-Element mit der Id `target5` sollte den Text `#target5` beinhalten.

```js
assert.match(document.querySelector('#target5')?.textContent,/#target5/gi)
```

Dein `button`-Element mit der Id `target6` sollte den Text `#target6` beinhalten.

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
