---
id: 587d7b7e367417b2b2512b24
title: 条件 (三項) 演算子を使用する
challengeType: 1
forumTopicId: 301181
dashedName: use-the-conditional-ternary-operator
---

# --description--

The <dfn>conditional operator</dfn>, also called the <dfn>ternary operator</dfn>, can be used as a one line if-else expression.

The syntax is `a ? b : c`, where `a` is the condition, `b` is the code to run when the condition returns `true`, and `c` is the code to run when the condition returns `false`.

次の関数では、条件のチェックに `if/else` ステートメントを使用しています。

```js
function findGreater(a, b) {
  if(a > b) {
    return "a is greater";
  }
  else {
    return "b is greater or equal";
  }
}
```

この関数は条件演算子を使用して書き換えることができます。

```js
function findGreater(a, b) {
  return a > b ? "a is greater" : "b is greater or equal";
}
```

# --instructions--

`checkEqual` 関数で条件演算子を使用して、2 つの数値が等しいかどうかをチェックしてください。 この関数は、`Equal` または `Not Equal` のいずれかの文字列を返す必要があります。

# --hints--

`checkEqual` では条件演算子を使用する必要があります。

```js
assert(/.+?\s*?\?\s*?.+?\s*?:\s*?.+?/.test(__helpers.removeJSComments(code)));
```

`checkEqual(1, 2)` は文字列 `Not Equal` を返す必要があります。

```js
assert(checkEqual(1, 2) === 'Not Equal');
```

`checkEqual(1, 1)` は文字列 `Equal` を返す必要があります。

```js
assert(checkEqual(1, 1) === 'Equal');
```

`checkEqual(1, -1)` は文字列 `Not Equal` を返す必要があります。

```js
assert(checkEqual(1, -1) === 'Not Equal');
```

# --seed--

## --seed-contents--

```js
function checkEqual(a, b) {

}

checkEqual(1, 2);
```

# --solutions--

```js
function checkEqual(a, b) {
  return a === b ? "Equal" : "Not Equal";
}
```
