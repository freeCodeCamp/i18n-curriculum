---
id: 587d78b2367417b2b2512b0f
title: 使用 pop() 和 shift() 从数组中删除元素
challengeType: 1
forumTopicId: 301165
dashedName: remove-items-from-an-array-with-pop-and-shift
---

# --description--

Both `push()` and `unshift()` have corresponding methods that are nearly functional opposites: `pop()` and `shift()`. As you may have guessed by now, instead of adding, `pop()` *removes* an element from the end of an array, while `shift()` removes an element from the beginning. The key difference between `pop()` and `shift()` and their cousins `push()` and `unshift()`, is that neither method takes parameters, and each only allows an array to be modified by a single element at a time.

让我们来看以下的例子：

```js
let greetings = ['whats up?', 'hello', 'see ya!'];

greetings.pop();
```

`greetings` 值为 `['whats up?', 'hello']`。

```js
greetings.shift();
```

`greetings` 值为 `['hello']`。

这些用于删除数组元素的方法会返回被删除的元素：

```js
let popped = greetings.pop();
```

`greetings` 值为 `[]`，`popped` 值为 `hello`。

# --instructions--

我们已经定义了一个 `popShift` 函数，它接收一个数组作为输入参数并返回一个新的数组。 请修改这个函数，使用 `pop()` 和 `shift()` 来移除输入的数组中的第一个元素和最后一个元素，并将这两个被移除的元素分别赋值给对应的变量，使得最终返回的数组里包含这两个值。

# --hints--

`popShift(["challenge", "is", "not", "complete"])` 应返回 `["challenge", "complete"]`。

```js
assert.deepEqual(popShift(['challenge', 'is', 'not', 'complete']), [
  'challenge',
  'complete'
]);
```

`popShift` 函数中应使用 `pop()` 方法。

```js
assert.notStrictEqual(popShift.toString().search(/\.pop\(/), -1);
```

`popShift` 函数中应使用 `shift()` 方法。

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
