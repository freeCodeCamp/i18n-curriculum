---
id: 6551eebe6cbb2e6cadf9b468
title: 步骤2
challengeType: 20
dashedName: step-2
---

# --description--

变量可以存储不同数据类型的值。 You just assigned an integer value, but if you want to represent some text, you need to assign a string. Strings are sequences of characters enclosed by single or double quotes, but you cannot start a string with a single quote and end it with a double quote or vice versa:

```py
string_1 = "I am a string"
string_2 = 'I am also a string'
string_3 = 'This is not valid"
```

删除你的 `number` 变量及其值。 Then, declare another variable called `text` and assign the string `'Hello World'` to this variable.

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

You should assign the string `'Hello World'` to your `text` variable. Remember to use either single or double quotes to enclose the string and pay attention to the letter case.

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
