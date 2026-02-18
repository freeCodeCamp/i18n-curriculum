---
id: bd7123c9c444eddfaeb5bdef
title: 宣告字串變數
challengeType: 1
forumTopicId: 17557
dashedName: declare-string-variables
---

# --description--

之前你使用以下 `code` 宣告一個變數：

```js
var myName;
```

但你也可以這樣宣告一個字串變數：

```js
var myName = "your name";
```

「your name」稱為<dfn>字串</dfn><dfn>字面值</dfn>。字串字面值，或稱字串，是一系列零個或多個字元，包在單引號或雙引號中。

# --instructions--

創建兩個新的字串變數：`myFirstName` 和 `myLastName`，並分別將你的名字和姓氏指定值。

# --hints--

`myFirstName` 應該是一個至少包含一個字元的字串。

```js
assert(
  (function () {
    if (
      typeof myFirstName !== 'undefined' &&
      typeof myFirstName === 'string' &&
      myFirstName.length > 0
    ) {
      return true;
    } else {
      return false;
    }
  })()
);
```

`myLastName` 應該是一個至少包含一個字元的字串。

```js
assert(
  (function () {
    if (
      typeof myLastName !== 'undefined' &&
      typeof myLastName === 'string' &&
      myLastName.length > 0
    ) {
      return true;
    } else {
      return false;
    }
  })()
);
```

# --seed--

## --after-user-code--

```js
if(typeof myFirstName !== "undefined" && typeof myLastName !== "undefined"){(function(){return myFirstName + ', ' + myLastName;})();}
```

## --seed-contents--

```js

```

# --solutions--

```js
var myFirstName = "Alan";
var myLastName = "Turing";
```
