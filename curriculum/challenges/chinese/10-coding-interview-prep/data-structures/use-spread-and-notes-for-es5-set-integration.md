---
id: 587d8255367417b2b2512c73
title: 使用 Spread 和 Notes 进行 ES5 Set() 集成
challengeType: 1
forumTopicId: 301720
dashedName: use-spread-and-notes-for-es5-set-integration
---

# --description--

Do you remember the ES6 spread operator `...`?

`...` 可以在 ES6 中获取可迭代对象并将它们转换为数组。

让我们创建一个 Set，并检查传播函数。

```js
var set = new Set([1,2,3]);
var setToArr = [...set]
console.log(setToArr) // returns [ 1, 2, 3 ]
```

# --instructions--

在本练习中，我们将集合对象传递给 `checkSet` 函数。 它应该返回一个包含集合值的数组。

现在你已经成功学会了如何使用ES6 `Set()`对象，干得好！

# --hints--

`checkSet(new Set([1,2,3,4,5,6,7])` 应该返回 `[1, 2, 3, 4, 5, 6, 7]`。

```js
assert(
  (function () {
    var test = checkSet(new Set([1, 2, 3, 4, 5, 6, 7]));
    return DeepEqual(test, [1, 2, 3, 4, 5, 6, 7]);
  })()
);
```

# --seed--

## --seed-contents--

```js
function checkSet(set){
   // Only change code below this line

   // Only change code above this line
}
```

# --solutions--

```js
function checkSet(set){
return [...set];}
```
