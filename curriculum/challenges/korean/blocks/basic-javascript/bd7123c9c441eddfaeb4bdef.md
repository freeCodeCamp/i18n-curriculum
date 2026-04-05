---
id: bd7123c9c441eddfaeb4bdef
title: JavaScript 코드에 주석 달기
challengeType: 1
forumTopicId: 16783
dashedName: comment-your-javascript-code
---

# --description--

주석은 JavaScript가 의도적으로 무시하는 코드 줄입니다. 주석은 자신이나 나중에 그 코드를 이해해야 할 다른 사람에게 메모를 남기는 좋은 방법입니다.

JavaScript에서 주석을 작성하는 방법은 두 가지가 있습니다:

`//`를 사용하면 현재 줄의 나머지 텍스트를 JavaScript가 무시하게 됩니다. 이것은 한 줄 주석입니다:

```js
// This is an in-line comment.
```

`/*`로 시작하고 `*/`로 끝나는 여러 줄 주석을 만들 수 있습니다. 이것은 여러 줄 주석입니다:

```js
/* This is a
multi-line comment */
```

**참고:** 코드를 작성할 때는 코드의 각 부분 기능을 명확히 하기 위해 주석을 자주 추가하세요. 좋은 주석은 다른 사람과 미래의 자신에게 코드 의도를 전달하는 데 도움이 됩니다.

# --instructions--

각 유형의 주석을 하나씩 만들어 보세요.

# --hints--

적어도 다섯 글자가 포함된 `//` 스타일 주석을 만들어야 합니다.

```js
assert(code.match(/(\/\/)...../g));
```

적어도 다섯 글자가 포함된 `/* */` 스타일 주석을 만들어야 합니다.

```js
assert(code.match(/(\/\*)([^\/]{5,})(?=\*\/)/gm));
```

# --seed--

## --seed-contents--

```js

```

# --solutions--

```js
// Fake Comment
/* Another Comment */
```
