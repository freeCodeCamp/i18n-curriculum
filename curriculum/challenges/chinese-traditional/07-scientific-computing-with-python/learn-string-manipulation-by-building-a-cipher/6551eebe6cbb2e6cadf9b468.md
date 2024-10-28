---
id: 6551eebe6cbb2e6cadf9b468
title: 步驟2
challengeType: 20
dashedName: step-2
---

# --description--

變量可以存儲不同數據類型的值。 You just assigned an integer value, but if you want to represent some text, you need to assign a string. 字符串是由單引號或雙引號包含的字符序列， 但你不能以單引號開始一個字符串，然後以雙引號結尾，反之亦然：

```py
string_1 = "I am a string"
string_2 = 'I am also a string'
string_3 = 'This is not valid"
```

刪除你的 `number` 變量及其值。 然後聲明另一個變量名爲 `text` 並將字符串 `'Hello World'` 分配到這個變量。

# --hints--

You should not have `number = 5` in your code.

```js
const commentless_code = __helpers.python.removeComments(code);
assert.isFalse(/number\s*=\s*5/.test(commentless_code))
```

You should declare a variable called `text`. 注意將變量名放在行首。

```js
assert.match(code, /^text\s*=/m)
```

You should assign the string `'Hello World'` to your `text` variable. 請記住使用單引號或雙引號將字符串括起來，並注意字母大小寫。

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
