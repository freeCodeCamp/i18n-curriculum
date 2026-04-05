---
id: bad87fee1348bd9aedf0887a
title: h2 요소로 제목 만들기
challengeType: 0
videoUrl: 'https://scrimba.com/p/pVMPUv/cE8Gqf3'
forumTopicId: 18196
dashedName: headline-with-the-h2-element
---

# --description--

앞으로 몇 개의 수업에서 HTML5 고양이 사진 웹 앱을 한 단계씩 만들어 나가겠습니다.

이 단계에서 추가할 `h2` 요소는 웹 페이지에 두 번째 수준 제목을 추가합니다.

이 요소는 브라우저에 웹사이트 구조를 알려줍니다. `h1` 요소는 주로 주요 제목에 사용되고, `h2` 요소는 일반적으로 부제목에 사용됩니다. 또한 서로 다른 수준의 부제목을 나타내는 `h3`, `h4`, `h5`, `h6` 요소도 있습니다.

# --instructions--

"Hello World" `h2` 요소 아래에 두 번째 HTML 요소로 "CatPhotoApp"이라는 텍스트를 가진 `h1` 태그를 추가하세요.

# --hints--

`h2` 요소를 만들어야 합니다.

```js
assert.lengthOf(document.querySelectorAll('h2'),1);
```

`h2` 요소에는 닫는 태그가 있어야 합니다.

```js
assert.match(code,/<\/h2>/g);
assert.strictEqual(code.match(/<\/h2>/g).length,code.match(/<h2>/g).length);
```

`h2` 요소에는 `CatPhotoApp` 텍스트가 있어야 합니다.

```js
assert.match(document.querySelector('h2').textContent,/cat(\s)?photo(\s)?app/gi);
```

`h1` 요소에는 `Hello World` 텍스트가 있어야 합니다.

```js
assert.match(document.querySelector('h1').textContent,/hello(\s)+world/gi);
```

`h1` 요소는 `h2` 요소 앞에 있어야 합니다.

```js
assert.match(code,/<h1>\s*?.*?\s*?<\/h1>\s*<h2>\s*?.*?\s*?<\/h2>/gi);
```

# --seed--

## --seed-contents--

```html
<h1>Hello World</h1>
```

# --solutions--

```html
<h1>Hello World</h1>
<h2>CatPhotoApp</h2>
```
