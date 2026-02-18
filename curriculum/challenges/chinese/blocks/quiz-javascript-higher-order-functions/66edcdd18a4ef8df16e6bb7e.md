---
id: 66edcdd18a4ef8df16e6bb7e
title: JavaScript 高阶函数测验
challengeType: 8
dashedName: quiz-javascript-higher-order-functions
---

# --description--

要通过测验，你必须正确回答以下 20 道题中的至少 18 题。

# --quizzes--

## --quiz--

### --question--

#### --text--

以下关于 JavaScript 高阶函数的语句中，哪个是不正确的？

#### --distractors--

高阶函数通过启用函数式编程技术，可以大大提升代码的可读性和可维护性。

---

像 map、filter 和 reduce 这样的高阶函数是数组操作的强大工具，但它们并非函数式编程所独有。

---

高阶函数可能会增加理解代码的复杂度，但它们也能带来更具表现力和简洁的方案。

#### --answer--

JavaScript 中的所有函数，包括那些不接受或不返回其他函数的函数，都可以归类为高阶函数。

### --question--

#### --text--

在高阶函数的上下文中，什么是工厂函数？

#### --distractors--

一个创建新变量的函数。

---

一个只适用于字串的函数。

---

一个自动生成代码评论的函数。

#### --answer--

一个基于特定参数返回新建函数的函数

### --question--

#### --text--

代码执行后，`forEachRes` 和 `mapRes` 的值将是多少？

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

`forEachRes` 是 `0`，`mapRes` 是 `[1,2,3,4,5]`

---

`forEachRes` 是 `5`，`mapRes` 是 `[1,2,3,4,5]`

#### --answer--

`forEachRes` 是 `undefined`，而 `mapRes` 是 `[6,7,8,9,10]`

### --question--

#### --text--

这段代码的结果是什么？

```js
[, undefined, 'a', 'b', { 20: 5 }].sort();
```

#### --distractors--

数组中存在不支持排序的元素，因此产生误差。

---

未提供回调，因此产生误差。

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

以下哪项描述了 JavaScript 中的回调函数？

#### --distractors--

一个在声明时立即调用的函数。

---

一个使用特定上下文调用的函数。

---

一个返回另一个函数的函数。

#### --answer--

作为参数传递给另一个函数的函数，由该函数的逻辑执行。

### --question--

#### --text--

在数组上使用 `reduce()` 的结果是什么？

#### --distractors--

一个布尔值，指示是否有任何元素满足条件。

---

一个通过指定回调函数处理后所有元素的数组。

---

一个布尔数组。

#### --answer--

这取决于累加器的初始值和回调函数。

### --question--

#### --text--

如果在数值排序中未提供比较函数，`sort()` 方法的行为如何？

#### --distractors--

它用 `null` 填充空槽。

---

它返回一个特殊字符的数组。

---

它以逆序排序数组。

#### --answer--

它根据 UTF-16 码元将数组作为字串排序。

### --question--

#### --text--

JavaScript 中 `some()` 方法的目的是什么？

#### --distractors--

创建一个新数组，其中包含对每个元素应用函数后的结果。

---

迭代一个数组而不产生结果。

---

根据回调函数将数组归约为单个值。

#### --answer--

确定数组中是否有任何元素通过指定的测试。

### --question--

#### --text--

以下哪项是方法链的有效示例？

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

下面代码的输出结果是什么？

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

以下哪项是方法链的优点？

#### --distractors--

它通过减少函数的执行时间来固有地优化性能。

---

它消除了对临时变量的需求，但在某些分支中可能会增加内存使用。

---

它使错误处理和调试更加直接。

#### --answer--

它通过允许在单个表达式中进行多个操作，促进了简化的语法和更易读的代码。

### --question--

#### --text--

你如何使用 `sort` 方法按特定属性对对象数组进行排序？

#### --distractors--

`sort` 方法无法对对象进行排序。

---

排序后使用 `reverse` 方法。

---

将对象转换为字串并排序。

#### --answer--

使用比较函数来比较属性值。

### --question--

#### --text--

在方法链中，增强清晰和调试的常见做法是什么？

#### --distractors--

在链中使用更少的方法。

---

避免链式调用仅返回原语的 `method`。

---

仅使用内置方法。

#### --answer--

将长链拆分为多个步骤。

### --question--

#### --text--

在你的代码中，过度使用方法链可能带来的潜在缺点是什么？

#### --distractors--

它使代码运行更慢。

---

它阻止使用评论。

---

它会使文件大小变大。

#### --answer--

它会使代码更难调试。

### --question--

#### --text--

你会使用哪种方法来确定数组中的所有元素是否都是字串？

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

在以下代码运行后，`originalArray` 的值将是什么？

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

在以下代码运行后，`shortWords` 的值将是多少？

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

为 `reduce()` 方法提供初始值作为参数的目的是什么？

#### --distractors--

设置数组的长度。

---

限制迭代次数。

---

指定函数的返回类型。

#### --answer--

定义累加器的起始值。

### --question--

#### --text--

`map` 方法可以用于非数组的对象吗？

#### --distractors--

是的，它可以用于任何对象。

---

是的，但仅限于具有数值属性的对象。

---

这取决于 JavaScript 版本。

#### --answer--

不，它是专门为数组设计的。

### --question--

#### --text--

JavaScript 中 `map` 方法的主要用途是什么？

#### --distractors--

对数组进行排序并返回一个新数组，同时维护原始顺序。 

---

从数组中过滤元素，并根据条件移除或添加元素。

---

查找数组中的特定元素并返回其索引及该元素。

#### --answer--

创建一个新数组，包含对起始数组中每个元素调用提供的函数的结果。
