---
id: bd7123c9c450eddfaeb5bdef
title: 使用括號表示法尋找字串中的第 N 個字元
challengeType: 1
forumTopicId: 18343
dashedName: use-bracket-notation-to-find-the-nth-character-in-a-string
---

# --description--

你也可以使用 <dfn>括號表示法</dfn> 來取得字串中其他位置的字元。

請記住，計算機從 `0` 開始計數，所以第一個字元實際上是第零個字元。

範例：

```js
const firstName = "Ada";
const secondLetterOfFirstName = firstName[1];
```

`secondLetterOfFirstName` 的值會是字串 `d`。

# --instructions--

讓我們嘗試使用括號表示法將 `thirdLetterOfLastName` 設定為 `lastName` 變數的第三個字母。

**提示：** 如果你卡住了，試著看看上面的範例。

# --hints--

`thirdLetterOfLastName` 變數應該具有 `v` 的值。

```js
assert(thirdLetterOfLastName === 'v');
```

你應該使用括號表示法。

```js
assert(__helpers.removeJSComments(code).match(/thirdLetterOfLastName\s*=\s*lastName\s*\[\s*\d\s*\]/));
```

# --seed--

## --after-user-code--

```js
(function(v){return v;})(thirdLetterOfLastName);
```

## --seed-contents--

```js
// Setup
const lastName = "Lovelace";

// Only change code below this line
const thirdLetterOfLastName = lastName; // Change this line
```

# --solutions--

```js
const lastName = "Lovelace";
const thirdLetterOfLastName = lastName[2];
```
