---
id: 8d1323c8c441eddfaeb5bdef
title: 創建一個集合類
challengeType: 1
forumTopicId: 301632
dashedName: create-a-set-class
---

# --description--

In this exercise we are going to create a class named `Set` to emulate an abstract data structure called "set". A set is like an array, but it cannot contain duplicate values. The typical use for a set is to simply check for the presence of an item. We can see how the ES6 `Set` object works in the example below:

```js
const set1 = new Set([1, 2, 3, 5, 5, 2, 0]);
console.log(set1);
// output: {1, 2, 3, 5, 0}
console.log(set1.has(1));
// output: true
console.log(set1.has(6));
// output: false
```

首先，我們將創建一個 add 方法，該方法將一個值添加到我們的集合中，只要該值不已經存在於集合中。 然後，我們將創建一個 remove 方法，如果一個值已經存在，則將其從集合中刪除。 最後，我們將創建一個 size 方法，該方法返回集合中元素的數量。

# --instructions--

創建一個 `add` 方法，該方法將唯一值添加到集合中，如果成功添加值則返回 `true`，否則返回 `false`。

創建一個 `remove` 方法，它接受一個值並檢查它是否存在於集合中。 如果存在，則此方法應將其從集合集合中刪除，並返回 `true`。 否則，它應該返回 `false`。 創建一個 `size` 方法，返回集合的大小。

# --hints--

你的 `Set` 類應該有一個 `add` 方法。

```js
assert(
  (function () {
    var test = new Set();
    return typeof test.add === 'function';
  })()
);
```

您的 `add` 方法不應添加重複值。

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

你的 `add` 方法應該在一個值被成功添加時返回 `true`。

```js
assert(
  (function () {
    var test = new Set();
    var result = test.add('a');
    return result != undefined && result === true;
  })()
);
```

你的 `add` 方法在添加一個重複的值時應該返回 `false`。

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

你的 `Set` 類應該有一個 `remove` 方法。

```js
assert(
  (function () {
    var test = new Set();
    return typeof test.remove === 'function';
  })()
);
```

您的 `remove` 方法應該只刪除集合中存在的項目。

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

您的 `remove` 方法應該從集合中刪除給定的項目。

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

你的 `Set` 類應該有一個 `size` 方法。

```js
assert(
  (function () {
    var test = new Set();
    return typeof test.size === 'function';
  })()
);
```

`size` 方法應該返回集合中元素的數量。

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
