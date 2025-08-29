---
id: bad87fee1348bd9aed708826
title: jQuery로 요소 지우기
challengeType: 6
forumTopicId: 18262
dashedName: remove-an-element-using-jquery
---

# --description--

Now let's remove an HTML element from your page using jQuery.

jQuery는 HTML 요소를 전부 지우는 `.remove()`라는 함수를 가지고 있습니다.

`.remove()` 함수로 페이지로부터 `#target4` 요소를 지우시오.

# --hints--

페이지로부터 `target4` 요소를 지우기 위해 jQuery를 사용해야 합니다.

```js
assert(
  $('#target4').length === 0 && code.match(/\$\(["']#target4["']\).remove\(\)/g)
);
```

이 요소를 지우기 위해 jQuery만 사용해야 합니다.

```js
assert(
  code.match(/id="target4/g) &&
    !code.match(/<!--.*id="target4".*-->/g) &&
    $('#right-well').length > 0
);
```

# --seed--

## --seed-contents--

```html
<script>
  $(document).ready(function() {
    $("#target1").css("color", "red");
    $("#target1").prop("disabled", true);

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
