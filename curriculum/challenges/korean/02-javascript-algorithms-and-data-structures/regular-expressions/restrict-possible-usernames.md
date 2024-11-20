---
id: 587d7db8367417b2b2512ba2
title: 사용자 이름 제한
challengeType: 1
forumTopicId: 301363
dashedName: restrict-possible-usernames
---

# --description--

사용자 이름은 인터넷 어디에서나 사용됩니다. 이것들이 사용자가 즐겨 이용하는 사이트에서 고유한 정체성을 부여합니다.

당신은 데이터베이스의 모든 사용자 이름을 확인해야 합니다. 여기 사용자가 사용자 이름을 만들 때 따라야 할 몇 가지 간단한 규칙이 있습니다.

1) 사용자 이름은 영문 또는 숫자만 사용할 수 있습니다.

2) 사용자 이름의 숫자는 끝에만 있어야 합니다. 끝에 숫자가 없거나 여러 개 있을 수 있습니다. 사용자 이름은 숫자로 시작할 수 없습니다.

3) 사용자 이름의 문자에는 소문자와 대문자를 사용할 수 있습니다.

4) 사용자 이름은 최소한 두 글자 이상이어야 합니다. 두 글자로 된 사용자 이름은 문자로 알파벳 문자만 사용할 수 있습니다.

# --instructions--

정규 표현식 `userCheck`를 위의 제한 사항에 맞게 변경하세요.

# --hints--

이 정규 표현식은 문자열 `JACK`와 일치해야 합니다.

```js
userCheck.lastIndex = 0;
assert(userCheck.test('JACK'));
```

이 정규 표현식은 문자열 `J`와 일치하지 않아야 합니다.

```js
userCheck.lastIndex = 0;
assert(!userCheck.test('J'));
```

이 정규 표현식은 문자열 `Jo`와 일치해야 합니다.

```js
userCheck.lastIndex = 0;
assert(userCheck.test('Jo'));
```

이 정규 표현식은 문자열 `Oceans11`와 일치해야 합니다.

```js
userCheck.lastIndex = 0;
assert(userCheck.test('Oceans11'));
```

이 정규 표현식은 문자열 `RegexGuru`와 일치해야 합니다.

```js
userCheck.lastIndex = 0;
assert(userCheck.test('RegexGuru'));
```

이 정규 표현식은 문자열 `007`와 일치하지 않아야 합니다.

```js
userCheck.lastIndex = 0;
assert(!userCheck.test('007'));
```

이 정규 표현식은 문자열 `9`와 일치하지 않아야 합니다.

```js
userCheck.lastIndex = 0;
assert(!userCheck.test('9'));
```

이 정규 표현식은 문자열 `A1`와 일치하지 않아야 합니다.

```js
userCheck.lastIndex = 0;
assert(!userCheck.test('A1'));
```

이 정규 표현식은 문자열 `BadUs3rnam3`와 일치하지 않아야 합니다.

```js
userCheck.lastIndex = 0;
assert(!userCheck.test('BadUs3rnam3'));
```

이 정규 표현식은 문자열 `Z97`와 일치해야 합니다.

```js
userCheck.lastIndex = 0;
assert(userCheck.test('Z97'));
```

이 정규 표현식은 문자열 `c57bT3`와 일치하지 않아야 합니다.

```js
userCheck.lastIndex = 0;
assert(!userCheck.test('c57bT3'));
```

이 정규 표현식은 문자열 `AB1`와 일치해야 합니다.

```js
userCheck.lastIndex = 0;
assert(userCheck.test('AB1'));
```

이 정규 표현식은 문자열 `J%4`와 일치하지 않아야 합니다.

```js
userCheck.lastIndex = 0;
assert(!userCheck.test('J%4'))
```

# --seed--

## --seed-contents--

```js
let username = "JackOfAllTrades";
let userCheck = /change/; // Change this line
let result = userCheck.test(username);
```

# --solutions--

```js
let username = "JackOfAllTrades";
const userCheck = /^[a-z]([0-9]{2,}|[a-z]+\d*)$/i;
let result = userCheck.test(username);
```
