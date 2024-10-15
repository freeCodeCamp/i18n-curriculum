---
id: 587d7b7b367417b2b2512b14
title: indexOf() 를 사용해서 요소의 존재 확인하기
challengeType: 1
forumTopicId: 301154
dashedName: check-for-the-presence-of-an-element-with-indexof
---

# --description--

Since arrays can be changed, or *mutated*, at any time, there's no guarantee about where a particular piece of data will be on a given array, or if that element even still exists. Luckily, JavaScript provides us with another built-in method, `indexOf()`, that allows us to quickly and easily check for the presence of an element on an array. `indexOf()` takes an element as a parameter, and when called, it returns the position, or index, of that element, or `-1` if the element does not exist on the array.

예시:

```js
let fruits = ['apples', 'pears', 'oranges', 'peaches', 'pears'];

fruits.indexOf('dates');
fruits.indexOf('oranges');
fruits.indexOf('pears');
```

`indexOf('dates')`는 `-1`을 반환하고, `indexOf('oranges')`는 `2`를 반환하며, `indexOf('pears')`는 `1`을 반환합니다 (각 요소가 처음으로 존재하는 인덱스).

# --instructions--

`indexOf()`는 배열에서 요소의 존재를 빠르게 확인하는 데 매우 유용할 수 있습니다. 배열과 요소를 인수로 사용하는 `quickCheck` 함수를 정의했습니다. `indexOf()`를 사용하여 함수를 수정하여 전달된 요소가 배열에 있는 경우 `true`를 반환하고, 그렇지 않은 경우 `false`를 반환하도록 합니다.

# --hints--

`quickCheck` 함수는 불리언(`true` 또는 `false`)을 반환해야 하며, 문자열(`"true"` 또는 `"false"`)이 아니어야 합니다.

```js
assert.isBoolean(quickCheck(['squash', 'onions', 'shallots'], 'mushrooms'));
```

`quickCheck(["squash", "onions", "shallots"], "mushrooms")`는 `false`를 반환해야 합니다.

```js
assert.strictEqual(
  quickCheck(['squash', 'onions', 'shallots'], 'mushrooms'),
  false
);
```

`quickCheck(["onions", "squash", "shallots"], "onions")`는 `true`를 반환해야 합니다.

```js
assert.strictEqual(
  quickCheck(['onions', 'squash', 'shallots'], 'onions'),
  true
);
```

`quickCheck([3, 5, 9, 125, 45, 2], 125)`는 `true`를 반환해야 합니다.

```js
assert.strictEqual(quickCheck([3, 5, 9, 125, 45, 2], 125), true);
```

`quickCheck([true, false, false], undefined)`는 `false`를 반환해야 합니다.

```js
assert.strictEqual(quickCheck([true, false, false], undefined), false);
```

`quickCheck` 함수는 `indexOf()` 메서드를 활용해야 합니다.

```js
assert.notStrictEqual(quickCheck.toString().search(/\.indexOf\(/), -1);
```

# --seed--

## --seed-contents--

```js
function quickCheck(arr, elem) {
  // Only change code below this line

  // Only change code above this line
}

console.log(quickCheck(['squash', 'onions', 'shallots'], 'mushrooms'));
```

# --solutions--

```js
function quickCheck(arr, elem) {
  return arr.indexOf(elem) >= 0; 
}
```
