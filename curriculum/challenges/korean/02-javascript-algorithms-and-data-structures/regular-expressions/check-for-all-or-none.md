---
id: 587d7dba367417b2b2512ba8
title: 모두 다 이거나 혹은 아예 없음을 확인하기
challengeType: 1
forumTopicId: 301338
dashedName: check-for-all-or-none
---

# --description--

내가 찾고자 하는 패턴에 어떤 일정 부분이 있을 수도 있고 없을 수도 있습니다. 그럼에도 확인을 하는 것이 중요할 수 있습니다.

물음표 `?`를 사용하여 요소의 존재 가능성을 지정할 수 있습니다. 이것은 이전 요소의 0 또는 1의 존재를 확인합니다. 이 기호를 이전 요소는 선택적이라고 말하는 것으로 생각할 수 있습니다.

예를 들어, 미국 영어와 영국 영어의 미세한 차이가 있으며, 물음표를 사용하여 두 가지 철자를 모두 맞출 수 있습니다.

```js
let american = "color";
let british = "colour";
let rainbowRegex= /colou?r/;
rainbowRegex.test(american);
rainbowRegex.test(british);
```

`test` 메서드의 두 가지 사용 경우 모두 `true`를 반환합니다.

# --instructions--

미국 영어(`favorite`) 및 영국 영어(`favourite`) 버전의 단어를 모두 일치시키도록 정규 표현식 `favRegex`를 변경하세요.

# --hints--

이 정규 표현식에서 선택적 기호 `?`를 사용해야 합니다.

```js
favRegex.lastIndex = 0;
assert(favRegex.source.match(/\?/).length > 0);
```

이 정규 표현식은 문자열 `favorite`와 일치해야 합니다.

```js
favRegex.lastIndex = 0;
assert(favRegex.test('favorite'));
```

이 정규 표현식은 문자열 `favourite`와 일치해야 합니다.

```js
favRegex.lastIndex = 0;
assert(favRegex.test('favourite'));
```

이 정규 표현식은 문자열 `fav`와 일치하지 않아야 합니다.

```js
favRegex.lastIndex = 0;
assert(!favRegex.test('fav'));
```

# --seed--

## --seed-contents--

```js
let favWord = "favorite";
let favRegex = /change/; // Change this line
let result = favRegex.test(favWord);
```

# --solutions--

```js
let favWord = "favorite";
let favRegex = /favou?r/;
let result = favRegex.test(favWord);
```
