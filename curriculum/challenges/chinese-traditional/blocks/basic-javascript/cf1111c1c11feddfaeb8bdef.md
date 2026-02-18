---
id: cf1111c1c11feddfaeb8bdef
title: 使用索引修改陣列資料
challengeType: 1
forumTopicId: 18241
dashedName: modify-array-data-with-indexes
---

# --description--

與字串不同，陣列的項目是<dfn>可變的</dfn>，即使陣列是用 `const` 宣告的，也可以自由更改。

**範例**

```js
const ourArray = [50, 40, 30];
ourArray[0] = 15;
```

`ourArray` 現在的值是 `[15, 40, 30]`。

**注意：** 陣列名稱和方括號之間不應該有任何空格，例如 `array [0]`。雖然 JavaScript 能正確處理這種情況，但這可能會讓其他程式設計師在閱讀你的程式碼時感到困惑。

# --instructions--

修改儲存在 `myArray` 索引 `0` 的資料為 `45`。

# --hints--

`myArray` 現在應該是 `[45, 64, 99]`。

```js
assert(
  (function () {
    if (
      typeof myArray != 'undefined' &&
      myArray[0] == 45 &&
      myArray[1] == 64 &&
      myArray[2] == 99
    ) {
      return true;
    } else {
      return false;
    }
  })()
);
```

你應該使用正確的索引來修改 `myArray` 中的值。

```js
assert(
  (function () {
    if (__helpers.removeJSComments(code).match(/myArray\[0\]\s*=\s*/g)) {
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
if(typeof myArray !== "undefined"){(function(){return myArray;})();}
```

## --seed-contents--

```js
// Setup
const myArray = [18, 64, 99];

// Only change code below this line

```

# --solutions--

```js
const myArray = [18, 64, 99];
myArray[0] = 45;
```
