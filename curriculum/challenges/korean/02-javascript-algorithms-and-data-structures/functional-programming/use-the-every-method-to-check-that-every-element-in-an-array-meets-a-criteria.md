---
id: 587d7dab367417b2b2512b6e
title: 배열의 모든 요소가 기준을 충족하는지 확인하기 위해 every 메소드 사용하기
challengeType: 1
forumTopicId: 301312
dashedName: use-the-every-method-to-check-that-every-element-in-an-array-meets-a-criteria
---

# --description--

The `every` method works with arrays to check if *every* element passes a particular test. It returns a Boolean value - `true` if all values meet the criteria, `false` if not.

예를 들면 다음 코드는 `numbers` 배열이 모든 요소가 10보다 작은지 확인할 것입니다.

```js
const numbers = [1, 5, 8, 0, 10, 11];

numbers.every(function(currentValue) {
  return currentValue < 10;
});
```

여기서 `every` 메소드는 `false`를 반환할 것입니다.

# --instructions--

`arr`의 모든 요소가 양수인지 확인하기 위해 `checkPositive` 안에 `every` 메소드를 사용하시오. 이 함수는 불리언(boolean) 값을 반환해야 합니다.

# --hints--

코드에 `every` 메소드가 사용되어야 합니다.

```js
assert(__helpers.removeJSComments(code).match(/\.every/g));
```

`checkPositive([1, 2, 3, -4, 5])`는 `false`를 반환해야 합니다.

```js
assert.isFalse(checkPositive([1, 2, 3, -4, 5]));
```

`checkPositive([1, 2, 3, 4, 5])`는 `true`를 반환해야 합니다.

```js
assert.isTrue(checkPositive([1, 2, 3, 4, 5]));
```

`checkPositive([1, -2, 3, -4, 5])`는 `false`를 반환해야 합니다.

```js
assert.isFalse(checkPositive([1, -2, 3, -4, 5]));
```

# --seed--

## --seed-contents--

```js
function checkPositive(arr) {
  // Only change code below this line


  // Only change code above this line
}

checkPositive([1, 2, 3, -4, 5]);
```

# --solutions--

```js
function checkPositive(arr) {
  return arr.every(num => num > 0);
}
```
