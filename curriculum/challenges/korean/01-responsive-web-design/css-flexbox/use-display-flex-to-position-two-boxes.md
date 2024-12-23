---
id: 587d78ab367417b2b2512af0
title: '두 상자 배치를 위해 display: flex 사용하기'
challengeType: 0
videoUrl: 'https://scrimba.com/p/pVaDAv/cgz3QS7'
forumTopicId: 301105
dashedName: use-display-flex-to-position-two-boxes
---

# --description--

이 섹션에서는 다양한 도전 스타일을 번갈아 사용하여 CSS로 요소들을 유연하게 배치하는 방법을 보여줍니다. 우선 과제는 이론을 설명하고 간단한 트윗 컴포넌트를 사용하는 실제 과제는 flexbox 개념을 적용할 것입니다.

요소에 `display: flex;` 속성을 주는 것은 반응형 페이지를 만들도록 다른 플렉스 속성을 사용할 수 있게 해줍니다.

# --instructions--

`#box-container`에 `display` 속성을 추가하고 `flex` 값을 주세요.

# --hints--

`#box-container`는 `flex` 값을 가진 `display` 속성을 가져야 합니다.

```js
const boxContainer = document.querySelector('#box-container');
const displayStyle = window.getComputedStyle(boxContainer)['display'];
assert.strictEqual(displayStyle, 'flex');
```

# --seed--

## --seed-contents--

```html
<style>
  #box-container {
    height: 500px;

  }

  #box-1 {
    background-color: dodgerblue;
    width: 50%;
    height: 50%;
  }

  #box-2 {
    background-color: orangered;
    width: 50%;
    height: 50%;
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
    height: 500px;
    display: flex;
  }

  #box-1 {
    background-color: dodgerblue;
    width: 50%;
    height: 50%;
  }

  #box-2 {
    background-color: orangered;
    width: 50%;
    height: 50%;
  }
</style>
<div id="box-container">
  <div id="box-1"></div>
  <div id="box-2"></div>
</div>
```
