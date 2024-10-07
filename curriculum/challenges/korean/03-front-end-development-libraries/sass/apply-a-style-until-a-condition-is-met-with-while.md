---
id: 587d7dbf367417b2b2512bbb
title: '@while로 조건 충족하는 동안 스타일 적용하기'
challengeType: 0
forumTopicId: 301454
dashedName: apply-a-style-until-a-condition-is-met-with-while
---

# --description--

The `@while` directive is an option with similar functionality to the JavaScript `while` loop. It creates CSS rules until a condition is met.

`@for` 도전으로 간단한 그리드(grid) 시스템을 만드는 예시를 알아봤습니다. `@while`로도 가능합니다.

```scss
$x: 1;
@while $x < 13 {
  .col-#{$x} { width: 100%/12 * $x;}
  $x: $x + 1;
}
```

우선, 변수 `$x`를 1로 설정합니다. 그런 다음 `$x`가 13보다 작을 동안(*while*) `@while`문을 사용해서 그리드 시스템을 만듭니다. `width`에 대한 CSS 규칙을 정하고나서, 무한 루프를 피하기 위해 `$x`를 1만큼 증가시킵니다.

# --instructions--

`@while` 문을 사용해서 클래스마다 다른 `font-sizes`를 만들어보세요.

`text-1` 부터 `text-5` 까지 5개의 다른 클래스가 있어야 합니다. 그런 다음 `font-size`를 `15px`에 현재 인덱스 숫자를 곱한 값으로 설정합니다. 무한 루프를 벗어나야 합니다!

# --hints--

`@while` 문을 사용해야 합니다.

```js
assert(code.match(/@while /g));
```

1부터 시작하는 인덱스 변수를 사용해야 합니다.

```js
assert(code.match(/\$.*:\s*?1;/gi));
```

인덱스 변수를 증가시켜야 합니다.

```js
assert(code.match(/\$(.*)\s*?:\s*\$\1\s*\+\s*1\s*;/gi));
```

`.text-1` 클래스의 `font-size`는 `15px` 이어야 합니다.

```js
assert($('.text-1').css('font-size') == '15px');
```

`.text-2` 클래스의 `font-size`는 `30px` 이어야 합니다.

```js
assert($('.text-2').css('font-size') == '30px');
```

`.text-3` 클래스의 `font-size`는 `45px` 이어야 합니다.

```js
assert($('.text-3').css('font-size') == '45px');
```

`.text-4` 클래스의 `font-size`는 `60px` 이어야 합니다.

```js
assert($('.text-4').css('font-size') == '60px');
```

`.text-5` 클래스의 `font-size`는 `75px` 이어야 합니다.

```js
assert($('.text-5').css('font-size') == '75px');
```

# --seed--

## --seed-contents--

```html
<style type='text/scss'>



</style>

<p class="text-1">Hello</p>
<p class="text-2">Hello</p>
<p class="text-3">Hello</p>
<p class="text-4">Hello</p>
<p class="text-5">Hello</p>
```

# --solutions--

```html
<style type='text/scss'>
  $x: 1;
  @while $x < 6 {
    .text-#{$x}{
      font-size: 15px * $x;
    }
    $x: $x + 1;
  }
</style>

<p class="text-1">Hello</p>
<p class="text-2">Hello</p>
<p class="text-3">Hello</p>
<p class="text-4">Hello</p>
<p class="text-5">Hello</p>
```
