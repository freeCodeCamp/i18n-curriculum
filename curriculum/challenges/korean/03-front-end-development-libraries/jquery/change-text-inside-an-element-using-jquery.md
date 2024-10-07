---
id: 564944c91be2204b269d51e3
title: jQuery로 요소 안의 글자 변경하기
challengeType: 6
forumTopicId: 16773
dashedName: change-text-inside-an-element-using-jquery
---

# --description--

Using jQuery, you can change the text between the start and end tags of an element. You can even change HTML markup.

jQuery는 요소 내에 HTML 태그와 텍스트를 추가할 수 있게 해주는 `.html()`라는 함수를 가지고 있습니다. 이 함수를 사용하여 제공하는 내용은 요소 내 기존의 내용을 완전히 대체합니다.

다음은 헤딩의 텍스트를 다시 쓰고 강조하는 법입니다.

```js
$("h3").html("<em>jQuery Playground</em>");
```

jQuery는 태그를 추가하지 않고 오직 텍스트만 변경하는 `.text()`라는 함수도 있습니다. 다시 말해, 이 함수는 전달된 HTML 태그를 평가하지 않는 대신에 기존 콘텐츠를 대체하고자 하는 텍스트로 취급합니다.

텍스트를 강조하기 위해 id `target4`를 가진 버튼을 변경합니다.

<a href="https://www.freecodecamp.org/news/html-elements-explained-what-are-html-tags/#em-element" target="_blank" rel="noopener noreferrer nofollow">&lt;em&gt; 에 대한 기사</a>를 보고 `<i>`와 `<em>`의 차이와 사용법을 배우시오.

`<i>` 태그는 전통적으로 텍스트를 강조하기 위해 사용되었지만, 최근에는 아이콘 태그로 사용되기도 합니다. `<em>` 태그는 이제 강조를 위한 태그로 받아들여 집니다. 어느 방식이든 이 과제에 대해서 동작할 것입니다.

# --hints--

HTML 태그를 추가하여 `target4` 버튼의 텍스트를 강조해야 합니다.

```js
assert.isTrue(
  /<em>|<i>\s*#target4\s*<\/em>|<\/i>/gi.test($('#target4').html())
);
```

텍스트는 변경하지 않아야 합니다.

```js
assert($('#target4') && $('#target4').text().trim() === '#target4');
```

다른 텍스트 또한 변경하지 않아야 합니다.

```js
assert.isFalse(/<em>|<i>/gi.test($('h3').html()));
```

`.html()`를 사용해야 하며 `.text()`를 사용하지 않아야 합니다.

```js
assert(code.match(/\.html\(/g));
```

jQuery로 `button id="target4"`를 선택해야 합니다.

```js
assert(code.match(/\$\(\s*?(\"|\')#target4(\"|\')\s*?\)\.html\(/));
```

# --seed--

## --seed-contents--

```html
<script>
  $(document).ready(function() {
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

# --solutions--

```html
<script>
  $(document).ready(function() {
    $("#target1").css("color", "red");
    $("#target4").html('<em>#target4</em>');
  });
</script>

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
