---
id: 587d8253367417b2b2512c6c
title: 在两个集上执行联合
challengeType: 1
forumTopicId: 301708
dashedName: perform-a-union-on-two-sets
---

# --description--

In this exercise we are going to perform a union on two sets of data. We will create a method on our `Set` data structure called `union`. This method should take another `Set` as an argument and return the `union` of the two sets, excluding any duplicate values.

例如，如果 `setA = ['a','b','c']` 且 `setB = ['a','b','d','e']`，则 setA 和 setB 的并集为：`setA.union(setB) = ['a', 'b', 'c', 'd', 'e']`。

# --hints--

你的 `Set` 类应该有一个 `union` 方法。

```js
assert(
  (function () {
    var test = new Set();
    return typeof test.union === 'function';
  })()
);
```

Set  包含值  [“ a”，“ b”，“ c”] 和  Set包含 [“ c”，“ d”]  应返回一个新的  Set  包含值  [“ a”，“ b”，“ c”，“ d”]  。

```js
assert(
  (function () {
    var setA = new Set();
    var setB = new Set();
    setA.add('a');
    setA.add('b');
    setA.add('c');
    setB.add('c');
    setB.add('d');
    var unionSetAB = setA.union(setB);
    var final = unionSetAB.values();
    return (
      final.indexOf('a') !== -1 &&
      final.indexOf('b') !== -1 &&
      final.indexOf('c') !== -1 &&
      final.indexOf('d') !== -1 &&
      final.length === 4
    );
  })()
);
```

# --seed--

## --seed-contents--

```js
class Set {
  constructor() {
    // This will hold the set
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
  // This method will add an element to the set
  add(element) {
    if (!this.has(element)) {
      this.dictionary[element] = element;
      this.length++;
      return true;
    }

    return false;
  }
  // This method will remove an element from a set
  remove(element) {
    if (this.has(element)) {
      delete this.dictionary[element];
      this.length--;
      return true;
    }

    return false;
  }
  // This method will return the size of the set
  size() {
    return this.length;
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

  union(set) {
    const newSet = new Set();
    this.values().forEach(value => {
      newSet.add(value);
    })
    set.values().forEach(value => {
      newSet.add(value);
    })

    return newSet;
  }
}
```
