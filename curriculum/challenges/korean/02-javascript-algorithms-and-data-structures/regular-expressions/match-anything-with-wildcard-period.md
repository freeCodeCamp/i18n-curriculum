---
id: 587d7db5367417b2b2512b94
title: 와일드 카드 기간으로 모든 것 일치시키기
challengeType: 1
forumTopicId: 301348
dashedName: match-anything-with-wildcard-period
---

# --description--

때때로 패턴에서 정확한 문자들을 알지 못하거나 (또는 알 필요가 없을 때가) 있습니다. 모든 단어를 생각해 내, 예를 들어, 철자가 틀린 단어를 일치시키려면 시간이 오래 걸릴 것입니다. 다행히도, 와일드카드 문자: `.` 를 사용하여 시간을 절약할 수 있습니다.

와일드카드 문자 `.` 는 한 문자를 일치시킵니다. 와일드카드는 또한 `dot` 그리고 `period`로 불립니다. 정규 표현식에서 와일드카드 문자를 다른 문자처럼 사용할 수 있습니다. 예를 들어, `hug`, `huh`, `hut`, `hum`을 일치시키고 싶다면, 정규 표현식 `/hu./`를 사용하여 네 단어 모두를 일치시킬 수 있습니다.

```js
let humStr = "I'll hum a song";
let hugStr = "Bear hug";
let huRegex = /hu./;
huRegex.test(humStr);
huRegex.test(hugStr);
```

두 `test` 호출 모두 `true`를 반환합니다.

# --instructions--

정규 표현식 `unRegex`를 완성하여 `run`, `sun`, `fun`, `pun`, `nun`, 그리고 `bun` 문자열과 일치시키세요. 정규 표현식은 와일드카드 문자를 사용해야 합니다.

# --hints--

`.test()` 메서드를 사용해야 합니다.

```js
assert(__helpers.removeJSComments(code).match(/\.test\(.*\)/));
```

정규 표현식 `unRegex`에서 와일드카드 문자를 사용해야 합니다.

```js
assert(/\./.test(unRegex.source));
```

정규 표현식 `unRegex`는 문자열 `Let us go on a run.`에서 `run`과 일치해야 합니다.

```js
unRegex.lastIndex = 0;
assert(unRegex.test('Let us go on a run.'));
```

정규 표현식 `unRegex`는 문자열 `The sun is out today.`에서 `sun`과 일치해야 합니다.

```js
unRegex.lastIndex = 0;
assert(unRegex.test('The sun is out today.'));
```

정규 표현식 `unRegex`는 문자열 `Coding is a lot of fun.`에서 `fun`과 일치해야 합니다.

```js
unRegex.lastIndex = 0;
assert(unRegex.test('Coding is a lot of fun.'));
```

정규 표현식 `unRegex`는 문자열 `Seven days without a pun makes one weak.`에서 `pun`과 일치해야 합니다.

```js
unRegex.lastIndex = 0;
assert(unRegex.test('Seven days without a pun makes one weak.'));
```

정규 표현식 `unRegex`는 문자열 `One takes a vow to be a nun.`에서 `nun`과 일치해야 합니다.

```js
unRegex.lastIndex = 0;
assert(unRegex.test('One takes a vow to be a nun.'));
```

정규 표현식 `unRegex`는 문자열 `She got fired from the hot dog stand for putting her hair in a bun.`에서 `bun`과 일치해야 합니다.

```js
unRegex.lastIndex = 0;
assert(
  unRegex.test(
    'She got fired from the hot dog stand for putting her hair in a bun.'
  )
);
```

정규 표현식 `unRegex`는 문자열 `There is a bug in my code.`와 일치하지 않아야 합니다.

```js
unRegex.lastIndex = 0;
assert(!unRegex.test('There is a bug in my code.'));
```

정규 표현식 `unRegex`는 문자열 `Catch me if you can.`와 일치하지 않아야 합니다.

```js
unRegex.lastIndex = 0;
assert(!unRegex.test('Catch me if you can.'));
```

# --seed--

## --seed-contents--

```js
let exampleStr = "Let's have fun with regular expressions!";
let unRegex = /change/; // Change this line
let result = unRegex.test(exampleStr);
```

# --solutions--

```js
let exampleStr = "Let's have fun with regular expressions!";
let unRegex = /.un/; // Change this line
let result = unRegex.test(exampleStr);
```
