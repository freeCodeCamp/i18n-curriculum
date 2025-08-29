---
id: bad87fee1348bd9aedc08826
title: jQuery를 사용하여 클래스로 요소 대상 지정하기
challengeType: 6
forumTopicId: 18316
required:
  - 
    link: 'https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.2.0/animate.css'
dashedName: target-elements-by-class-using-jquery
---

# --description--

You see how we made all of your `button` elements bounce? We selected them with `$("button")`, then we added some CSS classes to them with `.addClass("animated bounce");`.

요소에 클래스를 추가할 수 있게 해주는 `.addClass()` 함수를 사용했습니다.

우선 `$(".well")` 셀렉터를 사용해서 `well` 클래스를 가진 `div` 요소를 대상으로 지정해보겠습니다.

CSS 선언처럼 클래스 이름 전에 `.`를 적어야 한다는 것에 주의하시오.

그런 다음 `animated`와 `shake` 클래스를 추가하기 위해 `.addClass()` 함수를 사용하시오.

예를 들면 `document ready function`에 다음을 추가하여 `text-primary` 클래스를 가진 모든 요소가 흔들리도록 만들 수 있습니다:

```js
$(".text-primary").addClass("animated shake");
```

# --hints--

`well` 클래스를 가진 모든 요소에 `animated`와 `shake` 클래스를 부여하려면 jQuery의 `addClass()` 함수를 사용해야 합니다.

```js
assert($('.well').hasClass('animated') && $('.well').hasClass('shake'));
```

이 요소에 이 클래스들을 추가하기 위해 jQuery만 사용해야 합니다.

```js
assert(!code.match(/class\.\*animated/g));
```

# --seed--

## --seed-contents--

```html
<script>
  $(document).ready(function() {
    $("button").addClass("animated bounce");
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
