---
id: bad87fee1348bd9aedf08802
title: HTML 주석 해제하기
challengeType: 0
videoUrl: 'https://scrimba.com/p/pVMPUv/cBmG9T7'
forumTopicId: 18329
dashedName: uncomment-html
---

# --description--

Commenting is a way that you can leave comments for other developers within your code without affecting the resulting output that is displayed to the end user.

주석 달기는 코드를 완전히 삭제하지 않고도 코드를 비활성화할 수 있는 편리한 방법이기도 합니다.

HTML 주석은 `<!--` 로 시작하고 `-->`로 끝납니다.

# --instructions--

`h1`, `h2` 와 `p`의 주석을 해제하세요.

# --hints--

`h1` 요소가 주석이 제거되어 페이지에 표시되어야 합니다.

```js
assert.notEmpty(document.querySelectorAll('h1'));
```

`h2` 요소가 주석이 제거되어 페이지에 표시되어야 합니다.

```js
assert.notEmpty(document.querySelectorAll('h2'));
```

`p` 요소가 주석이 제거되어 페이지에 표시되어야 합니다.

```js
assert.notEmpty(document.querySelectorAll('p'));
```

페이지에 주석이 표시되지 않아야 합니다 (예: `-->`).

```js
const elements = document.querySelectorAll('*');
const potentialComments = Array.from(elements).filter(el => el.textContent.includes('-->'));
assert.notExists(potentialComments[1])
```

# --seed--

## --seed-contents--

```html
<!--
<h1>Hello World</h1>

<h2>CatPhotoApp</h2>

<p>Kitty ipsum dolor sit amet, shed everywhere shed everywhere stretching attack your ankles chase the red dot, hairball run catnip eat the grass sniff.</p>
-->
```

# --solutions--

```html
<h1>Hello World</h1>

<h2>CatPhotoApp</h2>

<p>Kitty ipsum dolor sit amet, shed everywhere shed everywhere stretching attack your ankles chase the red dot, hairball run catnip eat the grass sniff.</p>
```
