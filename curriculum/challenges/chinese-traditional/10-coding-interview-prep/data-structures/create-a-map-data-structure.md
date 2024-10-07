---
id: 8d5823c8c441eddfaeb5bdef
title: 創建映射數據結構
challengeType: 1
forumTopicId: 301629
dashedName: create-a-map-data-structure
---

# --description--

The next few challenges will cover maps and hash tables. Maps are data structures that store key-value pairs. In JavaScript, these are available to us as objects. Maps provide rapid lookup of stored items based on key values and are very common and useful data structures.

# --instructions--

讓我們練習創建我們自己的映射。 因爲 JavaScript 對象提供了比我們在此處編寫的任何內容更有效的映射結構，所以這裏主要是作爲學習的練習。 但是，JavaScript 對象僅向我們提供某些操作。 如果我們想定義自定義操作怎麼辦？ 使用此處提供的 `Map` 對象作爲 JavaScript `object` 的包裝器。 在 Map 對象上創建以下方法和操作：

<ul>
<li><code>add</code> accepts a <code>key, value</code> pair to add to the map.</li>
<li><code>remove</code> 接受一個鍵並刪除關聯的 <code>key, value</code> 對</li>
<li><code>get</code> 接受一個 <code>key</code> 並返回存儲的 <code>value</code></li>
<li><code>has</code> 接受一個 <code>key</code>，如果鍵存在，則返回 <dfn>true</dfn>，否則返回 <dfn>false</dfn>。</li>
<li><code>values</code> 返回映射中所有值的數組</li>
<li><code>size</code> 返回映射中的項目數</li>
<li><code>clear</code> 清空映射</li>
</ul>

# --hints--

叫做 `HashTable` 的數據結構應當存在。

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

`Map` 對象應該有以下方法： `add`, `remove` ,`get`, `has`, `values`, `clear`, 和 `size`。

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

`add`方法應當將元素添加到映射中。

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

`has` 方法，對於已經添加的項目應該返回 `true`, 缺失的項目返回`false` 。

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

`get` 方法應該接受映射的鍵值作爲輸入，並返回相關的值。

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

`values` 方法應該將存儲在映射中的所有的值作爲字符串數組返回。

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

`clear` 方法應該清空映射， `size` 方法應該返回地圖中存在的項目數量。

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
