---
id: bd7123c9c452eddfaeb5bdef
title: 使用括號表示法尋找字串中倒數第 N 個字元
challengeType: 1
forumTopicId: 18344
dashedName: use-bracket-notation-to-find-the-nth-to-last-character-in-a-string
---

# --description--

你可以使用剛剛用來取得字串中最後一個字元的相同原理來取得倒數第 N 個字元。

例如，你可以使用 `firstName[firstName.length - 3]` 取得 `const firstName = "Augusta"` 字串中倒數第三個字母的值。

範例：

```js
const firstName = "Augusta";
const thirdToLastLetter = firstName[firstName.length - 3];
```

`thirdToLastLetter` 的值會是字串 `s`。

# --instructions--

使用 <dfn>括號表示法</dfn> 來尋找 `lastName` 字串中的倒數第二個字元。

**提示：** 如果你卡住了，試著看看上面的範例。

# --hints--

`secondToLastLetterOfLastName` 應該是字母 `c`。

```js
assert(secondToLastLetterOfLastName === 'c');
```

你應該使用 `.length` 來取得倒數第二個字母。

```js
assert(__helpers.removeJSComments(code).match(/\.length/g).length > 0);
```

# --seed--

## --after-user-code--

```js
(function(v){return v;})(secondToLastLetterOfLastName);
```

## --seed-contents--

```js
// Setup
const lastName = "Lovelace";

// Only change code below this line
const secondToLastLetterOfLastName = lastName; // Change this line
```

# --solutions--

```js
const lastName = "Lovelace";
const secondToLastLetterOfLastName = lastName[lastName.length - 2];
```
