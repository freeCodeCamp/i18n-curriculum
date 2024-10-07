---
id: 587d7db9367417b2b2512ba5
title: 指定匹配的上限和下限
challengeType: 1
forumTopicId: 301367
dashedName: specify-upper-and-lower-number-of-matches
---

# --description--

Recall that you use the plus sign `+` to look for one or more characters and the asterisk `*` to look for zero or more characters. These are convenient but sometimes you want to match a certain range of patterns.

可以使用數量說明符（<dfn>quantity specifiers</dfn>）指定匹配模式的上下限。 數量說明符與花括號（`{` 和 `}`）一起使用。 可以在花括號之間放兩個數字，這兩個數字代表匹配模式的上限和下限。

例如，要匹配出現 `3` 到 `5` 次字母 `a` 的在字符串 `ah`，正則表達式應爲`/a{3,5}h/`。

```js
let A4 = "aaaah";
let A2 = "aah";
let multipleA = /a{3,5}h/;
multipleA.test(A4);
multipleA.test(A2);
```

第一次 `test` 調用將返回 `true`，而第二次調用將返回 `false`。

# --instructions--

修改正則表達式 `ohRegex` 以匹配出現 `3` 到 `6` 次字母 `h` 的字符串 `Oh no`。

# --hints--

你的正則表達式應該使用花括號。

```js
assert(ohRegex.source.match(/{.*?}/).length > 0);
```

你的正則表達式不應匹配字符串 `Ohh no`

```js
ohRegex.lastIndex = 0;
assert(!ohRegex.test('Ohh no'));
```

你的正則表達式應該匹配字符串 `Ohhh no`

```js
assert('Ohhh no'.match(ohRegex)[0].length === 7);
```

你的正則表達式應該匹配字符串 `Ohhhh no`

```js
assert('Ohhhh no'.match(ohRegex)[0].length === 8);
```

你的正則表達式應該匹配字符串 `Ohhhhh no`

```js
assert('Ohhhhh no'.match(ohRegex)[0].length === 9);
```

你的正則表達式應該匹配字符串 `Ohhhhhh no`

```js
assert('Ohhhhhh no'.match(ohRegex)[0].length === 10);
```

你的正則表達式應該匹配字符串 `Ohhhhhhh no`

```js
ohRegex.lastIndex = 0;
assert(!ohRegex.test('Ohhhhhhh no'));
```

# --seed--

## --seed-contents--

```js
let ohStr = "Ohhh no";
let ohRegex = /change/; // Change this line
let result = ohRegex.test(ohStr);
```

# --solutions--

```js
let ohStr = "Ohhh no";
let ohRegex = /Oh{3,6} no/; // Change this line
let result = ohRegex.test(ohStr);
```
