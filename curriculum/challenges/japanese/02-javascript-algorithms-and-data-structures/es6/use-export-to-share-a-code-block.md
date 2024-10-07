---
id: 587d7b8c367417b2b2512b56
title: export を使用してコードブロックを共有する
challengeType: 1
forumTopicId: 301219
dashedName: use-export-to-share-a-code-block
---

# --description--

Imagine a file called `math_functions.js` that contains several functions related to mathematical operations. One of them is stored in a variable, `add`, that takes in two numbers and returns their sum. You want to use this function in several different JavaScript files. In order to share it with these other files, you first need to `export` it.

```js
export const add = (x, y) => {
  return x + y;
}
```

上記は単一の関数をエクスポートする一般的な方法ですが、次のようにしても同じことができます。

```js
const add = (x, y) => {
  return x + y;
}

export { add };
```

変数や関数をエクスポートすると、それを別のファイルに import (インポート) して使用でき、コードを記述し直す必要がなくなります。 複数をエクスポートする場合は、次のように、エクスポートしたいものそれぞれについて 1 番目の例と同じことを繰り返すか、または 2 番目の例の export ステートメントにそれらを記述します。

```js
export { add, subtract };
```

# --instructions--

エディターに、 文字列に関連した関数が 2 つあります。 好きなメソッドを使用してこれら 2 つの関数の両方をエクスポートしてください。

# --hints--

`uppercaseString` を正しくエクスポートする必要があります。

```js
assert(
  __helpers.removeJSComments(code).match(
    /(export\s+const\s+uppercaseString|export\s*{\s*(uppercaseString[^}]*|[^,]*,\s*uppercaseString\s*)})/g
  )
);
```

`lowercaseString` を正しくエクスポートする必要があります。

```js
assert(
  __helpers.removeJSComments(code).match(
    /(export\s+const\s+lowercaseString|export\s*{\s*(lowercaseString[^}]*|[^,]*,\s*lowercaseString\s*)})/g
  )
);
```

# --seed--

## --seed-contents--

```js
const uppercaseString = (string) => {
  return string.toUpperCase();
}

const lowercaseString = (string) => {
  return string.toLowerCase()
}
```

# --solutions--

```js
export const uppercaseString = (string) => {
  return string.toUpperCase();
}

export const lowercaseString = (string) => {
  return string.toLowerCase()
}
```
