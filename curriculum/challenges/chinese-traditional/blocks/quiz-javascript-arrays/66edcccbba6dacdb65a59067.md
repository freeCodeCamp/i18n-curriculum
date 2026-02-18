---
id: 66edcccbba6dacdb65a59067
title: JavaScript 陣列小測驗
challengeType: 8
dashedName: quiz-javascript-arrays
---

# --description--

要通過測驗，你必須在以下 20 題中正確回答至少 18 題。

# --quizzes--

## --quiz--

### --question--

#### --text--

以下 `code` 的輸出結果會是什麼？

```js
const numbers = [1, 2, 3];
console.log(numbers[10]);
```

#### --distractors--

`[1, 2, 3]`

---

`null`

---

`10`

#### --answer--

`undefined`

### --question--

#### --text--

以下哪一種方式是正確從 `developers` 陣列中存取字串 `"Jessica"`？

#### --distractors--

```js
const developers = ["Jessica", "Naomi", "Tom"];
developers[1]
```

---

```js
const developers = ["Jessica", "Naomi", "Tom"];
developers[2]
```

---

```js
const developers = ["Jessica", "Naomi", "Tom"];
developers[-1]
```

#### --answer--

```js
const developers = ["Jessica", "Naomi", "Tom"];
developers[0]
```

### --question--

#### --text--

`index` 變數會被指定什麼值？

```js
const numbers = [10, 20, 30, 40];
const index = numbers.indexOf(20);
console.log(index);
```

#### --distractors--

2

---

3

---

-1

#### --answer--

1

### --question--

#### --text--

`rest syntax` 做什麼？

#### --distractors--

它用於將字串分割成子字串的陣列。

---

它用於在陣列的任何位置添加或移除元素。

---

它用於將元素添加到陣列的末端，並會傳回新的長度。

#### --answer--

它將陣列中剩餘的元素捕捉到一個新的陣列中。

### --question--

#### --text--

什麼是陣列解構？

#### --distractors--

它用於將陣列中所有元素串接成一個字串。

---

它用於檢查陣列是否包含特定值。

---

它用於從陣列中移除最後一個元素，並會傳回該被移除的元素。

#### --answer--

它用於從陣列中擷取值並以更簡潔且易讀的方式將其指定給變數。

### --question--

#### --text--

`arr2` 變數會被指定什麼值？

```js
const arr1 = [1, 2, 3];
const arr2 = [...arr1, 4, 5];
console.log(arr2);
```

#### --distractors--

`[4, 5, 1, 2, 3]`

---

`[1, 2, [3, 4, 5]]`

---

`[1, 2, 3]`

#### --answer--

`[1, 2, 3, 4, 5]`

### --question--

#### --text--

這段程式碼會在主控台記錄什麼？

```js
const colors = ["red", "blue", "green", "yellow"];
colors.splice(1, 2, "purple");
console.log(colors);
```

#### --distractors--

`["red", "blue", "green", "yellow"]`

---

`["red", "blue", "yellow"]`

---

`["red", "yellow"]`

#### --answer--

`["red", "purple", "yellow"]`

### --question--

#### --text--

`slicedArr` 變數會被指定什麼值？

```js
const arr = ["apple", "banana", "cherry", "date"];
const slicedArr = arr.slice(1, 3);
console.log(slicedArr);
```

#### --distractors--

`["apple", "banana"]`

---

`["cherry", "date"]`

---

`["apple", "cherry"]`

#### --answer--

`["banana", "cherry"]`

### --question--

#### --text--

哪一個方法會傳回陣列中指定元素的第一個索引？

#### --distractors--

`firstIndex()`

---

`lastIndex()`

---

`searchIndex()`

#### --answer--

`indexOf()`

### --question--

#### --text--

哪一個方法用來移除陣列中的第一個元素並傳回該被移除的元素？

#### --distractors--

`pop()`

---

`slice()`

---

`splice()`

#### --answer--

`shift()`

### --question--

#### --text--

`concat()` 方法做什麼？

#### --distractors--

將陣列元素連接成字串。

---

將元素添加到陣列的開頭。

---

從陣列中移除一個元素。

#### --answer--

將兩個陣列合併成一個新的陣列。

### --question--

#### --text--

這段程式碼的輸出會是什麼？

```js
const fruits = ["apple", "banana", "cherry", "apple", "orange"];

fruits.splice(0, 1);

console.log(fruits);
```

#### --distractors--

`["apple", "banana", "cherry", "apple", "orange"]`

---

`["apple", "banana", "cherry"]`

---

`["cherry", 'apple']`

#### --answer--

`["banana", "cherry", "apple", "orange"]`

### --question--

#### --text--

`includes()` 方法做什麼？

#### --distractors--

它用於將字串分割成子字串的陣列。

---

它用於將陣列中所有元素串接成一個字串。

---

它用於在陣列的任何位置添加或移除元素。

#### --answer--

它用於檢查陣列是否包含特定值。

### --question--

#### --text--

下列哪一個方法用於就地反轉陣列？

#### --distractors--

`reversed()`

---

`reverseArr()`

---

`reversing()`

#### --answer--

`reverse()`

### --question--

#### --text--

什麼是二維陣列？

#### --distractors--

只包含物件字面值的陣列。

---

固定長度的陣列。

---

一個浮點數的陣列。

#### --answer--

一個陣列的陣列。

### --question--

#### --text--

以下關於陣列中 `indexOf()` 方法的敘述，哪一項是正確的？

#### --distractors--

它總是傳回該元素的最後一次出現。

---

如果找不到該元素，則會丟出錯誤。

---

它需要陣列已排序。

#### --answer--

如果找不到該元素，則傳回 `-1`。

### --question--

#### --text--

以下哪一項不是陣列方法？

#### --distractors--

`includes()`

---

`pop()`

---

`push()`

#### --answer--

`trim()`

### --question--

#### --text--

以下 `code` 的輸出結果會是什麼？

```js
const arr = ["o", "l", "l", "e", "h"];
console.log(arr.join(""));
```

#### --distractors--

`["o", "l", "l", "e", "h"]`

---

`"hello"`

---

`undefined`

#### --answer--

`"olleh"`

### --question--

#### --text--

對空的陣列使用 `shift()` 方法會得到什麼結果？


#### --distractors--

`TypeError`

---

`[]`

---

`null`

#### --answer--

`undefined`

### --question--

#### --text--

哪一個方法會傳回一個新的陣列而不改變原始陣列？

#### --distractors--

`shift()`

---

`pop()`

---

`push()`

#### --answer--

`slice()`
