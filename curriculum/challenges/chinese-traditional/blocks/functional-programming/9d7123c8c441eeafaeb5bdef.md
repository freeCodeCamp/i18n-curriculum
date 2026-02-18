---
id: 9d7123c8c441eeafaeb5bdef
title: 使用 slice 而非 splice 從陣列中移除元素
challengeType: 1
forumTopicId: 301236
dashedName: remove-elements-from-an-array-using-slice-instead-of-splice
---

# --description--

在處理陣列時，一個常見的樣式是你想要移除某些項目並保留陣列的其餘部分。JavaScript 提供了 `splice` 方法來達成這個目的，該方法接受引數，指定從哪個索引開始移除項目，接著是要移除的項目數量。如果沒有提供第二個引數，預設值是移除直到結尾的所有項目。然而，`splice` 方法會變更它所呼叫的原始陣列。以下是一個範例：

```js
const cities = ["Chicago", "Delhi", "Islamabad", "London", "Berlin"];
cities.splice(3, 1);
```

這裡 `splice` 傳回字串 `London` 並從 `cities` 陣列中刪除它。`cities` 將會有值 `["Chicago", "Delhi", "Islamabad", "Berlin"]`。

如同我們在上一個挑戰中看到的，`slice` 方法不會變更原始陣列，而是傳回一個新的陣列，可以將其存入變數。請記得，`slice` 方法接受兩個引數，分別為開始和結束的索引（結束索引不包含在內），並傳回這些項目組成的新陣列。使用 `slice` 方法取代 `splice` 有助於避免任何會變更陣列的副作用。

# --instructions--

使用 `slice` 取代 `splice` 重寫函式（程式）`nonMutatingSplice`。它應該將提供的 `cities` 陣列限制為長度 3，並傳回一個只包含前三個條款的新陣列。

請勿變更傳入函式的原始陣列。

# --hints--

你的程式碼應該使用 `slice` 方法。

```js
assert(__helpers.removeJSComments(code).match(/\.slice/g));
```

你的程式碼不應該使用 `splice` 方法。

```js
assert(!__helpers.removeJSComments(code).match(/\.?[\s\S]*?splice/g));
```

你不應該變更傳遞給函式的原始陣列。

```js
assert.deepEqual(_inputCities, ["Chicago", "Delhi", "Islamabad", "London", "Berlin"]);
```

`nonMutatingSplice(["Chicago", "Delhi", "Islamabad", "London", "Berlin"])` 應該傳回 `["Chicago", "Delhi", "Islamabad"]`。

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
