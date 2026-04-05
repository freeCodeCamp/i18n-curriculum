---
id: bd7123c8c441eddfaeb5bdef
title: HTML 요소에 인사하기
challengeType: 0
videoUrl: 'https://scrimba.com/p/pVMPUv/cE8Gpt2'
forumTopicId: 18276
dashedName: say-hello-to-html-elements
---

# --description--

freeCodeCamp의 HTML 코딩 도전 과제에 오신 것을 환영합니다. 이 과정은 웹 개발을 단계별로 안내합니다.

먼저 HTML을 사용해 간단한 웹 페이지를 만드는 것부터 시작하세요. 이 웹 페이지에 임베드된 코드 편집기에서 코드를 수정할 수 있습니다.

코드 편집기에서 `<h1>Hello</h1>`라고 적힌 코드를 보나요? 그것이 HTML 요소입니다.

대부분의 HTML 요소는 여는 태그와 닫는 태그가 있습니다.

여는 태그는 다음과 같습니다:

```html
<h1>
```

닫는 태그는 다음과 같습니다:

```html
</h1>
```

여는 태그와 닫는 태그의 유일한 차이는 닫는 태그의 여는 괄호 뒤에 있는 슬래시입니다.

각 도전 과제에는 언제든지 "Run tests" 버튼을 클릭해 실행할 수 있는 테스트가 있습니다. 모든 테스트를 통과하면 솔루션을 제출하고 다음 코딩 도전 과제로 넘어가라는 안내가 표시됩니다.

# --instructions--

이 도전 과제의 테스트를 통과하려면 `h1` 요소의 텍스트를 `Hello World`로 변경하세요.

# --hints--

`h1` 요소의 텍스트는 `Hello World`여야 합니다.

```js
assert.match(document.querySelector('h1').textContent,/hello(\s)+world/gi);
```

# --seed--

## --seed-contents--

```html
<h1>Hello</h1>
```

# --solutions--

```html
<h1>Hello World</h1>
```
