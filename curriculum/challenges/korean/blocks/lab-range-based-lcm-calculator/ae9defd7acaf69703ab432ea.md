---
id: ae9defd7acaf69703ab432ea
title: 범위 기반 최소공배수 계산기 구현
challengeType: 26
dashedName: implement-a-range-based-lcm-calculator
---

# --description--

이 실습에서는 두 숫자가 들어 있는 배열을 인수로 받아 그 두 숫자와 그 사이에 있는 모든 숫자의 최소공배수(LCM)를 반환하는 함수를 만드세요.

**목표**: 아래 사용자 스토리를 충족하고 모든 테스트를 통과하여 실습을 완료하세요.

**사용자 스토리**

1. 두 숫자가 들어 있는 배열을 인수로 받는 `smallestCommons` 함수를 만들어야 합니다.
1. `smallestCommons` 함수는 두 숫자와 그 사이에 있는 모든 연속된 숫자에 대해 모두 나누어떨어지는 가장 작은 공배수를 반환해야 합니다.
1. 함수는 두 숫자가 숫자 순서대로 정렬되어 있지 않은 입력도 처리할 수 있어야 합니다.

# --hints--

`smallestCommons` 함수를 만들어야 합니다.

```js
assert.isFunction(smallestCommons);
```

`smallestCommons([1, 5])`는 숫자를 반환해야 합니다.

```js
assert.isNumber(smallestCommons([1, 5]));
```

`smallestCommons([1, 5])`는 `60`를 반환해야 합니다.

```js
assert.strictEqual(smallestCommons([1, 5]), 60);
```

`smallestCommons([5, 1])`는 `60`를 반환해야 합니다.

```js
assert.strictEqual(smallestCommons([5, 1]), 60);
```

`smallestCommons([2, 10])`는 `2520`를 반환해야 합니다.

```js
assert.strictEqual(smallestCommons([2, 10]), 2520);
```

`smallestCommons([1, 13])`는 `360360`를 반환해야 합니다.

```js
assert.strictEqual(smallestCommons([1, 13]), 360360);
```

`smallestCommons([23, 18])`는 `6056820`를 반환해야 합니다.

```js
assert.strictEqual(smallestCommons([23, 18]), 6056820);
```

# --seed--

## --seed-contents--

```js

```

# --solutions--

```js
function smallestCommons(arr) {
  let [min, max] = arr.sort((a, b) => a - b);

  function gcd(a, b) {
    return b === 0 ? a : gcd(b, a % b);
  }

  function lcm(a, b) {
    return (a * b) / gcd(a, b);
  }

  let multiple = min;

  for (let i = min + 1; i <= max; i++) {
    multiple = lcm(multiple, i);
  }

  return multiple;
}
```
