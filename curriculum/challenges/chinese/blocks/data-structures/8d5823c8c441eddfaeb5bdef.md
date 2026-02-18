---
id: 8d5823c8c441eddfaeb5bdef
title: 创建映射数据结构
challengeType: 1
forumTopicId: 301629
dashedName: create-a-map-data-structure
---

# --description--

接下来的几个挑战将涵盖映射和哈希表。 映射是存储键值对的数据结构。 在 JavaScript 中，这些都可以作为对象使用。 映射可根据键值快速查找存储的项目，是非常常见且有用的数据结构。

# --instructions--

让我们练习创建我们自己的映射。 因为 JavaScript 对象提供了比我们在此处编写的任何内容更有效的映射结构，所以这里主要是作为学习的练习。 但是，JavaScript 对象仅向我们提供某些操作。 如果我们想定义自定义操作怎么办？ 使用此处提供的 `Map` 对象作为 JavaScript `object` 的包装器。 在 Map 对象上创建以下方法和操作：

<ul>
<li><code>add</code> accepts a <code>key, value</code> pair to add to the map.</li>
<li><code>remove</code> accepts a key and removes the associated <code>key, value</code> pair</li>
<li><code>get</code> accepts a <code>key</code> and returns the stored <code>value</code></li>
<li><code>has</code> accepts a <code>key</code> and returns <dfn>true</dfn> if the key exists or <dfn>false</dfn> if it doesn't.</li>
<li><code>values</code> returns an array of all the values in the map</li>
<li><code>size</code> returns the number of items in the map</li>
<li><code>clear</code> empties the map</li>
</ul>

# --hints--

叫做 `HashTable` 的数据结构应当存在。

```js
assert(
  (function () {
    var test = false;
    if (typeof Map !== 'undefined') {
      test = new Map();
    }
    return typeof test == 'object';
  })()
);
```

`Map` 对象应该有以下方法： `add`, `remove` ,`get`, `has`, `values`, `clear`, 和 `size`。

```js
assert(
  (function () {
    var test = false;
    if (typeof Map !== 'undefined') {
      test = new Map();
    }
    return (
      typeof test.add == 'function' &&
      typeof test.remove == 'function' &&
      typeof test.get == 'function' &&
      typeof test.has == 'function' &&
      typeof test.values == 'function' &&
      typeof test.clear == 'function' &&
      typeof test.size == 'function'
    );
  })()
);
```

`add`方法应当将元素添加到映射中。

```js
assert(
  (function () {
    var test = false;
    if (typeof Map !== 'undefined') {
      test = new Map();
    }
    test.add(5, 6);
    test.add(2, 3);
    test.add(2, 5);
    return test.size() == 2;
  })()
);
```

`has` 方法，对于已经添加的项目应该返回 `true`, 缺失的项目返回`false` 。

```js
assert(
  (function () {
    var test = false;
    if (typeof Map !== 'undefined') {
      test = new Map();
    }
    test.add('test', 'value');
    return test.has('test') && !test.has('false');
  })()
);
```

`get` 方法应该接受映射的键值作为输入，并返回相关的值。

```js
assert(
  (function () {
    var test = false;
    if (typeof Map !== 'undefined') {
      test = new Map();
    }
    test.add('abc', 'def');
    return test.get('abc') == 'def';
  })()
);
```

`values` 方法应该将存储在映射中的所有的值作为字符串数组返回。

```js
assert(
  (function () {
    var test = false;
    if (typeof Map !== 'undefined') {
      test = new Map();
    }
    test.add('a', 'b');
    test.add('c', 'd');
    test.add('e', 'f');
    var vals = test.values();
    return (
      vals.indexOf('b') != -1 &&
      vals.indexOf('d') != -1 &&
      vals.indexOf('f') != -1
    );
  })()
);
```

`clear` 方法应该清空映射， `size` 方法应该返回地图中存在的项目数量。

```js
assert(
  (function () {
    var test = false;
    if (typeof Map !== 'undefined') {
      test = new Map();
    }
    test.add('b', 'b');
    test.add('c', 'd');
    test.remove('asdfas');
    var init = test.size();
    test.clear();
    return init == 2 && test.size() == 0;
  })()
);
```

# --seed--

## --seed-contents--

```js
var Map = function() {
  this.collection = {};
  // Only change code below this line
  
  // Only change code above this line
};
```

# --solutions--

```js
var Map = function() {
    this.collection = {};
    // Only change code below this line

    this.add = function(key,value) {
      this.collection[key] = value;
    }

    this.remove = function(key) {
      delete this.collection[key];
    }

    this.get = function(key) {
      return this.collection[key];
    }

    this.has = function(key) {
      return this.collection.hasOwnProperty(key)
    }

    this.values = function() {
      return Object.values(this.collection);
    }

    this.size = function() {
      return Object.keys(this.collection).length;
    }

    this.clear = function() {
      for(let item of Object.keys(this.collection)) {
        delete this.collection[item];
      }
    }
    // Only change code above this line
};
```
