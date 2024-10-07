---
id: 56533eb9ac21ba0edf2244c3
title: Присвоєння з поверненим значенням
challengeType: 1
videoUrl: 'https://scrimba.com/c/ce2pEtB'
forumTopicId: 16658
dashedName: assignment-with-a-returned-value
---

# --description--

If you'll recall from our discussion about <a href="/learn/javascript-algorithms-and-data-structures/basic-javascript/storing-values-with-the-assignment-operator" target="_blank" rel="noopener noreferrer nofollow">Storing Values with the Assignment Operator</a>, everything to the right of the equal sign is resolved before the value is assigned. This means we can take the return value of a function and assign it to a variable.

Припустимо, що ми визначили функцію `sum`, яка додає два числа.

```js
ourSum = sum(5, 12);
```

Виклик функції `sum` з аргументами `5` та `12` призведе до поверненого значення `17`. Це повернене значення присвоюється до змінної `ourSum`.

# --instructions--

Викличте функцію `processArg` з аргументом `7` та присвойте її повернене значення до змінної `processed`.

# --hints--

`processed` повинна мати значення `2`

```js
assert(processed === 2);
```

Ви повинні присвоїти `processArg` до `processed`

```js
assert(/processed\s*=\s*processArg\(\s*7\s*\)/.test(__helpers.removeJSComments(code)));
```

# --seed--

## --after-user-code--

```js
(function(){return "processed = " + processed})();
```

## --seed-contents--

```js
// Setup
let processed = 0;

function processArg(num) {
  return (num + 3) / 5;
}

// Only change code below this line

```

# --solutions--

```js
var processed = 0;

function processArg(num) {
  return (num + 3) / 5;
}

processed = processArg(7);
```
