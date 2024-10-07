---
id: 587d7db9367417b2b2512ba6
title: 只指定匹配的下限
challengeType: 1
forumTopicId: 301366
dashedName: specify-only-the-lower-number-of-matches
---

# --description--

You can specify the lower and upper number of patterns with quantity specifiers using curly brackets. Sometimes you only want to specify the lower number of patterns with no upper limit.

为此，在第一个数字后面跟一个逗号即可。

例如，要匹配至少出现 `3` 次字母 `a` 的字符串 `hah`，正则表达式应该是 `/ha{3,}h/`。

```js
let A4 = "haaaah";
let A2 = "haah";
let A100 = "h" + "a".repeat(100) + "h";
let multipleA = /ha{3,}h/;
multipleA.test(A4);
multipleA.test(A2);
multipleA.test(A100);
```

按顺序排列，三次 `test` 调用将返回值 `true`，`false` 和 `true`。

# --instructions--

修改正则表达式 `haRegex`，匹配包含四个或更多字母 `z` 的单词 `Hazzah`。

# --hints--

你的正则表达式应该使用花括号。

```js
assert(haRegex.source.match(/{.*?}/).length > 0);
```

你的正则表达式不应匹配字符串 `Hazzah`

```js
haRegex.lastIndex = 0;
assert(!haRegex.test('Hazzah'));
```

你的正则表达式不应匹配字符串 `Hazzzah`

```js
haRegex.lastIndex = 0;
assert(!haRegex.test('Hazzzah'));
```

你的正则表达式应该匹配字符串 `Hazzzzah`

```js
assert('Hazzzzah'.match(haRegex)[0].length === 8);
```

你的正则表达式应该匹配字符串 `Hazzzzzah`

```js
assert('Hazzzzzah'.match(haRegex)[0].length === 9);
```

你的正则表达式应该匹配字符串 `Hazzzzzzah`

```js
assert('Hazzzzzzah'.match(haRegex)[0].length === 10);
```

你的正则表达式应该匹配包含 30 个字母 `z` 的 `Hazzah`。

```js
assert('Hazzzzzzzzzzzzzzzzzzzzzzzzzzzzzzah'.match(haRegex)[0].length === 34);
```

# --seed--

## --seed-contents--

```js
let haStr = "Hazzzzah";
let haRegex = /change/; // Change this line
let result = haRegex.test(haStr);
```

# --solutions--

```js
let haStr = "Hazzzzah";
let haRegex = /Haz{4,}ah/; // Change this line
let result = haRegex.test(haStr);
```
