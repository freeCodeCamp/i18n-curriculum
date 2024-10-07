---
id: 587d781e367417b2b2512aca
title: 상대적으로 위치한 요소를 CSS 오프셋으로 옮기기
challengeType: 0
videoUrl: 'https://scrimba.com/c/c9bQEA4'
forumTopicId: 301065
dashedName: move-a-relatively-positioned-element-with-css-offsets
---

# --description--

The CSS offsets of `top` or `bottom`, and `left` or `right` tell the browser how far to offset an item relative to where it would sit in the normal flow of the document. You're offsetting an element away from a given spot, which moves the element away from the referenced side (effectively, the opposite direction). As you saw in the last challenge, using the `top` offset moved the `h2` downwards. Likewise, using a `left` offset moves an item to the right.

# --instructions--

CSS 오프셋을 사용하여 `h2`를 오른쪽으로 15픽셀, 위로 10픽셀 이동하세요.

# --hints--

코드에서 CSS 오프셋을 사용하여 `h2`를 상대적으로 10px 위로 위치시켜야 합니다. 다시 말해, 원래 위치한 곳의 `bottom`에서 10px 떨어진 곳으로 이동시키세요.

```js
const h2Element =document.querySelector('h2')
const h2Style = window.getComputedStyle(h2Element);
assert.equal(h2Style?.bottom, '10px');
```

코드에서 CSS 오프셋을 사용하여 `h2`를 상대적으로 오른쪽으로 15px 떨어진 곳에 배치해야 합니다. 다시 말해, 원래 위치한 곳의 `left`에서 15px 만큼 이동시켜야 합니다.

```js
const h2Element =document.querySelector('h2')
const h2Style = window.getComputedStyle(h2Element);
assert.equal(h2Style?.left , '15px');
```

# --seed--

## --seed-contents--

```html
<head>
<style>
  h2 {
    position: relative;


  }
</style>
</head>
<body>
  <h1>On Being Well-Positioned</h1>
  <h2>Move me!</h2>
  <p>I still think the h2 is where it normally sits.</p>
</body>
```

# --solutions--

```html
<head>
<style>
  h2 {
    position: relative;
    left: 15px;
    bottom: 10px;
  }
</style>
</head>
<body>
  <h1>On Being Well-Positioned</h1>
  <h2>Move me!</h2>
  <p>I still think the h2 is where it normally sits.</p>
</body>
```
