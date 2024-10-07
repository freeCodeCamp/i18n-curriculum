---
id: 587d7b7e367417b2b2512b22
title: 基数を設定して parseInt 関数を使用する
challengeType: 1
videoUrl: 'https://scrimba.com/c/c6K4Kh3'
forumTopicId: 301182
dashedName: use-the-parseint-function-with-a-radix
---

# --description--

The `parseInt()` function parses a string and returns an integer. It takes a second argument for the radix, which specifies the base of the number in the string. The radix can be an integer between 2 and 36.

関数呼び出しは次のようになります。

```js
parseInt(string, radix);
```

例を次に示します。

```js
const a = parseInt("11", 2);
```

radix 変数により、基数が 2 であり、`11` が 2 進数であることが示されます。 この例では、文字列 `11` は整数 `3` に変換されます。

# --instructions--

`convertToInteger` 関数で `parseInt()` を使用して、2 進数を整数に変換し、それを返してください。

# --hints--

`convertToInteger` では `parseInt()` 関数を使用する必要があります。

```js
assert(/parseInt/g.test(__helpers.removeJSComments(code)));
```

`convertToInteger("10011")` は数値を返す必要があります。

```js
assert(typeof convertToInteger('10011') === 'number');
```

`convertToInteger("10011")` は 19 を返す必要があります。

```js
assert(convertToInteger('10011') === 19);
```

`convertToInteger("111001")` は 57 を返す必要があります。

```js
assert(convertToInteger('111001') === 57);
```

`convertToInteger("JamesBond")` は `NaN` を返す必要があります。

```js
assert.isNaN(convertToInteger('JamesBond'));
```

# --seed--

## --seed-contents--

```js
function convertToInteger(str) {

}

convertToInteger("10011");
```

# --solutions--

```js
function convertToInteger(str) {
  return parseInt(str, 2);
}
```
