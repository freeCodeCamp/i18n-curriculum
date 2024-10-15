---
id: 587d78a3367417b2b2512ad0
title: margin 속성을 활용하여 요소를 수평으로 가운데 맞추기
challengeType: 0
videoUrl: 'https://scrimba.com/c/cyLJqU4'
forumTopicId: 301043
dashedName: center-an-element-horizontally-using-the-margin-property
---

# --description--

Another positioning technique is to center a block element horizontally. One way to do this is to set its `margin` to a value of auto.

이 방법은 사진들에도 사용할 수 있습니다. 사진들은 기본적으로 인라인 요소들이지만 `display` 속성을 `block`로 설정하면 블록 요소로 바꿀 수 있습니다.

# --instructions--

`margin` 속성에 `auto` 값을 추가하여 페이지 가운데에 `div`을 정렬합니다.

# --hints--

`div`는 `margin`이 `auto`로 설정되어야 합니다.

```js
assert.equal(new __helpers.CSSHelp(document).getStyle('div')?.margin ,'auto');
```

# --seed--

## --seed-contents--

```html
<style>
  div {
    background-color: blue;
    height: 100px;
    width: 100px;

  }
</style>
<div></div>
```

# --solutions--

```html
<style>
  div {
    background-color: blue;
    height: 100px;
    width: 100px;
    margin: auto;
  }
</style>
<div></div>
```
