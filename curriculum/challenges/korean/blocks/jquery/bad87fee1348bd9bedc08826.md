---
id: bad87fee1348bd9bedc08826
title: jQuery에서 선택자를 이용해 HTML 요소 선택하기
challengeType: 6
forumTopicId: 18319
required:
  - 
    link: 'https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.2.0/animate.css'
dashedName: target-html-elements-with-selectors-using-jquery
---

# --description--

Now we have a `document ready` function.

이제 첫 jQuery 문을 작성해봅시다. 모든 jQuery 함수는 일반적으로 달러 연산자 또는 블링으로 불리는 `$`으로 시작합니다.

jQuery에서는 보통 HTML 요소를 <dfn>selector</dfn>를 사용해 선택하고, 선택된 요소에 대해 무언가를 수행합니다.

예를 들어, 모든 `button` 요소들이 바운스하게 만들어봅시다. Document ready 함수 안에 다음 코드를 추가하면 됩니다.

```js
$("button").addClass("animated bounce");
```

jQuery 라이브러리와 Animate.css 라이브러리를 이미 백그라운드에 포함해두었기 때문에 에디터에서 사용할 수 있습니다. jQuery를 사용하여 Animate.css 라이브러리의 `bounce` 클래스를 `button`요소들에 적용하는 것입니다.

# --hints--

jQuery의 `addClass` 함수를 사용해 `button` 요소들에 `animated` 클래스와 `bounce` 클래스를 추가해야 합니다.

```js
assert($('button').hasClass('animated') && $('button').hasClass('bounce'));
```

이러한 클래스들을 엘리먼트에 추가하기 위해 jQuery를 사용해야 합니다.

```js
assert(!code.match(/class.*animated/g));
```

jQuery 코드는 `$(document).ready();` 함수 안에 작성해야 합니다.

```js
assert(
  code.replace(/\s/g, '').match(/\$\(document\)\.ready\(function\(\)\{\$/g)
);
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
