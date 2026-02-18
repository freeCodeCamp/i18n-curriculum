---
id: bd7123c9c441eddfaeb4bdef
title: 為你的 JavaScript 程式碼加註解
challengeType: 1
forumTopicId: 16783
dashedName: comment-your-javascript-code
---

# --description--

註解是 JavaScript 會刻意忽略的程式碼行。註解是給自己和之後需要了解該程式碼功能的其他人留下備註的好方法。

在 JavaScript 中有兩種撰寫註解的方式：

使用 `//` 會告訴 JavaScript 忽略目前行中剩餘的文字。這是一個內嵌註解：

```js
// This is an in-line comment.
```

你可以使用以 `/*` 開頭並以 `*/` 結尾的多行註解。這是一個多行註解：

```js
/* This is a
multi-line comment */
```

**注意：** 當你撰寫程式碼時，應該定期添加註解以說明程式碼零件的功能。良好的註解可以幫助傳達你程式碼的意圖——不論是給其他人還是你未來的自己。

# --instructions--

嘗試建立每種型別的註解各一個。

# --hints--

你應該創建一個包含至少五個字母的 `//` 風格註解。

```js
assert(code.match(/(\/\/)...../g));
```

你應該創建一個包含至少五個字母的 `/* */` 風格註解。

```js
assert(code.match(/(\/\*)([^\/]{5,})(?=\*\/)/gm));
```

# --seed--

## --seed-contents--

```js

```

# --solutions--

```js
// Fake Comment
/* Another Comment */
```
