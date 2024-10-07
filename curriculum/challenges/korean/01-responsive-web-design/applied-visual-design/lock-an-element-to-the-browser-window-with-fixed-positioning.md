---
id: 587d781e367417b2b2512acc
title: 브라우저 창에 요소를 고정 위치로 설정하기
challengeType: 0
videoUrl: 'https://scrimba.com/c/c2MDNUR'
forumTopicId: 301061
dashedName: lock-an-element-to-the-browser-window-with-fixed-positioning
---

# --description--

The next layout scheme that CSS offers is the `fixed` position, which is a type of absolute positioning that locks an element relative to the browser window. Similar to absolute positioning, it's used with the CSS offset properties and also removes the element from the normal flow of the document. Other items no longer "realize" where it is positioned, which may require some layout adjustments elsewhere.

`fixed`와 `absolute` 위치의 주요 차이점 중 하나는 fixed 위치를 가진 요소는 사용자가 스크롤할 때 움직이지 않는다는 것입니다.

# --instructions--

코드에서 네비게이션 바는 `navbar`라는 id로 지정되어 있습니다. 이 네비게이션바의 `position`을 `fixed`로 변경하고, `top`에서 0 픽셀, `left`에서 0 픽셀로 오프셋하십시오. 코드를 작성한 후 미리보기 창을 스크롤하면서 내비게이션이 제 위치에 머물러 있는지 확인해보세요.

# --hints--

`#navbar` 요소의 `position` 속성을 `fixed`로 설정해야 합니다.

```js
const navbarElement = document.querySelector('#navbar');
const navbarStyle = window.getComputedStyle(navbarElement);
 assert.equal(navbarStyle?.position, 'fixed');
```

`#navbar` 요소의 `top` CSS 오프셋을 0 픽셀로 설정해야 합니다.

```js
const navbarElement = document.querySelector('#navbar');
 const navbarStyle = window.getComputedStyle(navbarElement);
assert.equal(navbarStyle?.top, '0px');
```

`#navbar` 요소의 `left` CSS 오프셋을 0 픽셀로 설정해야 합니다.

```js
const navbarElement = document.querySelector('#navbar');
 const navbarStyle = window.getComputedStyle(navbarElement);
 assert.equal(navbarStyle?.left, '0px');
```

# --seed--

## --seed-contents--

```html
<style>
  body {
    min-height: 150vh;
  }
  #navbar {



    width: 100%;
    background-color: #767676;
  }
  nav ul {
    margin: 0px;
    padding: 5px 0px 5px 30px;
  }
  nav li {
    display: inline;
    margin-right: 20px;
  }
  a {
    text-decoration: none;
  }
</style>
<body>
  <header>
    <h1>Welcome!</h1>
    <nav id="navbar">
      <ul>
        <li><a href="">Home</a></li>
        <li><a href="">Contact</a></li>
      </ul>
    </nav>
  </header>
  <p>I shift up when the #navbar is fixed to the browser window.</p>
</body>
```

# --solutions--

```html
<style>
  body {
    min-height: 150vh;
  }
  #navbar {
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    background-color: #767676;
  }
  nav ul {
    margin: 0px;
    padding: 5px 0px 5px 30px;
  }
  nav li {
    display: inline;
    margin-right: 20px;
  }
  a {
    text-decoration: none;
  }
</style>
<body>
  <header>
    <h1>Welcome!</h1>
    <nav id="navbar">
      <ul>
        <li><a href="">Home</a></li>
        <li><a href="">Contact</a></li>
      </ul>
    </nav>
  </header>
  <p>I shift up when the #navbar is fixed to the browser window.</p>
</body>
```
