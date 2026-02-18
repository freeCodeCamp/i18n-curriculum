---
id: 66edcdd18a4ef8df16e6bb7e
title: JavaScript 高階函式（程式）小測驗
challengeType: 8
dashedName: quiz-javascript-higher-order-functions
---

# --description--

要通過測驗，你必須在以下 20 題中正確回答至少 18 題。

# --quizzes--

## --quiz--

### --question--

#### --text--

以下關於 JavaScript 高階函式的述語中，哪一項是不正確的？

#### --distractors--

高階函式（Higher-order functions）能透過啟用函式式程式設計技巧，大幅提升程式碼的可讀性和可維護性。

---

像 `map`、`filter` 和 `reduce` 這類高階函式是操作陣列的強大工具，但它們並非函式式程式設計所獨有。

---

高階函式（程式）可能會增加理解程式碼的複雜度，但它們也能帶來更具表達力且簡潔的解決方案。

#### --answer--

JavaScript 中所有的函式（程式），包括那些不接受或傳回其他函式（程式）的，都可以被歸類為高階函式（程式）。

### --question--

#### --text--

在高階函式（higher order functions）的背景關係中，什麼是工廠函式（factory function）？

#### --distractors--

一個創建新變數的函式（程式）。

---

只適用於字串的函式。

---

一個自動產生程式碼註解的函式（程式）。

#### --answer--

一個根據特定參數傳回新函式（程式）的函式（程式）

### --question--

#### --text--

程式碼執行後，`forEachRes` 和 `mapRes` 的值會是什麼？

```js
const numbers = [1, 1, 1, 1, 1];
let sum = 0;
const forEachRes = numbers.forEach(num => {
  return (sum += num);
});
const mapRes = numbers.map(num => {
  return (sum += num);
});
```

#### --distractors--

`forEachRes` 是 `undefined`，而 `mapRes` 是 `[1,2,3,4,5]`

---

`forEachRes` 是 `0`，而 `mapRes` 是 `[1,2,3,4,5]`

---

`forEachRes` 是 `5`，而 `mapRes` 是 `[1,2,3,4,5]`

#### --answer--

`forEachRes` 是 `undefined`，而 `mapRes` 是 `[6,7,8,9,10]`

### --question--

#### --text--

這段 `code` 的結果是什麼？

```js
[, undefined, 'a', 'b', { 20: 5 }].sort();
```

#### --distractors--

陣列中不支援排序的元素，因此發生錯誤。

---

未提供回呼，因此發生錯誤。

---

```js
[empty, 'a', 'b', undefined, { '20': 5 }]
```

#### --answer--

```js
[{ '20': 5 }, 'a', 'b', undefined, empty]
```

### --question--

#### --text--

以下哪一項描述了 JavaScript 中的回呼函式（程式）？

#### --distractors--

一個在宣告時立即被呼叫的函式。

---

一個以特定背景關係、週遭環境、上下脈絡、上下文喚起的函式（程式）。

---

一個傳回另一個函式（程式）的函式（程式）。

#### --answer--

作為引數傳遞給另一個函式（程式）的函式（程式），由該函式（程式）的邏輯執行。

### --question--

#### --text--

在陣列上使用 `reduce()` 的結果是什麼？

#### --distractors--

一個布林值，表示是否有任何元素符合條件。

---

一個經由指定回呼函式將所有元素縮減的陣列。

---

一個布林值陣列。

#### --answer--

這取決於累加器的初始值和回呼函式（程式）。

### --question--

#### --text--

如果在數值排序中沒有提供比較函式，`sort()` 方法會如何表現？

#### --distractors--

它會用 `null` 填滿空的槽。

---

它傳回一個特殊字元的陣列。

---

它會以反向順序排序陣列。

#### --answer--

它根據 UTF-16 代碼單元將陣列排序為字串。

### --question--

#### --text--

JavaScript 中 `some()` 方法的用途是什麼？

#### --distractors--

創建一個新陣列，其中包含對每個元素應用函式（程式）的結果。

---

迭代陣列而不產生結果。

---

根據回呼函式將陣列縮減為單一值。

#### --answer--

判斷陣列中是否有任何元素通過指定的測試。

