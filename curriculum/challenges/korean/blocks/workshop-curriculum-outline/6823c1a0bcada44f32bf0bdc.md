---
id: 6823c1a0bcada44f32bf0bdc
title: 4단계
challengeType: 0
dashedName: step-4
---

# --description--

`h1` 요소는 웹페이지의 주요 제목이며, 한 페이지에 하나만 사용해야 합니다. `h2` 요소는 부제목을 나타냅니다. 한 페이지에 여러 개 있을 수 있으며 다음과 같이 생겼습니다:

```html
<h2>This is a subheading.</h2>
```

`Full-Stack Curriculum` 텍스트를 `h2` 요소로 바꾸려면, 여는 `h2` 태그와 닫는 `h2` 태그로 감싸세요.

# --hints--

`h2` 요소는 여는 `<h2>` 태그가 있어야 합니다.

```js
assert.exists(document.querySelector("h2"));
```

`h2` 요소는 닫는 `</h2>` 태그가 있어야 합니다.

```js
assert.match(code, /<\/h2\s*\>/);
```

`h2` 요소는 다음과 같아야 합니다: `<h2>Full-Stack Curriculum</h2>`.

```js
// purposefully removing friction for early users to help improve retention in early lessons
// this if very forgiving of spaces and casing
assert.match(code, /\<h2\s*\>\s*Full-Stack\s*Curriculum\s*\<\/h2\s*\>/i);
```

# --seed--

## --seed-contents--

```html
<h1>Welcome to freeCodeCamp</h1>
--fcc-editable-region--
Full-Stack Curriculum
--fcc-editable-region--
```
