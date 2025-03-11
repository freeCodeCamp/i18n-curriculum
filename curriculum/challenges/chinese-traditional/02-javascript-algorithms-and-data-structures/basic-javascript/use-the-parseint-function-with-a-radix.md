---
id: 587d7b7e367417b2b2512b22
title: 使用 parseInt 函數並傳入一個基數
challengeType: 1
forumTopicId: 301182
dashedName: use-the-parseint-function-with-a-radix
---

# --description--

The `parseInt()` function parses a string and returns an integer. It takes a second argument for the radix, which specifies the base of the number in the string. The radix can be an integer between 2 and 36.

函數調用如下所示：

```js
parseInt(string, radix);
```

這是一個示例：

```js
const a = parseInt("11", 2);
```

變量 radix 表示 `11` 是在二進制系統中。 這個示例將字符串 `11` 轉換爲整數 `3`。

# --instructions--

在 `convertToInteger` 函數中使用 `parseInt()` ，將二進制數轉換爲整數並返回。

# --hints--

`convertToInteger` 應該使用 `parseInt()` 函數。

```js
assert(/parseInt/g.test(__helpers.removeJSComments(code)));
```

`convertToInteger("10011")` 應該返回一個數字。

```js
assert(typeof convertToInteger('10011') === 'number');
```

`convertToInteger("10011")` 應該返回 19。

```js
assert(convertToInteger('10011') === 19);
```

`convertToInteger("111001")` 應該返回 57。

```js
assert(convertToInteger('111001') === 57);
```

`convertToInteger("JamesBond")`應該返回 `NaN`。

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
