---
id: 587d7fa5367417b2b2512bbd
title: CSS 규칙을 다른 엘리먼트로 확장하기
challengeType: 0
forumTopicId: 301456
dashedName: extend-one-set-of-css-styles-to-another-element
---

# --description--

Sass has a feature called `extend` that makes it easy to borrow the CSS rules from one element and build upon them in another.

예를들어, 다음 CSS 규칙은 `.panel` 클래스를 스타일링합니다. `background-color`, `height` 그리고 `border`가 있습니다.

```scss
.panel{
  background-color: red;
  height: 70px;
  border: 2px solid green;
}
```

우리는 `.big-panel`이라는 다른 패널이 필요합니다. `.panel`과 기본적으로 동일한 속성을 가지지만, `width`와 `font-size`가 필요합니다. `.panel`의 CSS 규칙을 복사해서 붙여넣을 수 있지만, 더 많은 패널을 추가할수록 코드가 반복됩니다. `extend`문은 한 엘리먼트에 작성된 규칙을 재사용해서 다른 엘리먼트에 더 추가할 수 있는 간단한 방법입니다.

```scss
.big-panel{
  @extend .panel;
  width: 150px;
  font-size: 2em;
}
```

`.big-panel`은 `.panel`와 같은 속성과 함께 새로운 스타일도 갖게됩니다.

# --instructions--

`.info`을 확장하고 `background-color`가 `magenta`를 갖는 클래스 `.info-important`를 만들어보세요.

# --hints--

`info-important` 클래스의 `background-color`는 `magenta` 이어야 합니다.

```js
assert(
  code.match(
    /\.info-important\s*?{[\s\S]*background-color\s*?:\s*?magenta\s*?;[\s\S]*}/gi
  )
);
```

`info-important` 클래스는 `@extend`를 사용해서 `info` 클래스에서 스타일을 상속해야 합니다.

```js
assert(
  code.match(/\.info-important\s*?{[\s\S]*@extend\s*?.info\s*?;[\s\S]*/gi)
);
```

# --seed--

## --seed-contents--

```html
<style type='text/scss'>
  h3{
    text-align: center;
  }
  .info{
    width: 200px;
    border: 1px solid black;
    margin: 0 auto;
  }




</style>
<h3>Posts</h3>
<div class="info-important">
  <p>This is an important post. It should extend the class ".info" and have its own CSS styles.</p>
</div>

<div class="info">
  <p>This is a simple post. It has basic styling and can be extended for other uses.</p>
</div>
```

# --solutions--

```html
<style type='text/scss'>
  h3{
    text-align: center;
  }
  .info{
    width: 200px;
    border: 1px solid black;
    margin: 0 auto;
  }
  .info-important{
    @extend .info;
    background-color: magenta;
  }



</style>
<h3>Posts</h3>
<div class="info-important">
  <p>This is an important post. It should extend the class ".info" and have its own CSS styles.</p>
</div>

<div class="info">
  <p>This is a simple post. It has basic styling and can be extended for other uses.</p>
</div>
```
