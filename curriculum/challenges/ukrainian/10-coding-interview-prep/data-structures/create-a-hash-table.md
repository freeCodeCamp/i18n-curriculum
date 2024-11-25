---
id: 587d825b367417b2b2512c8e
title: Створіть хеш-таблицю
challengeType: 1
forumTopicId: 301627
dashedName: create-a-hash-table
---

# --description--

In this challenge we will learn about hash tables. A Hash table is used to implement associative arrays, or mappings of key-value pairs, like the objects and Maps we have just been studying. A JavaScript object could be implemented as a hash table, for instance (its actual implementation will depend on the environment it's running in). The way a hash table works is that it takes a key input and hashes this key in a deterministic way to some numerical value. This numerical value is then used as the actual key the associated value is stored by. Then, if you try to access the same key again, the hashing function will process the key, return the same numerical result, which will then be used to look up the associated value. This provides very efficient O(1) lookup time on average.

Хеш-таблиці можна реалізувати як масиви, для яких хеш-функції будуть генерувати індекси відповідно до заданого діапазону. Для цього методу важливо визначити розмір масиву, а також саму хеш-функцію. Наприклад, що робити, якщо хеш-функція генерує однакові значення для двох різних ключів? Такий випадок називається колізією. Як варіант, можна зберегти обидві пари ключ-значення за одним індексом. А при пошуку потрібно буде ітерувати над елементами, щоб знайти потрібний ключ. Хороша хеш-функція мінімізує колізії, щоб зберегти ефективний час пошуку.

Поки що ми не будемо детально розглядати хешування чи реалізацію хеш-таблиць, але спробуємо зрозуміти загальний принцип їхньої роботи.

# --instructions--

Створимо основні функції хеш-таблиці. Ми вже створили просту хеш-функцію. Ви можете передати значення рядка до функції `hash` і вона поверне хешоване значення, яке можна використати як ключ для зберігання. Збережіть елементи на основі цього хешованого значення в об’єкті `this.collection`. Створіть такі три методи: `add`, `remove` та `lookup`. Перший метод має приймати пару ключ-значення, яку потрібно додати до хеш-таблиці. Другий метод має видалити пару ключ-значення, якщо передано ключ. Третій метод має приймати ключ та повернути відповідне значення або `null`, якщо ключ відсутній.

Обов’язково напишіть код з врахуванням колізій!

**Зауважте:** тестування методу `remove` не працюватиме, допоки методи `add` та `lookup` не будуть реалізовані правильно.

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

Має існувати структура даних `HashTable`.

```js
assert.isDefined(HashTable); 
let newHashTable = new HashTable(); 
assert.isObject(newHashTable); 
```

Структура `HashTable` повинна мати метод `add`.

```js
let newHashTable = new HashTable(); 
assert.isFunction(newHashTable.add); 
```

Структура `HashTable` повинна мати метод `lookup`.

```js
let newHashTable = new HashTable(); 
assert.isFunction(newHashTable.lookup); 
```

Структура `HashTable` повинна мати метод `remove`.

```js
let newHashTable = new HashTable(); 
assert.isFunction(newHashTable.remove); 
```

Метод `add` має додавати пари ключ-значення, а метод `lookup` має повертати значення, пов’язані із заданим ключем.

```js
let newHashTable = new HashTable(); 
newHashTable.add('key','value');
assert.strictEqual(newHashTable.lookup('key'),'value'); 
```

Метод `remove` має приймати ключ як вхідні дані та видаляти пов’язану пару ключ-значення.

```js
let hashValue = hash('key');
let newHashTable = new HashTable(); 
newHashTable.add('key','value');
newHashTable.remove('key'); 
assert.notProperty(newHashTable.collection,hashValue); 
```

Метод `remove` має видаляти лише правильну пару ключ-значення.

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

Елементи мають бути додані за допомогою хеш-функції.

```js
let newHashTable = new HashTable(); 
called = 0;
newHashTable.add('key1', 'value1')
newHashTable.add('key2', 'value2');
newHashTable.add('key3', 'value3');
assert.strictEqual(called,3); 
```

Хеш-таблиці мають обробляти колізії.

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
