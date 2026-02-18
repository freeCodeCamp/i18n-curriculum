---
id: 6732b28eeadda1158cdbff7b
title: 如何檢查陣列是否包含特定值？
challengeType: 19
dashedName: how-can-you-check-if-an-array-contains-a-certain-value
---

# --interactive--

在 JavaScript 中，`includes()` 方法是一種簡單且高效的方式，用來檢查陣列是否包含特定的值。此方法會傳回布林值：如果陣列包含指定的元素，則傳回 `true`，否則傳回 `false`。 

當你需要快速驗證陣列中是否存在某個元素而不需要知道它的確切位置時，`includes()` 方法特別有用。讓我們從一個如何使用 `includes()` 方法的範例開始：

:::interactive_editor

```js
let fruits = ["apple", "banana", "orange", "mango"];
console.log(fruits.includes("banana")); // true
console.log(fruits.includes("grape"));  // false
```

:::

在這個範例中，我們有一個水果的陣列。我們使用 `includes()` 方法來檢查 `banana` 是否在陣列中。它傳回 `true`，因為 `banana` 確實存在。接著我們檢查 `grape`，它傳回 `false`，因為它不在陣列中。

`includes()` 方法在處理字串時區分大小寫。這表示首字母大寫的 `Banana` 和全小寫的 `banana` 被視為不同的值。以下是一個說明此情況的範例：

:::interactive_editor

```js
let fruits = ["apple", "banana", "orange"];
console.log(fruits.includes("banana")); // true
console.log(fruits.includes("Banana")); // false
```

:::

在這種情況下，`banana`（全部小寫）在陣列中被找到，但 `Banana`（首字母大寫）則沒有，因此第二次 `includes()` 呼叫傳回 `false`。

`includes()` 方法也可以接受一個選用的第二個參數，用來指定在陣列中開始搜尋的位置。如果你想要檢查陣列中特定零件是否存在，這會很有用。以下是你如何使用這個特性：

:::interactive_editor

```js
let numbers = [10, 20, 30, 40, 50, 30, 60];
console.log(numbers.includes(30, 3)); // true
console.log(numbers.includes(30, 4)); // true
```

:::

對於第一個 `console.log`，我們正在尋找從索引 `3` 開始的數字 `30`。在這種情況下，有一個數字 `30` 出現在索引 `3` 之後，所以 `includes()` 方法傳回 `true`。 

第二個 `console.log` 也是如此。我們正在尋找從索引 `4` 開始的數字 `30`。因為數字 `30` 確實出現在該索引之後，所以它會傳回 `true`。 

值得注意的是，`includes()` 使用嚴格相等比較（`===`），這表示它可以區分不同的型別。<dfn>例如</dfn>：

:::interactive_editor

```js
let mixedArray = [1, "2", 3, "4", 5];
console.log(mixedArray.includes(2));  // false
console.log(mixedArray.includes("2")); // true
```

:::

在這種情況下，數字 `2` 和字串 `"2"` 被視為不同的資料型別。所以，第一個 `console.log` 會傳回 `false`，而第二個 `console.log` 會傳回 `true`。

`includes()` 方法是一個強大的工具，用於檢查陣列中元素的存在。它簡單易用、高效，並且可以避免你撰寫更複雜的迴圈或條件來搜尋陣列。無論你是在處理字串、數字或混合資料型別，`includes()` 都提供了一種直接的方法來驗證值是否存在於你的陣列中。

# --questions--

## --text--

以下 `code` 的輸出結果會是什麼？

```js
let arr = [1, 2, 3, 4, 5];
console.log(arr.includes(3, 3));
```

## --answers--

`true`

### --feedback--

`includes()` 的第二個參數指定搜尋的起始位置。

---

`false`

---

`undefined`

### --feedback--

`includes()` 的第二個參數指定搜尋的起始位置。

---

這將會丟出錯誤。

### --feedback--

`includes()` 的第二個參數指定搜尋的起始位置。

## --video-solution--

2

## --text--

以下 `code` 的輸出結果會是什麼？

```js
let arr = ["a", "b", "c", "d", "e"];
console.log(arr.includes("C"));
```

## --answers--

`true`

### --feedback--

請記住，當處理字串時，`includes()` 是區分大小寫的。

---

`false`

---

`undefined`

### --feedback--

請記住，當處理字串時，`includes()` 是區分大小寫的。

---

這將會丟出錯誤。

### --feedback--

請記住，當處理字串時，`includes()` 是區分大小寫的。

## --video-solution--

2

## --text--

以下 `code` 的輸出結果會是什麼？

```js
let arr = [1, "2", 3, "4", 5];
console.log(arr.includes("3"));
```

## --answers--

`true`

### --feedback--

`includes()` 方法使用嚴格相等 (`===`) 進行比較。

---

`false`

---

`undefined`

### --feedback--

`includes()` 方法使用嚴格相等 (`===`) 進行比較。

---

這將會丟出錯誤。

### --feedback--

`includes()` 方法使用嚴格相等 (`===`) 進行比較。

## --video-solution--

2
