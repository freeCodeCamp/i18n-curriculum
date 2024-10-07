---
id: 8d1323c8c441eddfaeb5bdef
title: 创建一个集合类
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

首先，我们将创建一个 add 方法，该方法将一个值添加到我们的集合中，只要该值不已经存在于集合中。 然后，我们将创建一个 remove 方法，如果一个值已经存在，则将其从集合中删除。 最后，我们将创建一个 size 方法，该方法返回集合中元素的数量。

# --instructions--

创建一个 `add` 方法，该方法将唯一值添加到集合中，如果成功添加值则返回 `true`，否则返回 `false`。

创建一个 `remove` 方法，它接受一个值并检查它是否存在于集合中。 如果存在，则此方法应将其从集合集合中删除，并返回 `true`。 否则，它应该返回 `false`。 创建一个 `size` 方法，返回集合的大小。

# --hints--

你的 `Set` 类应该有一个 `add` 方法。

```js
assert(
  (function () {
    var test = new Set();
    return typeof test.add === 'function';
  })()
);
```

您的 `add` 方法不应添加重复值。

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

你的 `add` 方法应该在一个值被成功添加时返回 `true`。

```js
assert(
  (function () {
    var test = new Set();
    var result = test.add('a');
    return result != undefined && result === true;
  })()
);
```

你的 `add` 方法在添加一个重复的值时应该返回 `false`。

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

你的 `Set` 类应该有一个 `remove` 方法。

```js
assert(
  (function () {
    var test = new Set();
    return typeof test.remove === 'function';
  })()
);
```

您的 `remove` 方法应该只删除集合中存在的项目。

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

您的 `remove` 方法应该从集合中删除给定的项目。

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

你的 `Set` 类应该有一个 `size` 方法。

```js
assert(
  (function () {
    var test = new Set();
    return typeof test.size === 'function';
  })()
);
```

`size` 方法应该返回集合中元素的数量。

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
