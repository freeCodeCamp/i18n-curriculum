---
id: 8d5823c8c441eddfaeb5bdef
title: створити структуру даних map
challengeType: 1
forumTopicId: 301629
dashedName: create-a-map-data-structure
---

# --description--

Наступні кілька завдань охоплюватимуть map і хеш-таблиці. Map — це структури даних, які зберігають пари ключ-значення. У JavaScript вони доступні нам як об’єкти. Map забезпечують швидкий пошук збережених елементів за ключами і є дуже поширеними та корисними структурами даних.

# --instructions--

Давайте потренуємося створювати власний map. Оскільки об’єкти JavaScript забезпечують набагато ефективнішу структуру map, ніж будь-яка, яку ми могли б тут написати, це завдання призначене насамперед для навчання. Однак об’єкти JavaScript надають нам лише певні операції. Що, якби ми хотіли визначити кастомні операції? Використайте об’єкт `Map`, наданий тут, як оболонку навколо JavaScript `object`. Створіть такі методи та операції для об’єкта Map:

<ul>
<li><code>add</code> приймає пару <code>key, value</code> для додавання до map.</li>
<li><code>remove</code> приймає ключ і видаляє пов’язану пару <code>key, value</code></li>
<li><code>get</code> приймає <code>key</code> і повертає збережене <code>value</code></li>
<li><code>has</code> приймає <code>key</code> і повертає <dfn>true</dfn>, якщо ключ існує, або <dfn>false</dfn>, якщо ні.</li>
<li><code>values</code> повертає масив усіх значень у map</li>
<li><code>size</code> повертає кількість елементів у map</li>
<li><code>clear</code> очищує map</li>
</ul>

# --hints--

Структура даних `Map` має існувати.

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

Об’єкт `Map` має мати такі методи: `add`, `remove`, `get`, `has`, `values`, `clear` та `size`.

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

Метод `add` має додавати елементи до map.

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

Метод `has` має повертати `true` для доданих елементів і `false` для відсутніх.

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

Метод `get` має приймати ключі як вхідні дані і повертати пов’язані значення.

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

Метод `values` має повертати всі значення, збережені в map, як рядки в масиві.

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

Метод `clear` має очищувати map, а метод `size` має повертати кількість елементів, що присутні в map.

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
