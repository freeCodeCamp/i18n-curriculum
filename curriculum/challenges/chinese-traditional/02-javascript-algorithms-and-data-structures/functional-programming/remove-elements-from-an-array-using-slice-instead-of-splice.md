---
id: 9d7123c8c441eeafaeb5bdef
title: 使用 slice 而不是 splice 從數組中移除元素
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

在這裏 `splice` 返回字符串 `London` 並從城市數組中刪除它。 `cities` 將有值 `["Chicago", "Delhi", "Islamabad", "Berlin"]`。

正如我們在上一次挑戰中看到的那樣，`slice` 方法不會改變原始數組，而是返回一個可以保存到變量中的新數組。 回想一下，`slice` 方法接收兩個參數，從開始索引開始選取到結束（不包括該元素），並在新數組中返回這些元素。 使用 `slice` 方法替代 `splice` 有助於避免數組變化產生的副作用。

# --instructions--

用 `slice` 代替 `splice` 重寫 `nonMutatingSplice` 函數。 將 `cities` 數組長度限制爲 3，並返回一個僅包含前 3 項的新數組。

不要改變提供給函數的原始數組。

# --hints--

你的代碼中應使用 `slice` 方法。

```js
assert(__helpers.removeJSComments(code).match(/\.slice/g));
```

不能使用 `splice` 方法。

```js
assert(!__helpers.removeJSComments(code).match(/\.?[\s\S]*?splice/g));
```

你不應該改變傳遞給函數的原始數組。

```js
assert.deepEqual(_inputCities, ["Chicago", "Delhi", "Islamabad", "London", "Berlin"]);
```

`nonMutatingSplice(["Chicago", "Delhi", "Islamabad", "London", "Berlin"])` 應返回 `["Chicago", "Delhi", "Islamabad"]`。

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
