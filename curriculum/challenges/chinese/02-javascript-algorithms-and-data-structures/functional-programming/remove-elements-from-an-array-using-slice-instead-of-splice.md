---
id: 9d7123c8c441eeafaeb5bdef
title: 使用 slice 而不是 splice 从数组中移除元素
challengeType: 1
forumTopicId: 301236
dashedName: remove-elements-from-an-array-using-slice-instead-of-splice
---

# --description--

A common pattern while working with arrays is when you want to remove items and keep the rest of the array. JavaScript offers the `splice` method for this, which takes arguments for the index of where to start removing items, then the number of items to remove. If the second argument is not provided, the default is to remove items through the end. However, the `splice` method mutates the original array it is called on. 如下所示：

```js
const cities = ["Chicago", "Delhi", "Islamabad", "London", "Berlin"];
cities.splice(3, 1);
```

在这里 `splice` 返回字符串 `London` 并从城市数组中删除它。 `cities` 将有值 `["Chicago", "Delhi", "Islamabad", "Berlin"]`。

正如我们在上一次挑战中看到的那样，`slice` 方法不会改变原始数组，而是返回一个可以保存到变量中的新数组。 回想一下，`slice` 方法接收两个参数，从开始索引开始选取到结束（不包括该元素），并在新数组中返回这些元素。 使用 `slice` 方法替代 `splice` 有助于避免数组变化产生的副作用。

# --instructions--

用 `slice` 代替 `splice` 重写 `nonMutatingSplice` 函数。 将 `cities` 数组长度限制为 3，并返回一个仅包含前 3 项的新数组。

不要改变提供给函数的原始数组。

# --hints--

你的代码中应使用 `slice` 方法。

```js
assert(__helpers.removeJSComments(code).match(/\.slice/g));
```

不能使用 `splice` 方法。

```js
assert(!__helpers.removeJSComments(code).match(/\.?[\s\S]*?splice/g));
```

你不应该改变传递给函数的原始数组。

```js
assert.deepEqual(_inputCities, ["Chicago", "Delhi", "Islamabad", "London", "Berlin"]);
```

`nonMutatingSplice(["Chicago", "Delhi", "Islamabad", "London", "Berlin"])` 应返回 `["Chicago", "Delhi", "Islamabad"]`。

```js
assert.deepEqual(nonMutatingSplice(_inputCities), ["Chicago", "Delhi", "Islamabad"]);
```

# --seed--

## --seed-contents--

```js
function nonMutatingSplice(cities) {

  return cities.splice(3);
}
```

## --after-user-code--

```js
const _inputCities = ["Chicago", "Delhi", "Islamabad", "London", "Berlin"];
```

# --solutions--

```js
function nonMutatingSplice(cities) {
  return cities.slice(0,3);
}
```
