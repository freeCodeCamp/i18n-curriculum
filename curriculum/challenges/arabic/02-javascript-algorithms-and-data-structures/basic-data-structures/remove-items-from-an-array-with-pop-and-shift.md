---
id: 587d78b2367417b2b2512b0f
title: إزالة العناصر من Array باستخدام pop() و shift()
challengeType: 1
forumTopicId: 301165
dashedName: remove-items-from-an-array-with-pop-and-shift
---

# --description--

Both `push()` and `unshift()` have corresponding methods that are nearly functional opposites: `pop()` and `shift()`. As you may have guessed by now, instead of adding, `pop()` *removes* an element from the end of an array, while `shift()` removes an element from the beginning. The key difference between `pop()` and `shift()` and their cousins `push()` and `unshift()`, is that neither method takes parameters, and each only allows an array to be modified by a single element at a time.

ألقي نَّظْرَة:

```js
let greetings = ['whats up?', 'hello', 'see ya!'];

greetings.pop();
```

`greetings` ستكون لها القيمة `['whats up?', 'hello']`.

```js
greetings.shift();
```

`greetings` ستكون لها القيمة `['hello']`.

يمكننا أيضًا إرجاع قيمة العنصر الذي تمت إزالته بأي من الطريقتين مثل:

```js
let popped = greetings.pop();
```

ستكون `greetings` لها قيمة `[]`، وستكون `popped` لها قيمة `hello`.

# --instructions--

لقد حددنا الوظيفة `popShift` التي تأخذ array مثل argument وتُنشئ array جديدة. عدل function، باستخدام `pop()` و `shift()`، لإزالة العنصرين الأول والأخير من argument في array, عيّن العناصر التي تمت إزالتها إلى المتغيرات المقابلة، بحيث تحتوي array المنتج على قيمهم.

# --hints--

`popShift(["challenge", "is", "not", "complete"])` يجب أن ينتج `["challenge", "complete"]`

```js
assert.deepEqual(popShift(['challenge', 'is', 'not', 'complete']), [
  'challenge',
  'complete'
]);
```

يجب أن تستخدم وظيفة `popShift` الطريقة `pop()`

```js
assert.notStrictEqual(popShift.toString().search(/\.pop\(/), -1);
```

يجب أن تستخدم وظيفة `popShift` الطريقة `shift()`

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
