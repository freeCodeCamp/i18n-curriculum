---
id: 587d781e367417b2b2512ac9
title: 요소의 상대적인 위치를 변경하기
challengeType: 0
videoUrl: 'https://scrimba.com/c/czVmMtZ'
forumTopicId: 301044
dashedName: change-an-elements-relative-position
---

# --description--

CSS treats each HTML element as its own box, which is usually referred to as the <dfn>CSS Box Model</dfn>. Block-level items automatically start on a new line (think headings, paragraphs, and divs) while inline items sit within surrounding content (like images or spans). The default layout of elements in this way is called the <dfn>normal flow</dfn> of a document, but CSS offers the position property to override it.

요소의 위치가 `relative`로 설정되면 현재 페이지에서 그 요소가 정상 흐름일 때의 위치를 기준으로 해서 거기에 *상대적으로* 어떻게 CSS를 이용해 이동할지를 지정할 수 있습니다. 이는 CSS의 `left` 또는 `right`, 그리고 `top` 또는 `bottom` 오프셋 속성과 함께 사용됩니다. 이는 항목을 일반적으로 *위치한 곳으로부터* 얼마의 픽셀, 퍼센트 또는 em만큼을 이동할지를 나타냅니다. 다음 예제는 문단을 밑으로부터 10픽셀만큼 이동시킵니다.

```css
p {
  position: relative;
  bottom: 10px;
}
```

요소의 위치를 상대적으로 변경하면 해당 요소가 일반적인 흐름에서 제거되지 않습니다. 주변의 다른 요소들은 여전히 해당 항목이 기본 위치에 있는 것처럼 동작합니다.

**참고:** 위치 지정은 페이지의 시각적 레이아웃에 대한 많은 유연성과 권한을 제공합니다. 요소의 위치가 어디 있든지 간에 기억해야 할 중요한 점은 HTML 마크업이 위에서 아래로 읽을 때 말이 되도록 구성되어야 한다는 것입니다. 이것이 시각 장애를 가진 사용자(화면 낭독기와 같은 보조 기기에 의존하는 사용자)가 콘텐츠를 접하는 방법입니다.

# --instructions--

`h2`의 `position` 속성을 `relative`로 변경하고 CSS 오프셋을 사용하여 해당 요소를 일반적인 흐름일 때의 위치, 즉 `top`에서 15픽셀만큼 이동합니다. 그 주위에 있는 h1과 p요소들에는 영향이 없다는 것을 알 수 있습니다.

# --hints--

`h2`요소의 `position` 속성을 `relative`로 설정해야 합니다.

```js
const h2Element =document.querySelector('h2')
const h2Style = window.getComputedStyle(h2Element);
assert.equal(h2Style?.position, 'relative');
```

CSS 오프셋을 이용해서 `h2`를 일반적 위치 `top`에서 15px 만큼 이동하도록 해야 합니다.

```js
const h2Element =document.querySelector('h2')
const h2Style = window.getComputedStyle(h2Element);
assert.equal(h2Style?.top, '15px');
```

# --seed--

## --seed-contents--

```html
<style>
  h2 {


  }
</style>
<body>
  <h1>On Being Well-Positioned</h1>
  <h2>Move me!</h2>
  <p>I still think the h2 is where it normally sits.</p>
</body>
```

# --solutions--

```html
<style>
  h2 {
    position: relative;
    top: 15px;
  }
</style>
<body>
  <h1>On Being Well-Positioned</h1>
  <h2>Move me!</h2>
  <p>I still think the h2 is where it normally sits.</p>
</body>
```
