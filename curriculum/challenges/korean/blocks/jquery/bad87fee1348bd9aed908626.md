---
id: bad87fee1348bd9aed908626
title: 여러 jQuery 셀렉터로 같은 요소 대상 지정하기
challengeType: 6
forumTopicId: 18322
required:
  - 
    link: 'https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.2.0/animate.css'
dashedName: target-the-same-element-with-multiple-jquery-selectors
---

# --description--

Now you know three ways of targeting elements: by type: `$("button")`, by class: `$(".btn")`, and by id `$("#target1")`.

하나의 `.addClass()` 호출에 여러 클래스들을 추가할 수 있지만 *세 가지 방법*으로 이 클래스들을 같은 요소에 추가해보겠습니다.

`.addClass()`을 사용하여 세 가지 다른 방법으로 같은 요소에 한 번에 하나씩 추가하시오:

`button` 유형으로 모든 요소에 `animated` 클래스를 추가하시오.

`.btn` 클래스로 모든 버튼에 `shake` 클래스를 추가하시오.

`#target1` 아이디로 이 버튼에 `btn-primary` 클래스를 추가하시오.

**주의:** 한 번에 한 요소를 대상으로 지정하고 한 클래스만 추가해야 합니다. 모두 합치면, 세 개의 개별 셀렉터가 `#target1`에 `shake`, `animated`, 그리고 `btn-primary` 세 개의 클래스를 추가할 것입니다.

# --hints--

`$("button")` 셀렉터를 사용해야 합니다.

```js
assert(code.match(/\$\s*?\(\s*?(?:'|")\s*?button\s*?(?:'|")/gi));
```

`$(".btn")` 셀렉터를 사용해야 합니다.

```js
assert(code.match(/\$\s*?\(\s*?(?:'|")\s*?\.btn\s*?(?:'|")/gi));
```

`$("#target1")` 셀렉터를 사용해야 합니다.

```js
assert(code.match(/\$\s*?\(\s*?(?:'|")\s*?#target1\s*?(?:'|")/gi));
```

세 개의 셀렉터 각각 하나의 클래스만 추가해야 합니다.

```js
assert(
  code.match(/addClass/g) &&
    code.match(/addClass\s*?\(\s*?('|")\s*?[\w-]+\s*?\1\s*?\)/g).length > 2
);
```

`#target1` 요소는 `animated`‚ `shake` 그리고 `btn-primary` 클래스를 가져야 합니다.

```js
assert(
  $('#target1').hasClass('animated') &&
    $('#target1').hasClass('shake') &&
    $('#target1').hasClass('btn-primary')
);
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
    $("button").addClass("animated");
    $(".btn").addClass("shake");
    $("#target1").addClass("btn-primary");
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
