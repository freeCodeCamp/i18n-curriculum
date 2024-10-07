---
id: bad87fee1348bd9aed908826
title: jQuery로 요소의 CSS 변경하기
challengeType: 6
forumTopicId: 16776
required:
  - 
    link: 'https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.2.0/animate.css'
dashedName: change-the-css-of-an-element-using-jquery
---

# --description--

We can also change the CSS of an HTML element directly with jQuery.

jQuery는 요소의 CSS를 변경할 수 있게 해주는 `.css()`라는 함수가 있습니다.

색깔을 파랑색으로 바꿀려면 이렇게 해야 합니다.

```js
$("#target1").css("color", "blue");
```

일반적인 CSS 선언과 약간 다른데, 이는 CSS 속성과 그 값들이 따옴표 안에 있고 쉼표 대신 쌍반점으로 분리되어 있기 때문입니다.

텅 빈 `document ready function`을 남기기 위해서 jQuery 선택기로 삭제합니다.

`target1`을 선택하고 색깔을 빨강색으로 바꿉니다.

# --hints--

`target1` 요소는 빨강색 텍스트를 가져야 합니다.

```js
assert($('#target1').css('color') === 'rgb(255, 0, 0)');
```

이 요소에 이 클래스들을 추가하기 위해 jQuery만 사용해야 합니다.

```js
assert(!code.match(/class.*animated/g));
```

# --seed--

## --seed-contents--

```html
<script>
  $(document).ready(function() {
    $("button").addClass("animated bounce");
    $(".well").addClass("animated shake");
    $("#target3").addClass("animated fadeOut");
    $("button").removeClass("btn-default");

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
    $("button").addClass("animated bounce");
    $(".well").addClass("animated shake");
    $("#target3").addClass("animated fadeOut");
    $("button").removeClass("btn-default");
    $("#target1").css("color", "red");
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
