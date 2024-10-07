---
id: 587d78a5367417b2b2512ada
title: CSS transform scale 속성을 사용하여 요소를 호버 시 확대하는 방법
challengeType: 0
videoUrl: 'https://scrimba.com/c/cyLPJuM'
forumTopicId: 301077
dashedName: use-the-css-transform-scale-property-to-scale-an-element-on-hover
---

# --description--

The `transform` property has a variety of functions that let you scale, move, rotate, skew, etc., your elements. When used with pseudo-classes such as `:hover` that specify a certain state of an element, the `transform` property can easily add interactivity to your elements.

다음은 사용자가 그 위에 마우스를 올리면 문단 요소를 원래 크기의 2.1배로 확대하는 예제입니다.

```css
p:hover {
  transform: scale(2.1);
}
```

**참고:** `div` 요소에 변형을 적용하면 div에 포함된 모든 하위 요소에도 영향을 미칩니다.

# --instructions--

`div`의 `hover` 상태에 대한 CSS 규칙을 추가하고 사용자가 호버할 때 `div` 요소의 크기를 원래 크기의 1.1배로 확대하는 `transform` 속성을 사용하세요.

# --hints--

사용자가 호버할 때 `div` 요소의 크기는 1.1배로 확대되어야 합니다.

```js
assert.match(code, /div:hover\s*?{\s*?transform:\s*?scale\(1\.1\);/gi);
```

# --seed--

## --seed-contents--

```html
<style>
  div {
    width: 70%;
    height: 100px;
    margin:  50px auto;
    background: linear-gradient(
      53deg,
      #ccfffc,
      #ffcccf
    );
  }



</style>

<div></div>
```

# --solutions--

```html
<style>
  div {
    width: 70%;
    height: 100px;
    margin:  50px auto;
    background: linear-gradient(
      53deg,
      #ccfffc,
      #ffcccf
    );
  }
  div:hover {
    transform: scale(1.1);
  }
</style>
<div></div>
```
