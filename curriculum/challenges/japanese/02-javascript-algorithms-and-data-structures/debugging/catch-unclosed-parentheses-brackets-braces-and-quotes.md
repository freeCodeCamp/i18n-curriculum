---
id: 587d7b84367417b2b2512b36
title: '丸括弧、角括弧、中括弧、引用符の閉じ忘れをキャッチする'
challengeType: 1
forumTopicId: 301190
dashedName: catch-unclosed-parentheses-brackets-braces-and-quotes
---

# --description--

Another syntax error to be aware of is that all opening parentheses, brackets, curly braces, and quotes have a closing pair. Forgetting a piece tends to happen when you're editing existing code and inserting items with one of the pair types. Also, take care when nesting code blocks into others, such as adding a callback function as an argument to a method.

こうした間違いを避ける方法の一つとして、開始文字を入力した直後に終了のペアを入力し、カーソルをその中間に戻してからコーディングを続けることができます。 幸い、最新のほとんどのコードエディターは、ペアの部分を自動的に生成してくれます。

# --instructions--

コード内の 2 つのペアエラーを修正してください。

# --hints--

配列で欠けているペアを修正する必要があります。

```js
assert(__helpers.removeJSComments(code).match(/myArray\s*?=\s*?\[\s*?1\s*?,\s*?2\s*?,\s*?3\s*?\];/g));
```

`.reduce()` メソッドで欠けている部分を修正する必要があります。 コンソール出力に `Sum of array values is: 6` と表示する必要があります。

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
