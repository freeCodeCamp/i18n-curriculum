---
id: 587d8253367417b2b2512c6a
title: 类型化数组
challengeType: 1
forumTopicId: 301716
dashedName: typed-arrays
---

# --description--

Arrays are JavaScript objects that can hold a lot of different elements.

```js
var complexArr = [1, 5, "2", "Word", {"name": "James"}];
```

基本上在后台发生的事情是，你的浏览器将自动为该阵列提供适量的内存空间。 如果你添加或删除数据，它也会根据需要而改变。

然而，在高性能和不同元素类型的世界里，有时你需要更具体地了解一个数组被分配了多少内存。

<dfn>类型化数组</dfn> 是这个问题的答案。 你现在可以说你想给一个数组多少内存了。 下面是可用数组的不同类型以及该数组中每个元素的大小（以字节为单位）的基本概述。

<table><tbody><tr><th>Type</th><th>Each element size in bytes</th></tr><tr><td><code>Int8Array</code></td><td>1</td></tr><tr><td><code>Uint8Array</code></td><td>1</td></tr><tr><td><code>Uint8ClampedArray</code></td><td>1</td></tr><tr><td><code>Int16Array</code></td><td>2</td></tr><tr><td><code>Uint16Array</code></td><td>2</td></tr><tr><td><code>Int32Array</code></td><td>4</td></tr><tr><td><code>Uint32Array</code></td><td>4</td></tr><tr><td><code>Float32Array</code></td><td>4</td></tr><tr><td><code>Float64Array</code></td><td>8</td></tr></tbody></table>

创建此类数组有两种方法。 一种方法是直接创建它。 下面是如何创建一个长度为 3 的 `Int16Array`。

```js
var i8 = new Int16Array(3);
console.log(i8);
// Returns [0, 0, 0]
```

你也可以创建一个 <dfn>缓冲区</dfn> 来指定你希望数组占用多少数据（以字节为单位）。 **注意**  
要使用缓冲区创建类型化数组，你需要将字节数分配为上面列出的字节数的倍数。

```js
// Create same Int16Array array differently
var byteSize = 6; // Needs to be multiple of 2
var buffer = new ArrayBuffer(byteSize);
var i8View = new Int16Array(buffer);
buffer.byteLength; // Returns 6
i8View.byteLength; // Returns 6
console.log(i8View); // Returns [0, 0, 0]
```

<dfn>缓冲区</dfn> 是一般用途的对象，只是携带了数据。 你不能正常访问它们。 要访问它们，您需要先创建一个 <dfn>视图</dfn>。

```js
i8View[0] = 42;
console.log(i8View); // Returns [42, 0, 0]
```

**注意**  
类型化数组没有传统数组的一些方法，例如 `.pop()` 或 `.push()`。 类型化数组也无法通过 `Array.isArray()` 检查某对象是否为数组。 虽然比较简单，但这对不太成熟的 JavaScript 引擎来说，可以成为实现它们的一个优势。

# --instructions--

首先创建一个 64 字节的 `buffer`。 然后创建一个 `Int32Array` 类型数组，其视图名为 `i32View`。

# --hints--

你的 `buffer` 应该是 64 字节大。

```js
assert(buffer.byteLength === 64);
```

你的缓冲区的 `i32View` 视图应该是 64 字节大。

```js
assert(i32View.byteLength === 64);
```

你的缓冲区的 `i32View` 视图应该是 16 个元素长。

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
