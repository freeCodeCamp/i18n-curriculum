---
id: 587d7b84367417b2b2512b35
title: 捕獲拼錯的變量名和函數名
challengeType: 1
forumTopicId: 301186
dashedName: catch-misspelled-variable-and-function-names
---

# --description--

The `console.log()` and `typeof` methods are the two primary ways to check intermediate values and types of program output. Now it's time to get into the common forms that bugs take. One syntax-level issue that fast typers can commiserate with is the humble spelling error.

變量或函數名的錯寫、漏寫或大小寫弄混將使瀏覽器尋找不存在的對象，並報出引用錯誤。 JavaScript 變量和函數名稱區分大小寫。

# --instructions--

修復代碼中的兩個拼寫錯誤，以便 `netWorkingCapital` 計算有效。

# --hints--

檢查計算 netWorkingCapital 值時使用的兩個變量的拼寫是否正確，控制檯應該輸出 "Net working capital is: 2"。

```js
assert(netWorkingCapital === 2);
```

代碼中不應該有拼寫錯誤的變量實例。

```js
assert(!__helpers.removeJSComments(code).match(/recievables/g));
```

應在代碼中聲明並正確使用 `receivables` 變量。

```js
assert(__helpers.removeJSComments(code).match(/receivables/g).length == 2);
```

代碼中不應該有拼寫錯誤的變量實例。

```js
assert(!__helpers.removeJSComments(code).match(/payable;/g));
```

應在代碼中聲明並正確使用 `payables` 變量。

```js
assert(__helpers.removeJSComments(code).match(/payables/g).length == 2);
```

# --seed--

## --seed-contents--

```js
let receivables = 10;
let payables = 8;
let netWorkingCapital = recievables - payable;
console.log(`Net working capital is: ${netWorkingCapital}`);
```

# --solutions--

```js
let receivables = 10;
let payables = 8;
let netWorkingCapital = receivables - payables;
console.log(`Net working capital is: ${netWorkingCapital}`);
```
