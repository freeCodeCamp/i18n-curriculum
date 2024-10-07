---
id: bad87fee1348bd9aedf06756
title: 클래스 선언을 인라인 스타일로 덮어 쓰기
challengeType: 0
videoUrl: 'https://scrimba.com/c/cGJDRha'
forumTopicId: 18252
dashedName: override-class-declarations-with-inline-styles
---

# --description--

So we've proven that id declarations override class declarations, regardless of where they are declared in your `style` element CSS.

CSS를 덮어쓸 수 있는 다른 방법들이 있습니다. 인라인 스타일을 기억하시나요?

# --instructions--

인라인 스타일을 이용해서 `h1` 요소를 흰색으로 만드세요. 기억하세요. 인라인 스타일은 다음과 같이 만들 수 있습니다.

```html
<h1 style="color: green;">
```

`h1` 요소에 `blue-text` 및 `pink-text` 클래스를 남겨두세요.

# --hints--

`h1` 요소는 `pink-text` 클래스를 갖고 있어야 합니다.

```js
assert($('h1').hasClass('pink-text'));
```

`h1` 요소는 `blue-text` 클래스를 갖고 있어야 합니다.

```js
assert($('h1').hasClass('blue-text'));
```

`h1` 요소는 `orange-text` 라는 id를 갖고 있어야 합니다.

```js
assert($('h1').attr('id') === 'orange-text');
```

`h1` 요소는 인라인 스타일을 갖고 있어야 합니다.

```js
assert(document.querySelector('h1[style]'));
```

`h1` 요소는 흰색으로 나타나야 합니다.

```js
assert($('h1').css('color') === 'rgb(255, 255, 255)');
```

# --seed--

## --seed-contents--

```html
<style>
  body {
    background-color: black;
    font-family: monospace;
    color: green;
  }
  #orange-text {
    color: orange;
  }
  .pink-text {
    color: pink;
  }
  .blue-text {
    color: blue;
  }
</style>
<h1 id="orange-text" class="pink-text blue-text">Hello World!</h1>
```

# --solutions--

```html
<style>
  body {
    background-color: black;
    font-family: monospace;
    color: green;
  }
  #orange-text {
    color: orange;
  }
  .pink-text {
    color: pink;
  }
  .blue-text {
    color: blue;
  }
</style>
<h1 id="orange-text" class="pink-text blue-text" style="color: white">Hello World!</h1>
```
