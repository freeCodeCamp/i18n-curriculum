---
id: 587d78b2367417b2b2512b0f
title: 使用 pop() 和 shift() 從數組中刪除元素
challengeType: 1
forumTopicId: 301165
dashedName: remove-items-from-an-array-with-pop-and-shift
---

# --description--

Both `push()` and `unshift()` have corresponding methods that are nearly functional opposites: `pop()` and `shift()`. As you may have guessed by now, instead of adding, `pop()` *removes* an element from the end of an array, while `shift()` removes an element from the beginning. The key difference between `pop()` and `shift()` and their cousins `push()` and `unshift()`, is that neither method takes parameters, and each only allows an array to be modified by a single element at a time.

讓我們來看以下的例子：

```js
let greetings = ['whats up?', 'hello', 'see ya!'];

greetings.pop();
```

`greetings` 值爲 `['whats up?', 'hello']`。

```js
greetings.shift();
```

`greetings` 值爲 `['hello']`。

這些用於刪除數組元素的方法會返回被刪除的元素：

```js
let popped = greetings.pop();
```

`greetings` 值爲 `[]`，`popped` 值爲 `hello`。

# --instructions--

我們已經定義了一個 `popShift` 函數，它接收一個數組作爲輸入參數並返回一個新的數組。 請修改這個函數，使用 `pop()` 和 `shift()` 來移除輸入的數組中的第一個元素和最後一個元素，並將這兩個被移除的元素分別賦值給對應的變量，使得最終返回的數組裏包含這兩個值。

# --hints--

`popShift(["challenge", "is", "not", "complete"])` 應返回 `["challenge", "complete"]`。

```js
assert.deepEqual(popShift(['challenge', 'is', 'not', 'complete']), [
  'challenge',
  'complete'
]);
```

`popShift` 函數中應使用 `pop()` 方法。

```js
assert.notStrictEqual(popShift.toString().search(/\.pop\(/), -1);
```

`popShift` 函數中應使用 `shift()` 方法。

```js
assert.notStrictEqual(popShift.toString().search(/\.shift\(/), -1);
```

# --seed--

## --seed-contents--

```js
function popShift(arr) {
  let popped; // Change this line
  let shifted; // Change this line
  return [shifted, popped];
}

console.log(popShift(['challenge', 'is', 'not', 'complete']));
```

# --solutions--

```js
function popShift(arr) {
  let popped = arr.pop(); // Change this line
  let shifted = arr.shift(); // Change this line
  return [shifted, popped];
}
```
