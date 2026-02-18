---
id: 6551eebe6cbb2e6cadf9b468
title: 步驟 2
challengeType: 20
dashedName: step-2
---

# --description--

變數可以儲存不同資料型別的值。你剛剛指定了一個整數值，但如果你想表現一些文字，你需要指定一個字串。字串是由單引號或雙引號包圍的一連串字元，但你不能用單引號開始字串卻用雙引號結束，反之亦然：

```py
string_1 = "I am a string"
string_2 = 'I am also a string'
string_3 = 'This is not valid"
```

刪除你的 `number` 變數及其值。然後，宣告另一個名為 `text` 的變數，並將字串 `'Hello World'` 指定給此變數。

# --hints--

你不應該在你的程式碼中有 `number = 5`。

```js
const commentless_code = __helpers.python.removeComments(code);
assert.isFalse(/number\s*=\s*5/.test(commentless_code))
```

你應該宣告一個名為 `text` 的變數。請注意將變數名稱放在行首。

```js
assert.match(code, /^text\s*=/m)
```

你應該將字串 `'Hello World'` 指定到你的 `text` 變數。請記得使用單引號或雙引號來包住字串，並注意字母大小寫。

```js
assert.match(code, /^text\s*=\s*("|')Hello World\1\s*(#.*)?$/m)
```

你的程式碼包含無效的語法和／或無效的縮排。

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
