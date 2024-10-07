---
id: bd7123c9c441eddfaeb4bdef
title: 자바스크립트 코드에 코멘트를 남기기
challengeType: 1
videoUrl: 'https://scrimba.com/c/c7ynnTp'
forumTopicId: 16783
dashedName: comment-your-javascript-code
---

# --description--

Comments are lines of code that JavaScript will intentionally ignore. Comments are a great way to leave notes to yourself and to other people who will later need to figure out what that code does.

자바스크립트에는 코멘트를 남기는 2가지 방법이 있습니다.

`//` 를 사용하는 것으로, 자바스크립트에게 현재 행의 남은 텍스트들을 무시하라고 말할 수 있습니다. 이것이 인라인(in-line) 코멘트입니다.

```js
// This is an in-line comment.
```

`/*`와 `*/` 를 사용해 여러 행에 걸쳐 코멘트를 작성하는 것도 가능합니다. 이것이 멀티라인(multi-line) 코멘트입니다.

```js
/* This is a
multi-line comment */
```

**NOTE:** 당신이 코드를 쓸 때, 코드가 부분적으로 가진 기능을 명확히하기 위해 규칙적으로 코멘트를 추가해야 합니다. 좋은 코멘트를 남기는 것은 자기 코드의 의도를 전달하는 데 도움이 됩니다. 다른 사람을 위해서나 *혹은* 미래의 자기 자신을 위해서 말이죠.

# --instructions--

각 타입의 코멘트를 작성해 보세요

# --hints--

당신은 5글자 이상이 되는 `//` 스타일의 코멘트를 작성해야 합니다.

```js
assert(code.match(/(\/\/)...../g));
```

당신은 5글자 이상이 되는 `/* */` 스타일의 코멘트를 작성해야 합니다.

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
