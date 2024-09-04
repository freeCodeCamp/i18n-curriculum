---
id: bad87fee1348bd9aec908746
title: 부트스트랩 container-fluid div 안에 페이지 배치하기
challengeType: 0
forumTopicId: 18198
dashedName: house-our-page-within-a-bootstrap-container-fluid-div
---

# --description--

페이지에 있는 모든 콘텐츠를 모바일 반응형으로 만들어보려 합니다.

`container-fluid`라는 클래스를 가진 `div` 요소 하위에 `h3` 요소를 배치해주세요.

# --hints--

`div` 요소는 `container-fluid`라는 클래스를 가져야 합니다.

```js
assert.isTrue(document.querySelector('div')?.classList?.contains('container-fluid'));
```

각각의 `div` 요소는 닫는 태그를 가져야 합니다.

```js
assert.match(code,/<\/div>/g);
assert.match(code,/<div/g);

assert.equal(code.match(/<\/div>/g).length ,code.match(/<div/g).length);
```

`h3` 요소는 `div` 요소 안에 들어있어야 합니다.

```js
const divElement = document.querySelector('div');
const divChildren = divElement?.querySelectorAll(`:scope ${'h3'}`)
assert.lengthOf(divChildren,1);
```

# --seed--

## --seed-contents--

```html
<h3 class="text-primary text-center">jQuery Playground</h3>
```

# --solutions--

```html
<div class="container-fluid">
    <h3 class="text-primary text-center">jQuery Playground</h3>
</div>
```
