---
id: 6551eebe6cbb2e6cadf9b468
title: 2단계
challengeType: 20
dashedName: step-2
---

# --description--

변수는 다양한 데이터 유형의 값을 저장할 수 있습니다. 방금 정수 값을 할당했지만, 텍스트를 나타내려면 문자열을 할당해야 합니다. 문자열은 작은따옴표나 큰따옴표로 감싼 문자 수열이지만, 문자열을 작은따옴표로 시작하고 큰따옴표로 끝내거나 그 반대로 할 수는 없습니다.

```py
string_1 = "I am a string"
string_2 = 'I am also a string'
string_3 = 'This is not valid"
```

`number` 변수를 삭제하고 그 값을 삭제하세요. 그런 다음 `text`이라는 변수를 선언하고 문자열 `'Hello World'`를 이 변수에 할당하세요.

# --hints--

코드에 `number = 5`가 없어야 합니다.

```js
const commentless_code = __helpers.python.removeComments(code);
assert.isFalse(/number\s*=\s*5/.test(commentless_code))
```

`text`라는 변수를 선언해야 합니다. 변수 이름을 줄 맨 앞에 두는지 주의하세요.

```js
assert.match(code, /^text\s*=/m)
```

`'Hello World'` 변수에 문자열 `text`를 할당해야 합니다. 문자열을 감쌀 때 작은따옴표나 큰따옴표 중 하나를 사용하고, 대소문자도 주의하세요.

```js
assert.match(code, /^text\s*=\s*("|')Hello World\1\s*(#.*)?$/m)
```

코드에 잘못된 구문이나 잘못된 들여쓰기가 포함되어 있습니다.

```js
({test: () => assert(true) })
```

# --seed--

## --seed-contents--

```py
--fcc-editable-region--
number = 5
--fcc-editable-region--
```
