---
id: bad87fee1348bd9aeda08726
title: jQuery 함수 지우기
challengeType: 6
forumTopicId: 17561
required:
  - 
    link: 'https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.2.0/animate.css'
dashedName: delete-your-jquery-functions
---

# --description--

These animations were cool at first, but now they're getting kind of distracting.

`document ready function`, 에서 이 세 가지 jQuery 함수를 모두 삭제하되, `document ready function`, 자체는 그대로 유지하시오.

# --hints--

이 세 jQuery 함수는 `document ready function`로부터 삭제되어야 합니다.

```js
assert(code.match(/\{\s*\}\);/g));
```

`script` 요소는 그대로 유지해야 합니다.

```js
assert(code.match(/<script>/g));
```

`script` 요소의 시작에 `$(document).ready(function() {`를 두어야 합니다.

```js
assert(code.match(/\$\(document\)\.ready\(function\(\)\s?\{/g));
```

`document.ready` function's closing `})`는 그대로 유지해야 합니다.

```js
assert(code.match(/.*\s*\}\);/g));
```

`script` 요소의 닫는 태그를 그대로 유지해야 합니다.

```js
assert(
  code.match(/<\/script>/g) &&
    code.match(/<script/g) &&
    code.match(/<\/script>/g).length === code.match(/<script/g).length
);
```

# --seed--

## --seed-contents--

```html
<script>
  $(document).ready(function() {
    $("button").addClass("animated bounce");
    $(".well").addClass("animated shake");
    $("#target3").addClass("animated fadeOut");

  });
</script>

<!-- Only change code above this line -->

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

# --solutions--

```html
<script>
  $(document).ready(function() {

  });
</script>

<!-- Only change code above this line -->

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
