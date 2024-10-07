---
id: 587d78af367417b2b2512b00
title: align-self 속성 사용하기
challengeType: 0
videoUrl: 'https://scrimba.com/p/pVaDAv/cMbvzfv'
forumTopicId: 301107
dashedName: use-the-align-self-property
---

# --description--

The final property for flex items is `align-self`. This property allows you to adjust each item's alignment individually, instead of setting them all at once. This is useful since other common adjustment techniques using the CSS properties `float`, `clear`, and `vertical-align` do not work on flex items.

`align-self`은 `align-items`과 같은 값을 받아들이며 `align-items` 속성으로 설정된 값을 덮어쓰기 합니다.

# --instructions--

`#box-1`와 `#box-2`에 `align-self` 속성을 추가하세요. `#box-1`에 `center` 그리고 `#box-2`에 `flex-end` 값을 주세요.

# --hints--

`#box-1` 요소는 `center`으로 설정된 `align-self` 속성을 가져야 합니다.

```js
assert($('#box-1').css('align-self') == 'center');
```

`#box-2` 요소는 `flex-end`로 설정된 `align-self` 속성을 가져야 합니다.

```js
assert($('#box-2').css('align-self') == 'flex-end');
```

# --seed--

## --seed-contents--

```html
<style>
  #box-container {
    display: flex;
    height: 500px;
  }
  #box-1 {
    background-color: dodgerblue;

    height: 200px;
    width: 200px;
  }

  #box-2 {
    background-color: orangered;

    height: 200px;
    width: 200px;
  }
</style>

<div id="box-container">
  <div id="box-1"></div>
  <div id="box-2"></div>
</div>
```

# --solutions--

```html
<style>
  #box-container {
    display: flex;
    height: 500px;
  }
  #box-1 {
    background-color: dodgerblue;
    align-self: center;
    height: 200px;
    width: 200px;
  }

  #box-2 {
    background-color: orangered;
    align-self: flex-end;
    height: 200px;
    width: 200px;
  }
</style>

<div id="box-container">
  <div id="box-1"></div>
  <div id="box-2"></div>
</div>
```
