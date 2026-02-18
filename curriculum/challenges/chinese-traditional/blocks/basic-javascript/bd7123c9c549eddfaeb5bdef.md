---
id: bd7123c9c549eddfaeb5bdef
title: 使用括號表示法尋找字串中的第一個字元
challengeType: 1
forumTopicId: 18341
dashedName: use-bracket-notation-to-find-the-first-character-in-a-string
---

# --description--

<dfn>Bracket notation</dfn> 是一種在字串中特定索引取得字元的方法。

大多數現代程式語言，例如 JavaScript，不像人類那樣從 1 開始計數。它們從 0 開始。這稱為 <dfn>從零開始</dfn>的索引。

例如，字串 `Charles` 中索引 0 的字元是 `C`。所以如果 `const firstName = "Charles"`，你可以使用 `firstName[0]` 取得字串的第一個字元的值。

範例：

```js
const firstName = "Charles";
const firstLetter = firstName[0];
```

`firstLetter` 的值會是字串 `C`。

# --instructions--

使用括號表示法尋找 `lastName` 變數中的第一個字元，並將它指定給 `firstLetterOfLastName`。

**提示：** 如果你卡住了，試著看看上面的範例。

# --hints--

`firstLetterOfLastName` 變數應該具有 `L` 的值。

```js
assert(firstLetterOfLastName === 'L');
```

你應該使用括號表示法。

```js
assert(__helpers.removeJSComments(code).match(/firstLetterOfLastName\s*=\s*lastName\s*\[\s*\d\s*\]/));
```

# --seed--

## --after-user-code--

```js
(function(v){return v;})(firstLetterOfLastName);
```

## --seed-contents--

```js
// Setup
let firstLetterOfLastName = "";
const lastName = "Lovelace";

// Only change code below this line
firstLetterOfLastName = lastName; // Change this line
```

# --solutions--

```js
let firstLetterOfLastName = "";
const lastName = "Lovelace";

// Only change code below this line
firstLetterOfLastName = lastName[0];
```
