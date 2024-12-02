---
id: 587d825b367417b2b2512c8e
title: 創建一個哈希表
challengeType: 1
forumTopicId: 301627
dashedName: create-a-hash-table
---

# --description--

In this challenge we will learn about hash tables. A Hash table is used to implement associative arrays, or mappings of key-value pairs, like the objects and Maps we have just been studying. A JavaScript object could be implemented as a hash table, for instance (its actual implementation will depend on the environment it's running in). The way a hash table works is that it takes a key input and hashes this key in a deterministic way to some numerical value. This numerical value is then used as the actual key the associated value is stored by. Then, if you try to access the same key again, the hashing function will process the key, return the same numerical result, which will then be used to look up the associated value. This provides very efficient O(1) lookup time on average.

哈希表可以實現爲具有哈希函數的數組，從而生成指定範圍內的數組索引。 在這種方法中，數組大小的選擇很重要，哈希函數的選擇也很重要。 例如，如果哈希函數爲兩個不同的鍵生成相同的值，該怎麼辦？ 這稱爲衝突。 處理衝突的一種方法是僅將兩個鍵值對存儲在該索引處。 然後，在查找其中任何一個時，你將不得不遍歷該位置上的所有項目來找到你要查找的鍵。 良好的哈希函數可最大限度地減少衝突，從而保持有效的搜索時間。

在這裏，我們不會關注哈希或哈希表實現的細節。 我們只是試圖對它們如何運作有一種普遍的認識。

# --instructions--

讓我們創建哈希表的基本功能。 我們創建了一個簡單的哈希函數供你使用。 你可以將字符串值傳遞給函數 `hash`，它將返回一個哈希值，你可以將其用作存儲鍵。 在 `this.collection` 對象中根據此哈希值存儲項目。 創建這三種方法：`add`、`remove` 和 `lookup`。 第一個函數應該接受一個鍵值對來添加到哈希表。 第二個應該根據給定的鍵刪除鍵值對。 第三個應該接受一個鍵並返回相應的值，如果該鍵不存在則返回 `null`。

請務必在編寫代碼時解決衝突問題！

**注意：**在正確實現 `add` 和 `lookup` 函數前，`remove` 函數的測試不會通過。

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

叫做 `HashTable` 的數據接口應當存在。

```js
assert.isDefined(HashTable); 
let newHashTable = new HashTable(); 
assert.isObject(newHashTable); 
```

哈希表應當包含一個`add` 方法。

```js
let newHashTable = new HashTable(); 
assert.isFunction(newHashTable.add); 
```

哈希表，又叫 `HashTable` ，應當包含一個 `lookup` ，即查詢的方法。

```js
let newHashTable = new HashTable(); 
assert.isFunction(newHashTable.lookup); 
```

哈希表 `HashTable` 應當包含一個 `remove`，即刪除的方法。

```js
let newHashTable = new HashTable(); 
assert.isFunction(newHashTable.remove); 
```

哈希表中的新增，即 `add` 方法，應當存在一個鍵值對，而 查找，即`lookup` 方法應當返回一個由特定的key關聯的值。

```js
let newHashTable = new HashTable(); 
newHashTable.add('key','value');
assert.strictEqual(newHashTable.lookup('key'),'value'); 
```

刪除，即`remove`方法，應當接受一個key作爲輸入，並且刪除對應的鍵值對。

```js
let hashValue = hash('key');
let newHashTable = new HashTable(); 
newHashTable.add('key','value');
newHashTable.remove('key'); 
assert.notProperty(newHashTable.collection,hashValue); 
```

`remove` 方法應該刪除正確的鍵值對。

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

應使用哈希函數添加項目。

```js
let newHashTable = new HashTable(); 
called = 0;
newHashTable.add('key1', 'value1')
newHashTable.add('key2', 'value2');
newHashTable.add('key3', 'value3');
assert.strictEqual(called,3); 
```

哈希表應該處理衝突。

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
