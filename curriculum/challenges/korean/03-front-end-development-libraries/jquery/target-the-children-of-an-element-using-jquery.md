---
id: bad87fee1348bd9aed208826
title: jQuery를 사용하여 자식 요소 선택하기
challengeType: 6
forumTopicId: 18320
dashedName: target-the-children-of-an-element-using-jquery
---

# --description--

When HTML elements are placed one level below another they are called <dfn>children</dfn> of that element. For example, the button elements in this challenge with the text `#target1`, `#target2`, and `#target3` are all children of the `<div class="well" id="left-well">` element.

jQuery에는 `children()`이라는 함수가 있는데, 이 함수를 사용하면 당신이 선택한 엘리먼트의 자식들에 접근할 수 있습니다.

다음은 `children()` 함수를 사용하여 `left-well` 엘리먼트의 자식들에게 `blue` 색상을 지정하는 예시입니다:

```js
$("#left-well").children().css("color", "blue")
```

# --instructions--

`right-well` 엘리먼트의 모든 자식들에 주황색을 적용하세요.

# --hints--

`#right-well`의 모든 자식 엘리먼트들은 주황색 텍스트를 가져야 합니다.

```js
assert($('#right-well').children().css('color') === 'rgb(255, 165, 0)');
```

해당 엘리먼트들을 수정하기 위해 `children()` 함수를 사용해야 합니다.

```js
assert(code.match(/\.children\(\)\.css/g));
```

이러한 클래스들을 엘리먼트에 추가하기 위해 jQuery를 사용해야 합니다.

```js
assert(code.match(/<div class="well" id="right-well">/g));
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
    $("#target5").clone().appendTo("#left-well");
    $("#target1").parent().css("background-color", "red");

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
    $("#target1").parent().css("background-color", "red");
    $("#right-well").children().css("color", "orange");
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
