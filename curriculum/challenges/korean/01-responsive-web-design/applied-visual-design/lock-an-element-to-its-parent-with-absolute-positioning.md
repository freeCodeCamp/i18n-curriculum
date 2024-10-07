---
id: 587d781e367417b2b2512acb
title: 절대 위치 지정을 사용하여 요소를 부모에 고정하기
challengeType: 0
videoUrl: 'https://scrimba.com/c/cyLJ7c3'
forumTopicId: 301060
dashedName: lock-an-element-to-its-parent-with-absolute-positioning
---

# --description--

The next option for the CSS `position` property is `absolute`, which locks the element in place relative to its parent container. Unlike the `relative` position, this removes the element from the normal flow of the document, so surrounding items ignore it. The CSS offset properties (top or bottom and left or right) are used to adjust the position.

절대 위치 지정이란 가장 가까운 *positioned(위치가 지정되있는)* 조상을 기준으로 고정된다는 것입니다. 부모 항목에 위치 규칙을 추가하는 것을 잊으면 (일반적으로 `position: relative;`를 사용하여 이루어집니다), 브라우저는 계속해서 체인을 검색하여 최종적으로 `body` 태그를 기본값으로 설정합니다.

# --instructions--

`position`을 `absolute`으로 선언하여 `#searchbar` 요소를 `section` 부모의 오른쪽 상단에 고정해 주세요. `top`과 `right`에 각각 50 픽셀의 오프셋을 부여합니다.

# --hints--

`#searchbar` 요소의 `position`을 `absolute`으로 설정합니다.

```js
const searchbarElement = document.querySelector('#searchbar');
const searchbarStyle = window.getComputedStyle(searchbarElement);
assert.equal(searchbarStyle?.position, 'absolute');
```

`#searchbar` 요소에 50 픽셀의 `top` CSS 오프셋을 사용합니다.

```js
const searchbarElement = document.querySelector('#searchbar');
const searchbarStyle = window.getComputedStyle(searchbarElement);
assert.equal(searchbarStyle?.top, '50px');
```

`#searchbar` 요소에 50 픽셀의 `right` CSS 오프셋을 사용합니다.

```js
const searchbarElement = document.querySelector('#searchbar');
const searchbarStyle = window.getComputedStyle(searchbarElement);
assert.equal(searchbarStyle?.right, '50px');
```

# --seed--

## --seed-contents--

```html
<style>
  #searchbar {



  }
  section {
    position: relative;
  }
</style>
<body>
  <h1>Welcome!</h1>
  <section>
    <form id="searchbar">
      <label for="search">Search:</label>
      <input type="search" id="search" name="search">
      <input type="submit" name="submit" value="Go!">
    </form>
  </section>
</body>
```

# --solutions--

```html
<style>
  #searchbar {
    position: absolute;
    top: 50px;
    right: 50px;
  }
  section {
    position: relative;
  }
</style>
<body>
  <h1>Welcome!</h1>
  <section>
    <form id="searchbar">
      <label for="search">Search:</label>
      <input type="search" id="search" name="search">
      <input type="submit" name="submit" value="Go!">
    </form>
  </section>
</body>
```
