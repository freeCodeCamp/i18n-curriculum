---
id: 587d7b84367417b2b2512b36
title: '捕獲未閉合的括號、方括號、大括號和引號'
challengeType: 1
forumTopicId: 301190
dashedName: catch-unclosed-parentheses-brackets-braces-and-quotes
---

# --description--

Another syntax error to be aware of is that all opening parentheses, brackets, curly braces, and quotes have a closing pair. Forgetting a piece tends to happen when you're editing existing code and inserting items with one of the pair types. Also, take care when nesting code blocks into others, such as adding a callback function as an argument to a method.

避免這種錯誤的一種方法是，一次性輸入完這些符號，然後將光標移回它們之間繼續編寫。 好在現在大部分編輯器都會幫你自動補全。

# --instructions--

修復代碼中的兩個符號配對錯誤。

# --hints--

應該修復數組缺少的部分。

```js
assert(__helpers.removeJSComments(code).match(/myArray\s*?=\s*?\[\s*?1\s*?,\s*?2\s*?,\s*?3\s*?\];/g));
```

應該修復 `.reduce()` 方法缺少的部分。 控制檯應該輸出 `Sum of array values is: 6`。

```js
assert(arraySum === 6);
```

# --seed--

## --seed-contents--

```js
let myArray = [1, 2, 3;
let arraySum = myArray.reduce((previous, current =>  previous + current);
console.log(`Sum of array values is: ${arraySum}`);
```

# --solutions--

```js
let myArray = [1, 2, 3];
let arraySum = myArray.reduce((previous, current) =>  previous + current);
console.log(`Sum of array values is: ${arraySum}`);
```
