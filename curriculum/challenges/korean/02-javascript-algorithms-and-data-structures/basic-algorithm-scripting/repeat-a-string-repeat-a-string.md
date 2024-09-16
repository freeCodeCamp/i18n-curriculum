---
id: afcc8d540bea9ea2669306b6
title: 문자열 반복하기
challengeType: 1
forumTopicId: 16041
dashedName: repeat-a-string-repeat-a-string
---

# --description--

주어진 문자열 `str`(첫 번째 인자)을 `num`(두 번째 인자) 회 반복하세요. `num`이 양수가 아니면 빈 문자열을 반환하세요. 이 문제의 목적을 위해, 내장 메서드 `.repeat()`를 사용하지 *않습니다*.

# --hints--

`repeatStringNumTimes("*", 3)`는 문자열 `***`을 반환해야 합니다.

```js
assert(repeatStringNumTimes('*', 3) === '***');
```

`repeatStringNumTimes("abc", 3)`는 문자열 `abcabcabc`를 반환해야 합니다.

```js
assert(repeatStringNumTimes('abc', 3) === 'abcabcabc');
```

`repeatStringNumTimes("abc", 4)`는 문자열 `abcabcabcabc`를 반환해야 합니다.

```js
assert(repeatStringNumTimes('abc', 4) === 'abcabcabcabc');
```

`repeatStringNumTimes("abc", 1)`는 문자열 `abc`를 반환해야 합니다.

```js
assert(repeatStringNumTimes('abc', 1) === 'abc');
```

`repeatStringNumTimes("*", 8)`는 문자열 `********`을 반환해야 합니다.

```js
assert(repeatStringNumTimes('*', 8) === '********');
```

`repeatStringNumTimes("abc", -2)`는 빈 문자열(`""`)을 반환해야 합니다.

```js
assert(repeatStringNumTimes('abc', -2) === '');
```

내장 메서드 `repeat()`는 사용하지 않습니다.

```js
assert(!/\.repeat/g.test(__helpers.removeJSComments(code)));
```

`repeatStringNumTimes("abc", 0)`는 `""`를 반환해야 합니다.

```js
assert(repeatStringNumTimes('abc', 0) === '');
```

# --seed--

## --seed-contents--

```js
function repeatStringNumTimes(str, num) {
  return str;
}

repeatStringNumTimes("abc", 3);
```

# --solutions--

```js
function repeatStringNumTimes(str, num) {
  if (num < 1) return '';
  return num === 1 ? str : str + repeatStringNumTimes(str, num-1);
}

repeatStringNumTimes("abc", 3);
```
