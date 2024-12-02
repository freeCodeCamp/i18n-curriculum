---
id: 587d825b367417b2b2512c8e
title: 创建一个哈希表
challengeType: 1
forumTopicId: 301627
dashedName: create-a-hash-table
---

# --description--

In this challenge we will learn about hash tables. A Hash table is used to implement associative arrays, or mappings of key-value pairs, like the objects and Maps we have just been studying. A JavaScript object could be implemented as a hash table, for instance (its actual implementation will depend on the environment it's running in). The way a hash table works is that it takes a key input and hashes this key in a deterministic way to some numerical value. This numerical value is then used as the actual key the associated value is stored by. Then, if you try to access the same key again, the hashing function will process the key, return the same numerical result, which will then be used to look up the associated value. This provides very efficient O(1) lookup time on average.

哈希表可以实现为具有哈希函数的数组，从而生成指定范围内的数组索引。 在这种方法中，数组大小的选择很重要，哈希函数的选择也很重要。 例如，如果哈希函数为两个不同的键生成相同的值，该怎么办？ 这称为冲突。 处理冲突的一种方法是仅将两个键值对存储在该索引处。 然后，在查找其中任何一个时，你将不得不遍历该位置上的所有项目来找到你要查找的键。 良好的哈希函数可最大限度地减少冲突，从而保持有效的搜索时间。

在这里，我们不会关注哈希或哈希表实现的细节。 我们只是试图对它们如何运作有一种普遍的认识。

# --instructions--

让我们创建哈希表的基本功能。 我们创建了一个简单的哈希函数供你使用。 你可以将字符串值传递给函数 `hash`，它将返回一个哈希值，你可以将其用作存储键。 在 `this.collection` 对象中根据此哈希值存储项目。 创建这三种方法：`add`、`remove` 和 `lookup`。 第一个函数应该接受一个键值对来添加到哈希表。 第二个应该根据给定的键删除键值对。 第三个应该接受一个键并返回相应的值，如果该键不存在则返回 `null`。

请务必在编写代码时解决冲突问题！

**注意：**在正确实现 `add` 和 `lookup` 函数前，`remove` 函数的测试不会通过。

# --hints--

The `hash` function should be valid.

```js
let calls = 0;
const ourHash = string => {
  calls++;
  let hashCode = 0;
  for (let i = 0; i < string.length; i++) {
    hashCode += string.charCodeAt(i);
  }
  return hashCode;
};

assert.strictEqual(hash('yek'),ourHash('yek'));

assert.strictEqual(hash('key'),ourHash('key'));
assert.strictEqual(hash('key1'),ourHash('key1'));
assert.strictEqual(hash('key2'),ourHash('key2'));
assert.strictEqual(hash('key3'),ourHash('key3'));

assert.strictEqual(hash('1key'),ourHash('1key'));
assert.strictEqual(hash('ke1y'),ourHash('ke1y'));
assert.strictEqual(hash('altKey'),ourHash('altKey'));

assert.strictEqual(called,calls); 
```

叫做 `HashTable` 的数据接口应当存在。

```js
assert.isDefined(HashTable); 
let newHashTable = new HashTable(); 
assert.isObject(newHashTable); 
```

哈希表应当包含一个`add` 方法。

```js
let newHashTable = new HashTable(); 
assert.isFunction(newHashTable.add); 
```

哈希表，又叫 `HashTable` ，应当包含一个 `lookup` ，即查询的方法。

```js
let newHashTable = new HashTable(); 
assert.isFunction(newHashTable.lookup); 
```

哈希表 `HashTable` 应当包含一个 `remove`，即删除的方法。

```js
let newHashTable = new HashTable(); 
assert.isFunction(newHashTable.remove); 
```

哈希表中的新增，即 `add` 方法，应当存在一个键值对，而 查找，即`lookup` 方法应当返回一个由特定的key关联的值。

```js
let newHashTable = new HashTable(); 
newHashTable.add('key','value');
assert.strictEqual(newHashTable.lookup('key'),'value'); 
```

删除，即`remove`方法，应当接受一个key作为输入，并且删除对应的键值对。

```js
let hashValue = hash('key');
let newHashTable = new HashTable(); 
newHashTable.add('key','value');
newHashTable.remove('key'); 
assert.notProperty(newHashTable.collection,hashValue); 
```

`remove` 方法应该删除正确的键值对。

```js
let newHashTable = new HashTable(); 
let hashValue = hash('key');
newHashTable.add('key','value');
newHashTable.add('yek','value');
newHashTable.add('altKey','value');
newHashTable.remove('yek');

assert.notExists(newHashTable.lookup('yek'));
assert.exists(newHashTable.lookup('altKey'));
assert.exists(newHashTable.lookup('key'));

newHashTable.remove('key');

assert.notProperty(newHashTable.collection,hashValue); 
assert.exists(newHashTable.lookup('altKey'));

```

应使用哈希函数添加项目。

```js
let newHashTable = new HashTable(); 
called = 0;
newHashTable.add('key1', 'value1')
newHashTable.add('key2', 'value2');
newHashTable.add('key3', 'value3');
assert.strictEqual(called,3); 
```

哈希表应该处理冲突。

```js
let newHashTable = new HashTable(); 
called = 0;
newHashTable.add('key1','value1');
newHashTable.add('1key', 'value2'); 
newHashTable.add('ke1y', 'value3'); 
assert.strictEqual(newHashTable.lookup('key1'),'value1');
assert.strictEqual(newHashTable.lookup('1key'),'value2');
assert.strictEqual(newHashTable.lookup('ke1y'),'value3');
```

# --seed--

## --seed-contents--

```js
var called = 0;
var hash = string => {
  called++;
  var hashed = 0;
  for (var i = 0; i < string.length; i++) {
    hashed += string.charCodeAt(i);
  }
  return hashed;
};
var HashTable = function() {
  this.collection = {};
  // Only change code below this line

  // Only change code above this line
};
```

# --solutions--

```js
var called = 0;
var hash = (string) => {
  called++;
  var hash = 0;
  for (var i = 0; i < string.length; i++) { hash += string.charCodeAt(i); }
  return hash;
};
var HashTable = function() {
  this.collection = {};
  // Only change code below this line

  this.add = function(key, val) {
    var theHash = hash(key);
    if (!this.collection.hasOwnProperty(theHash)) {
      this.collection[theHash] = {};
    }
    this.collection[theHash][key] = val;
  }

  this.remove = function(key) {
    var theHash = hash(key);
    var hashedObj = this.collection[theHash];
    if (hashedObj.hasOwnProperty(key)) {
      delete hashedObj[key];
    }
    if (!Object.keys(hashedObj).length) {
      delete this.collection[theHash];
    }
  }

  this.lookup = function(key) {
    var theHash = hash(key);
    if (this.collection.hasOwnProperty(theHash)) {
      return this.collection[theHash][key];
    }
    return null
  }
  // Only change code above this line
};
```
