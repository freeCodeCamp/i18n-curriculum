---
id: 587d825b367417b2b2512c8e
title: ハッシュテーブルを作成する
challengeType: 1
forumTopicId: 301627
dashedName: create-a-hash-table
---

# --description--

このチャレンジでは、ハッシュテーブルについて学びます。 ハッシュテーブルは、連想配列、すなわちキーと値のペアのマッピング (例えば、これまでに学んだオブジェクトやマップ) を実装するために使用されます。 例えば、JavaScript オブジェクトはハッシュテーブルとして実装することができます (実際の実装は実行環境によって異なります)。 ハッシュテーブルの仕組みは、キー入力を受け取り、決定論的方法でこのキーを何らかの数値にハッシュすることです。 この数値は、関連付けられた値が格納される際の実際のキーとして使用されます。 次に、同じキーにアクセスしようとすると、ハッシュ関数はそのキーを処理して同じ数値結果を返し、それは関連付けられた値の検索に使用されます。 これにより、平均ケースでの検索時間は非常に効率的な O(1) になります。

ハッシュテーブルは、指定された範囲内で配列インデックスを生成するハッシュ関数を持つ配列として実装できます。 この方法では、ハッシュ関数と同様に配列サイズの選択が重要です。 例えば、ハッシュ関数が 2 つの異なるキーに対して同じ値を生成したらどうなりますか？ これは衝突と呼ばれます。 衝突を処理する方法の一つは、キーと値のペアを両方ともそのインデックスに格納することです。 その場合、そのどちらかを検索するとき、あなたが探しているキーを見つけるために大量の要素に対して検索を繰り返す必要があります。 優れたハッシュ関数は、高い検索効率を維持するために衝突を最小限に抑えます。

ここではハッシュ法やハッシュテーブル実装を詳しく知る必要はなく、それらの大まかな仕組みを理解すれば十分です。

# --instructions--

ハッシュテーブルの基本的な機能を作成しましょう。 単純なハッシュ関数が既に用意されています。 関数 `hash` に文字列値を渡すと、ストレージのキーとして使用できるハッシュ値が返されます。 このハッシュ値に基づいて要素を `this.collection` オブジェクトに格納します。 `add`、`remove`、`lookup` という 3 つのメソッドを作成してください。 最初のメソッドで、ハッシュテーブルに追加するキーと値のペアを受け入れます。 2 番目のメソッドで、キーを渡すときにキーと値のペアを削除します。 3 番目のメソッドで、キーを受け入れ、関連付けられた値を返すか、キーが存在しない場合は `null` を返します。

衝突を考慮しながらコードを記述してください！

**注:** `remove` メソッドのテストは、`add` メソッドと `lookup` メソッドが正しく実装されるまで成功しません。

# --hints--

有効な `hash` 関数が必要です。

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

`HashTable` データ構造を用意する必要があります。

```js
assert.isDefined(HashTable); 
let newHashTable = new HashTable(); 
assert.isObject(newHashTable); 
```

`HashTable` クラスに `add` メソッドが必要です。

```js
let newHashTable = new HashTable(); 
assert.isFunction(newHashTable.add); 
```

`HashTable` クラスに `lookup` メソッドが必要です。

```js
let newHashTable = new HashTable(); 
assert.isFunction(newHashTable.lookup); 
```

`HashTable` クラスに `remove` メソッドが必要です。

```js
let newHashTable = new HashTable(); 
assert.isFunction(newHashTable.remove); 
```

`add` メソッドはキーと値のペアを追加し、`lookup` メソッドは与えられたキーに関連付けられた値を返す必要があります。

```js
let newHashTable = new HashTable(); 
newHashTable.add('key','value');
assert.strictEqual(newHashTable.lookup('key'),'value'); 
```

`remove` メソッドはキーを入力として受け入れ、関連付けられたキーと値のペアを削除する必要があります。

```js
let hashValue = hash('key');
let newHashTable = new HashTable(); 
newHashTable.add('key','value');
newHashTable.remove('key'); 
assert.notProperty(newHashTable.collection,hashValue); 
```

`remove` メソッドは、キーと値の正しいペアのみを削除する必要があります。

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

要素はハッシュ関数を使用して追加される必要があります。

```js
let newHashTable = new HashTable(); 
called = 0;
newHashTable.add('key1', 'value1')
newHashTable.add('key2', 'value2');
newHashTable.add('key3', 'value3');
assert.strictEqual(called,3); 
```

ハッシュテーブルは衝突を処理する必要があります。

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
