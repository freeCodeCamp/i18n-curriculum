---
id: af2170cad53daa0770fabdea
title: 변이 알고리즘 구현하기
challengeType: 26
dashedName: implement-the-mutations-algorithm
---

# --description--

**목표:** 아래 사용자 스토리를 충족하고 모든 테스트를 통과하여 실습을 완료하세요.

**사용자 스토리:**

1. 배열을 인수로 받는 `mutation`라는 이름의 함수를 만드세요.
1. `mutation`은 배열의 첫 번째 요소에 있는 문자열이 배열의 두 번째 요소에 있는 문자열의 모든 문자를 포함하면 `true`를 반환하고, 그렇지 않으면 `false`를 반환해야 합니다. 예를 들어:
    - `mutation(["hello", "Hello"])`는 두 번째 문자열의 모든 문자가 첫 번째 문자열에 대소문자 구분 없이 존재하므로 `true`를 반환해야 합니다.
    - `mutation(["hello", "hey"])`는 `false` 문자열에 `hello`가 없기 때문에 `y`를 반환해야 합니다.
    - `mutation(["Alien", "line"])`는 `true`의 모든 문자가 `line`에 존재하므로 `Alien`를 반환해야 합니다.

# --hints--

`mutation(["hello", "hey"])`는 `false`를 반환해야 합니다.

```js
assert.isFalse(mutation(['hello', 'hey']));
```

`mutation(["hello", "Hello"])`는 `true`를 반환해야 합니다.

```js
assert.isTrue(mutation(['hello', 'Hello']));
```

`mutation(["zyxwvutsrqponmlkjihgfedcba", "qrstu"])`는 `true`를 반환해야 합니다.

```js
assert.isTrue(mutation(['zyxwvutsrqponmlkjihgfedcba', 'qrstu']));
```

`mutation(["Mary", "Army"])`는 `true`를 반환해야 합니다.

```js
assert.isTrue(mutation(['Mary', 'Army']));
```

`mutation(["Mary", "Aarmy"])`는 `true`를 반환해야 합니다.

```js
assert.isTrue(mutation(['Mary', 'Aarmy']));
```

`mutation(["Alien", "line"])`는 `true`를 반환해야 합니다.

```js
assert.isTrue(mutation(['Alien', 'line']));
```

`mutation(["floor", "for"])`는 `true`를 반환해야 합니다.

```js
assert.isTrue(mutation(['floor', 'for']));
```

`mutation(["hello", "neo"])`는 `false`를 반환해야 합니다.

```js
assert.isFalse(mutation(['hello', 'neo']));
```

`mutation(["voodoo", "no"])`는 `false`를 반환해야 합니다.

```js
assert.isFalse(mutation(['voodoo', 'no']));
```

`mutation(["ate", "date"])`는 `false`를 반환해야 합니다.

```js
assert.isFalse(mutation(['ate', 'date']));
```

`mutation(["Tiger", "Zebra"])`는 `false`를 반환해야 합니다.

```js
assert.isFalse(mutation(['Tiger', 'Zebra']));
```

`mutation(["Noel", "Ole"])`는 `true`를 반환해야 합니다.

```js
assert.isTrue(mutation(['Noel', 'Ole']));
```

# --seed--

## --seed-contents--

```js
```

# --solutions--

```js
function mutation(arr) {
  let hash = Object.create(null);

  arr[0]
    .toLowerCase()
    .split('')
    .forEach(c => (hash[c] = true));

  return !arr[1]
    .toLowerCase()
    .split('')
    .filter(c => !hash[c]).length;
}

mutation(['hello', 'hey']);
```
