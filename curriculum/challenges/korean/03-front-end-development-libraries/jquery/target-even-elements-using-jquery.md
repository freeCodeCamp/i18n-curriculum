---
id: bad87fee1348bd9aed008826
title: jQuery를 사용해 짝수 번째 요소들 선택하기
challengeType: 6
forumTopicId: 18318
required:
  - 
    link: 'https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.2.0/animate.css'
dashedName: target-even-elements-using-jquery
---

# --description--

You can also target elements based on their positions using `:odd` or `:even` selectors.

jQuery의 인덱스는 0으로 시작합니다. 즉, 첫 번째 요소의 위치는 0이라는 것입니다. 이것은 약간 혼란스러울 수 있습니다. 직관적인 것과 반대로, `:odd`는 두 번째 요소(위치 1), 네 번째 요소(위치 3) 등을 선택합니다.

`target` 클래스 및 추가적인 클래스를 이용해 홀수 인덱스를 갖는 요소들을 선택하려면 다음과 같이 작성합니다:

```js
$(".target:odd").addClass("animated shake");
```

짝수 인덱스를 갖는 요소들을 선택해 `animated`와 `shake`라는 클래스를 부여해보세요. **even**은 인덱스가 0으로 시작하는 시스템에 기반한 요소들의 위치를 가리킨다는 것을 기억하세요.

# --hints--

JQuery에서 짝수 번째 위치로 인식되는 모든 `target` 요소들은 shake라는 클래스를 가져야 합니다.

```js
assert(
  $('.target:even').hasClass('animated') && $('.target:even').hasClass('shake')
);
```

해당 요소들을 수정하기 위해 `:even` 선택자를 사용해야 합니다.

```js
assert(code.match(/\:even/g));
```

이러한 클래스들을 엘리먼트에 추가하기 위해 jQuery를 사용해야 합니다.

```js
assert(
  code.match(/\$\(".target:even"\)/g) ||
    code.match(/\$\('.target:even'\)/g) ||
    code.match(/\$\(".target"\).filter\(":even"\)/g) ||
    code.match(/\$\('.target'\).filter\(':even'\)/g)
);
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
    $("#right-well").children().css("color", "orange");
    $("#left-well").children().css("color", "green");
    $(".target:nth-child(2)").addClass("animated bounce");

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
    $("#left-well").children().css("color", "green");
    $(".target:nth-child(2)").addClass("animated bounce");
    $(".target:even").addClass("animated shake");
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
