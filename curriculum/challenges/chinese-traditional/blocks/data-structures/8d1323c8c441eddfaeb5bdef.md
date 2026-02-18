---
id: 8d1323c8c441eddfaeb5bdef
title: 創建一個 Set 類別
challengeType: 1
forumTopicId: 301632
dashedName: create-a-set-class
---

# --description--

在這個練習中，我們將創建一個名為 `Set` 的類別，以模擬一個稱為「集合」的抽象資料結構。集合就像陣列，但它不能包含重複的值。集合的典型用途是簡單地檢查某個項目是否存在。我們可以在下面的範例中看到 ES6 `Set` 物件的運作方式：

```js
const set1 = new Set([1, 2, 3, 5, 5, 2, 0]);
console.log(set1);
// output: {1, 2, 3, 5, 0}
console.log(set1.has(1));
// output: true
console.log(set1.has(6));
// output: false
```

首先，我們將創建一個 add 方法，當值尚未存在於我們的群集中時，將該值添加到群集中。然後，我們將創建一個 remove 方法，如果該值已存在於群集中，則從群集中移除該值。最後，我們將創建一個 size 方法，傳回群集中元素的數量。

# --instructions--

創建一個 `add` 方法，將唯一值添加到集合群集中，並在成功添加該值時傳回 `true`，否則傳回 `false`。

創建一個接受值並檢查該值是否存在於集合中的 `remove` 方法。如果存在，則此方法應該將其從群集中移除，並傳回 `true`。否則，應傳回 `false`。創建一個傳回集合大小的 `size` 方法。

# --hints--

你的 `Set` 類別應該有一個 `add` 方法。

```js
assert(
  (function () {
    var test = new Set();
    return typeof test.add === 'function';
  })()
);
```

你的 `add` 方法不應該新增重複的值。

```js
assert(
  (function () {
    var test = new Set();
    test.add('a');
    test.add('b');
    test.add('a');
    var vals = test.values();
    return vals[0] === 'a' && vals[1] === 'b' && vals.length === 2;
  })()
);
```

當值已成功添加時，你的 `add` 方法應該傳回 `true`。

```js
assert(
  (function () {
    var test = new Set();
    var result = test.add('a');
    return result != undefined && result === true;
  })()
);
```

當加入重複值時，你的 `add` 方法應該傳回 `false`。

```js
assert(
  (function () {
    var test = new Set();
    test.add('a');
    var result = test.add('a');
    return result != undefined && result === false;
  })()
);
```

你的 `Set` 類別應該有一個 `remove` 方法。

```js
assert(
  (function () {
    var test = new Set();
    return typeof test.remove === 'function';
  })()
);
```

你的 `remove` 方法應該只移除集合中存在的項目。

```js
assert.deepEqual(
  (function () {
    var test = new Set();
    test.add('a');
    test.add('b');
    test.remove('c');
    return test.values();
  })(),
  ['a', 'b']
);
```

你的 `remove` 方法應該從集合中移除指定的項目。

```js
assert(
  (function () {
    var test = new Set();
    test.add('a');
    test.add('b');
    test.remove('a');
    var vals = test.values();
    return vals[0] === 'b' && vals.length === 1;
  })()
);
```

你的 `Set` 類別應該有一個 `size` 方法。

```js
assert(
  (function () {
    var test = new Set();
    return typeof test.size === 'function';
  })()
);
```

`size` 方法應該傳回群集中的元素數量。

```js
assert(
  (function () {
    var test = new Set();
    test.add('a');
    test.add('b');
    test.remove('a');
    return test.size() === 1;
  })()
);
```

# --seed--

## --seed-contents--

```js
class Set {
  constructor() {
    // Dictionary will hold the items of our set
    this.dictionary = {};
    this.length = 0;
  }

  // This method will check for the presence of an element and return true or false
  has(element) {
    return this.dictionary[element] !== undefined;
  }

  // This method will return all the values in the set
  values() {
    return Object.values(this.dictionary);
  }

  // Only change code below this line
  
  // Only change code above this line
}
```

# --solutions--

```js
class Set {
  constructor() {
    this.dictionary = {};
    this.length = 0;
  }

  has(element) {
    return this.dictionary[element] !== undefined;
  }

  values() {
    return Object.values(this.dictionary);
  }

  add(element) {
    if (!this.has(element)) {
      this.dictionary[element] = element;
      this.length++;
      return true;
    }

    return false;
  }

  remove(element) {
    if (this.has(element)) {
      delete this.dictionary[element];
      this.length--;
      return true;
    }

    return false;
  }

  size() {
    return this.length;
  }
}
```
