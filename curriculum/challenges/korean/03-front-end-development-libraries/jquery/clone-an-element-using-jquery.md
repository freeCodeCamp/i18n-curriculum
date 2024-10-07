---
id: bad87fee1348bd9aed508826
title: jQuery로 요소 복제하기
challengeType: 6
forumTopicId: 16780
dashedName: clone-an-element-using-jquery
---

# --description--

In addition to moving elements, you can also copy them from one place to another.

jQuery는 복제된 요소를 만드는 `clone()`이라는 함수를 가지고 있습니다.

예를 들면 `left-well`에서 `right-well`로 `target2`를 복제하고 싶다면 다음과 같이 할 수 있습니다:

```js
$("#target2").clone().appendTo("#right-well");
```

두 개의 jQuery 함수를 붙여서 사용했다는 것을 눈치채셨나요? <dfn>함수 체이닝(chaining)</dfn>이라고 부르며 jQuery로 무언가를 작업할 수 있는 편리한 방법입니다.

`target5` 요소를 복제하고 `left-well`에 추가하시오.

# --hints--

`target5` 요소는 `right-well` 안에 있어야 합니다.

```js
assert($('#right-well').children('#target5').length > 0);
```

복제된 `target5` 요소도 `left-well` 안에 있어야 합니다.

```js
assert($('#left-well').children('#target5').length > 0);
```

이 요소들을 이동시킬 때 오직 jQuery만 사용해야 합니다.

```js
assert(!code.match(/class.*animated/g));
```

# --seed--

## --seed-contents--

```html
<script>
  $(document).ready(function() {
    $("#target1").css("color", "red");
    $("#target1").prop("disabled", true);
    $("#target4").remove();
    $("#target2").appendTo("#right-well");

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
    $("#target1").css("color", "red");
    $("#target1").prop("disabled", true);
    $("#target4").remove();
    $("#target2").appendTo("#right-well");
    $("#target5").clone().appendTo("#left-well");
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
