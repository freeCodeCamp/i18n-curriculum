---
id: bd7123c9c451eddfaeb5bdef
title: 使用括號表示法尋找字串中的最後一個字元
challengeType: 1
forumTopicId: 18342
dashedName: use-bracket-notation-to-find-the-last-character-in-a-string
---

# --description--

為了取得字串的最後一個字母，你可以從字串長度中減去 1。

例如，如果 `const firstName = "Ada"`，你可以使用 `firstName[firstName.length - 1]` 取得字串最後一個字母的值。

範例：

```js
const firstName = "Ada";
const lastLetter = firstName[firstName.length - 1];
```

`lastLetter` 的值會是字串 `a`。

# --instructions--

使用 <dfn>括號表示法</dfn> 來尋找 `lastName` 變數中的最後一個字元。

**提示：** 如果你卡住了，試著看看上面的範例。

# --hints--

`lastLetterOfLastName` 應該是字母 `e`。

```js
assert(lastLetterOfLastName === 'e');
```

你應該使用 `.length` 來取得最後一個字母。

```js
assert(__helpers.removeJSComments(code).match(/\.length/g).length > 0);
```

# --seed--

## --after-user-code--

```js
(function(v){return v;})(lastLetterOfLastName);
```

## --seed-contents--

```js
// Setup
const lastName = "Lovelace";

// Only change code below this line
const lastLetterOfLastName = lastName; // Change this line
```

# --solutions--

```js
const lastName = "Lovelace";
const lastLetterOfLastName = lastName[lastName.length - 1];
```
