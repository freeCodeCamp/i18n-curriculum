---
id: 6551eebe6cbb2e6cadf9b468
title: 步骤2
challengeType: 20
dashedName: step-2
---

# --description--

变量可以存储不同数据类型的值。 你刚刚分配了一个整数值，但如果你想要代表一些文本，你需要分配一个字符串。 字符串是由单引号或双引号包含的字符序列， 但你不能以单引号开始一个字符串，然后以双引号结尾，反之亦然：

```py
string_1 = "I am a string"
string_2 = 'I am also a string'
string_3 = 'This is not valid"
```

删除你的 `number` 变量及其值。 然后声明另一个变量名为 `text` 并将字符串 `'Hello World'` 分配到这个变量。

# --hints--

你的代码中不应该有 `number = 5`

```js
const commentless_code = __helpers.python.removeComments(code);
assert.isFalse(/number\s*=\s*5/.test(commentless_code))
```

你应该声明一个名为 `text` 的变量。 注意将变量名放在行首。

```js
assert.match(code, /^text\s*=/m)
```

你应该将字符串 `'Hello World'` 分配给你的 `text` 变量。 请记住使用单引号或双引号将字符串括起来，并注意字母大小写。

```js
assert.match(code, /^text\s*=\s*("|')Hello World\1\s*(#.*)?$/m)
```

你的代码包含无效的语法和/或无效缩进。

```js
({test: () => assert(true) })
```

# --seed--

## --seed-contents--

```py
--fcc-editable-region--
number = 5
--fcc-editable-region--
```
