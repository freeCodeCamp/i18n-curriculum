---
id: 587d7db3367417b2b2512b8f
title: 匹配文字字符串
challengeType: 1
forumTopicId: 301355
dashedName: match-literal-strings
---

# --description--

In the last challenge, you searched for the word `Hello` using the regular expression `/Hello/`. That regex searched for a literal match of the string `Hello`. Here's another example searching for a literal match of the string `Kevin`:

```js
let testStr = "Hello, my name is Kevin.";
let testRegex = /Kevin/;
testRegex.test(testStr);
```

`test` 方法会返回 `true`。

任何其他形式的 `Kevin` 都不会被匹配。 例如，正则表达式 `/Kevin/` 不会匹配 `kevin` 或者`KEVIN`。

```js
let wrongRegex = /kevin/;
wrongRegex.test(testStr);
```

此 `test` 调用将返回 `false`。

后续的挑战将为你展示如何匹配其他形式的字符串。

# --instructions--

完成正则表达式 `waldoRegex`，在字符串 `waldoIsHiding` 中匹配到文本 `"Waldo"`。

# --hints--

你的正则表达式 `waldoRegex` 应该匹配到 `Waldo`。

```js
waldoRegex.lastIndex = 0;
assert(waldoRegex.test(waldoIsHiding));
```

你的正则表达式 `waldoRegex` 不应该搜寻其他的任何内容。

```js
waldoRegex.lastIndex = 0;
assert(!waldoRegex.test('Somewhere is hiding in this text.'));
```

你应该使用你的正则表达式对字符串执行文字匹配。

```js
assert(!/\/.*\/i/.test(__helpers.removeJSComments(code)));
```

# --seed--

## --seed-contents--

```js
let waldoIsHiding = "Somewhere Waldo is hiding in this text.";
let waldoRegex = /search/; // Change this line
let result = waldoRegex.test(waldoIsHiding);
```

# --solutions--

```js
let waldoIsHiding = "Somewhere Waldo is hiding in this text.";
let waldoRegex = /Waldo/; // Change this line
let result = waldoRegex.test(waldoIsHiding);
```
