---
id: bd7123c9c443eddfaeb5bdef
title: 宣告 JavaScript 變數
challengeType: 1
forumTopicId: 17556
dashedName: declare-javascript-variables
---

# --description--

在計算機科學中，<dfn>資料</dfn>是對電腦有意義的任何東西。JavaScript 提供八種不同的<dfn>資料型別</dfn>，分別是 `undefined`、`null`、`boolean`、`string`、`symbol`、`bigint`、`number` 和 `object`。

例如，電腦會區分數字，例如數字 `12`，以及 `strings`，例如 `"12"`、`"dog"` 或 `"123 cats"`，這些是字元的群集。電腦可以對數字執行數學操作，但不能對字串執行數學操作。

<dfn>變數</dfn>允許電腦以動態方式儲存和操作資料。它們透過使用「標籤」來指向資料，而不是使用資料本身。任何八種資料型別皆可儲存在變數中。

變數類似於你在數學中使用的 x 和 y 變數，這表示它們是一個簡單的名稱，用來表述我們想要取用的資料。電腦變數與數學變數不同，因為它們可以在不同時間儲存不同的值。

我們告訴 JavaScript 透過在前面放置關鍵字 `var` 來創建或 <dfn>宣告</dfn> 一個變數，如下所示：

```js
var ourName;
```

創建一個名為 `ourName` 的變數。在 JavaScript 中，我們以分號結束述語。變數名稱可以由數字、字母以及 `$` 或 `_` 組成，但不得包含空格或以數字開頭。

# --instructions--

使用 `var` 關鍵字來創建一個名為 `myName` 的變數。

**提示**如果你卡住了，請參考上方的 `ourName` 範例。

# --hints--

你應該使用 `var` 關鍵字宣告 `myName`，並以分號結尾。

```js
assert(/var\s+myName\s*;/.test(__helpers.removeJSComments(code)));
```

# --seed--

## --after-user-code--

```js
if(typeof myName !== "undefined"){(function(v){return v;})(myName);}
```

## --seed-contents--

```js

```

# --solutions--

```js
var myName;
```
