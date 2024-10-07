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

Має існувати структура даних `HashTable`.

```js
assert(
  (function () {
    var test = false;
    if (typeof HashTable !== 'undefined') {
      test = new HashTable();
    }
    return typeof test === 'object';
  })()
);
```

Структура `HashTable` повинна мати метод `add`.

```js
assert(
  (function () {
    var test = false;
    if (typeof HashTable !== 'undefined') {
      test = new HashTable();
    }
    return typeof test.add === 'function';
  })()
);
```

Структура `HashTable` повинна мати метод `lookup`.

```js
assert(
  (function () {
    var test = false;
    if (typeof HashTable !== 'undefined') {
      test = new HashTable();
    }
    return typeof test.lookup === 'function';
  })()
);
```

Структура `HashTable` повинна мати метод `remove`.

```js
assert(
  (function () {
    var test = false;
    if (typeof HashTable !== 'undefined') {
      test = new HashTable();
    }
    return typeof test.remove === 'function';
  })()
);
```

Метод `add` має додавати пари ключ-значення, а метод `lookup` має повертати значення, пов’язані із заданим ключем.

```js
assert(
  (function () {
    var test = false;
    if (typeof HashTable !== 'undefined') {
      test = new HashTable();
    }
    test.add('key', 'value');
    return test.lookup('key') === 'value';
  })()
);
```

Метод `remove` має приймати ключ як вхідні дані та видаляти пов’язану пару ключ-значення.

```js
assert(
  (function () {
    var test = false;
    var hashValue = hash('key');
    if (typeof HashTable !== 'undefined') {
      test = new HashTable();
    }
    test.add('key', 'value');

    test.remove('key');
    return !test.collection.hasOwnProperty(hashValue);
  })()
);
```

Метод `remove` має видаляти лише правильну пару ключ-значення.

```js
assert(
  (function () {
    var test = false;
    var hashValue = hash('key');
    if (typeof HashTable !== 'undefined') {
      test = new HashTable();
    }
    test.add('key', 'value');
    test.add('yek', 'value');
    test.add('altKey', 'value');

    test.remove('yek');
    if (test.lookup('yek') || !test.lookup('key') || !test.lookup('altKey')) {
      return false;
    }

    test.remove('key');

    return !test.collection.hasOwnProperty(hashValue) && test.lookup('altKey');
  })()
);
```

Елементи мають бути додані за допомогою хеш-функції.

```js
assert(
  (function () {
    var test = false;
    if (typeof HashTable !== 'undefined') {
      test = new HashTable();
    }
    called = 0;
    test.add('key1', 'value1');
    test.add('key2', 'value2');
    test.add('key3', 'value3');
    return called >= 3 && called % 3 === 0;
  })()
);
```

Хеш-таблиці мають обробляти колізії.

```js
assert(
  (function () {
    var test = false;
    if (typeof HashTable !== 'undefined') {
      test = new HashTable();
    }
    called = 0;
    test.add('key1', 'value1');
    test.add('1key', 'value2');
    test.add('ke1y', 'value3');
    return (
      test.lookup('key1') === 'value1' &&
      test.lookup('1key') == 'value2' &&
      test.lookup('ke1y') == 'value3'
    );
  })()
);
```

# --seed--

## --before-user-code--

```js
var called = 0;
var hash = string => {
  called++;
  var hash = 0;
  for (var i = 0; i < string.length; i++) {
    hash += string.charCodeAt(i);
  }
  return hash;
};
```

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
