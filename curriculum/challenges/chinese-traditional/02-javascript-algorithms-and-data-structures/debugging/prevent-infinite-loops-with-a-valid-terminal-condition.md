---
id: 587d7b86367417b2b2512b3d
title: 使用有效的終止條件防止無限循環
challengeType: 1
forumTopicId: 301192
dashedName: prevent-infinite-loops-with-a-valid-terminal-condition
---

# --description--

The final topic is the dreaded infinite loop. Loops are great tools when you need your program to run a code block a certain number of times or until a condition is met, but they need a terminal condition that ends the looping. Infinite loops are likely to freeze or crash the browser, and cause general program execution mayhem, which no one wants.

在本節的介紹中有一個無限循環的例子——它沒有終止條件來擺脫`loopy()`內的`while`循環。 不要調用這個函數！

```js
function loopy() {
  while(true) {
    console.log("Hello, world!");
  }
}
```

程序員的工作是確保最終達到終止條件，該條件告訴程序何時跳出循環。 有一種錯誤是從終端條件向錯誤方向遞增或遞減計數器變量。 另一種是在循環代碼中意外重置計數器或索引變量，而不是遞增或遞減它。

# --instructions--

`myFunc()`函數包含一個無限循環，因爲終止條件`i != 4`永遠不會爲`false`(並中斷循環) -`i`將每次遞增 2，然後跳過 4，因爲`i`是從奇數開始遞增。 在終端條件中輸入比較運算符，使循環僅在`i`小於或等於 4 的情況下運行。

# --hints--

你應該在`for`循環的終止條件（中間部分）中更改比較運算符。

```js
assert(__helpers.removeJSComments(code).match(/i\s*?<=\s*?4;/g).length == 1);
```

你應該修改比較運算符來避免出現死循環。

```js
assert(!__helpers.removeJSComments(code).match(/i\s*?!=\s*?4;/g));
```

# --seed--

## --seed-contents--

```js
function myFunc() {
  for (let i = 1; i != 4; i += 2) {
    console.log("Still going!");
  }
}
```

# --solutions--

```js
function myFunc() {
 for (let i = 1; i <= 4; i += 2) {
   console.log("Still going!");
 }
}
```
