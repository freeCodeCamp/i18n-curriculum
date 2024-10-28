---
id: 6551eebe6cbb2e6cadf9b468
title: 步骤2
challengeType: 20
dashedName: step-2
---

# --description--

变量可以存储不同数据类型的值。 You just assigned an integer value, but if you want to represent some text, you need to assign a string. 字符串是由单引号或双引号包含的字符序列， 但你不能以单引号开始一个字符串，然后以双引号结尾，反之亦然：

```py
string_1 = "I am a string"
string_2 = 'I am also a string'
string_3 = 'This is not valid"
```

删除你的 `number` 变量及其值。 然后声明另一个变量名为 `text` 并将字符串 `'Hello World'` 分配到这个变量。

# --hints--

You should not have `number = 5` in your code.

```js
const commentless_code = __helpers.python.removeComments(code);
assert.isFalse(/number\s*=\s*5/.test(commentless_code))
```

You should declare a variable called `text`. 注意将变量名放在行首。

```js
assert.match(code, /^text\s*=/m)
```

You should assign the string `'Hello World'` to your `text` variable. 请记住使用单引号或双引号将字符串括起来，并注意字母大小写。

```js
assert.match(code, /^text\s*=\s*("|')Hello World\1\s*(#.*)?$/m)
```

Your code contains invalid syntax and/or invalid indentation.

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