### --question--

#### --text--

以下哪一項是有效的串鏈範例？

#### --distractors--

```js
Math.random();
```

---

```js
array.push(1).pop();
```

---

```js
console.log('Hello');
```

#### --answer--

```js
str.toLowerCase().trim().replace(' ', '_');
```

### --question--

#### --text--

以下 `code` 的輸出是什麼？

```js
let numbers = [2, 4, 8, 10];

numbers.forEach(function(number) {
    console.log(number % 2);
});
```

#### --distractors--

`2 4 8 10`

---

`null null null null`

---

`1 2 4 5`

#### --answer--

`0 0 0 0`

### --question--

#### --text--

下列哪一項是串鏈方法的利益？

#### --distractors--

它透過減少函式（程式）的執行時間來固有地最佳化效率。

---

它消除了對臨時變數的需求，但在某些情況下可能會增加記憶體使用量。

---

它讓錯誤處理和偵錯更加簡單明瞭。

#### --answer--

它透過允許在單一表達式中執行多個操作，促進簡化語法和更易讀的程式碼。

### --question--

#### --text--

你如何使用 `sort` 方法依特定屬性排序物件陣列？

#### --distractors--

`sort` 方法無法排序物件。

---

在排序後使用 `reverse` 方法。

---

將物件轉換為字串並排序。

#### --answer--

使用比較函式（程式）來比較屬性值。

### --question--

#### --text--

在串鏈中，為了增強清晰度和偵錯，常見的做法是什麼？

#### --distractors--

在串鏈中使用較少的方法。

---

避免串鏈只傳回原始值的行為。

---

僅使用內建方法。

#### --answer--

將長串鏈拆分為多個步驟。

### --question--

#### --text--

在你的程式碼中過度使用串鏈的潛在缺點是什麼？

#### --distractors--

它會讓程式碼執行得較慢。

---

它防止使用註解。

---

它會使檔案大小變大。

#### --answer--

它會讓程式碼更難偵錯。

### --question--

#### --text--

你會使用哪個方法來判斷陣列中的所有元素是否都是字串？

#### --distractors--

`some()`

---

`everyInstance()`

---

`filter()`

#### --answer--

`every()`

### --question--

#### --text--

在執行以下程式碼後，`originalArray` 的值會是什麼？

```js
const originalArray = [{ id: 1 }, { id: 2 }, { id: 3 }];
const filteredArray = originalArray.filter(item => item.id > 1);
filteredArray[0].id = 4;
```

#### --distractors--

`[{ id: 1 }, { id: 2 }, { id: 3 }]`

---

`[{ id: 1 }]`

---

`[{ id: 4 }, { id: 2 }, { id: 3 }]`

#### --answer--

`[{ id: 1 }, { id: 4 }, { id: 3 }]`
### --question--

#### --text--

在執行以下程式碼後，`shortWords` 的值會是什麼？

```js
const words = ['apple', 'banana', 'pear', 'kiwi'];
const shortWords = words.filter(word => word.length <= 5);
```

#### --distractors--

`[]`

---

`['pear', 'kiwi']`

---

`['apple', 'banana']`

#### --answer--

`['apple', 'pear', 'kiwi']`

### --question--

#### --text--

為什麼要將初始值作為引數提供給 `reduce()` 方法？

#### --distractors--

設定陣列的長度。

---

限制迭代次數。

---

指定函式的返回型別。

#### --answer--

定義累加器的起始值。

### --question--

#### --text--

`map` 方法可以用在非陣列的物件上嗎？

#### --distractors--

是的，它可以用於任何物件。

---

是的，但僅限於具有數值屬性的物件。

---

這取決於 JavaScript 版本。

#### --answer--

不，它是專門為陣列設計的。

### --question--

#### --text--

`map` 方法在 JavaScript 中的主要用途是什麼？

#### --distractors--

對陣列進行排序並傳回一個新的陣列，同時維護原始順序。 

---

從陣列中篩選元素，並根據條件移除或添加元素。

---

在陣列中尋找特定元素並傳回其索引及該元素。

#### --answer--

為你的起始陣列中的每個元素呼叫所提供的函式（程式），並創建一個包含結果的新陣列。
