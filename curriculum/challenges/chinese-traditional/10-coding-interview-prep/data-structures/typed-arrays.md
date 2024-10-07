---
id: 587d8253367417b2b2512c6a
title: 類型化數組
challengeType: 1
forumTopicId: 301716
dashedName: typed-arrays
---

# --description--

Arrays are JavaScript objects that can hold a lot of different elements.

```js
var complexArr = [1, 5, "2", "Word", {"name": "James"}];
```

基本上在後臺發生的事情是，你的瀏覽器將自動爲該陣列提供適量的內存空間。 如果你添加或刪除數據，它也會根據需要而改變。

然而，在高性能和不同元素類型的世界裏，有時你需要更具體地瞭解一個數組被分配了多少內存。

<dfn>類型化數組</dfn> 是這個問題的答案。 你現在可以說你想給一個數組多少內存了。 下面是可用數組的不同類型以及該數組中每個元素的大小（以字節爲單位）的基本概述。

<table><tbody><tr><th>Type</th><th>Each element size in bytes</th></tr><tr><td><code>Int8Array</code></td><td>1</td></tr><tr><td><code>Uint8Array</code></td><td>1</td></tr><tr><td><code>Uint8ClampedArray</code></td><td>1</td></tr><tr><td><code>Int16Array</code></td><td>2</td></tr><tr><td><code>Uint16Array</code></td><td>2</td></tr><tr><td><code>Int32Array</code></td><td>4</td></tr><tr><td><code>Uint32Array</code></td><td>4</td></tr><tr><td><code>Float32Array</code></td><td>4</td></tr><tr><td><code>Float64Array</code></td><td>8</td></tr></tbody></table>

創建此類數組有兩種方法。 一種方法是直接創建它。 下面是如何創建一個長度爲 3 的 `Int16Array`。

```js
var i8 = new Int16Array(3);
console.log(i8);
// Returns [0, 0, 0]
```

你也可以創建一個 <dfn>緩衝區</dfn> 來指定你希望數組佔用多少數據（以字節爲單位）。 **注意**  
要使用緩衝區創建類型化數組，你需要將字節數分配爲上面列出的字節數的倍數。

```js
// Create same Int16Array array differently
var byteSize = 6; // Needs to be multiple of 2
var buffer = new ArrayBuffer(byteSize);
var i8View = new Int16Array(buffer);
buffer.byteLength; // Returns 6
i8View.byteLength; // Returns 6
console.log(i8View); // Returns [0, 0, 0]
```

<dfn>緩衝區</dfn> 是一般用途的對象，只是攜帶了數據。 你不能正常訪問它們。 要訪問它們，您需要先創建一個 <dfn>視圖</dfn>。

```js
i8View[0] = 42;
console.log(i8View); // Returns [42, 0, 0]
```

**注意**  
類型化數組沒有傳統數組的一些方法，例如 `.pop()` 或 `.push()`。 類型化數組也無法通過 `Array.isArray()` 檢查某對象是否爲數組。 雖然比較簡單，但這對不太成熟的 JavaScript 引擎來說，可以成爲實現它們的一個優勢。

# --instructions--

首先創建一個 64 字節的 `buffer`。 然後創建一個 `Int32Array` 類型數組，其視圖名爲 `i32View`。

# --hints--

你的 `buffer` 應該是 64 字節大。

```js
assert(buffer.byteLength === 64);
```

你的緩衝區的 `i32View` 視圖應該是 64 字節大。

```js
assert(i32View.byteLength === 64);
```

你的緩衝區的 `i32View` 視圖應該是 16 個元素長。

```js
assert(i32View.length === 16);
```

# --seed--

## --seed-contents--

```js
var buffer;
var i32View;
```

# --solutions--

```js
var buffer = new ArrayBuffer(64);
var i32View = new Int32Array(buffer);
```
