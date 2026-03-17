---
id: 8d1323c8c441eddfaeb5bdef
title: створити клас множини
challengeType: 1
forumTopicId: 301632
dashedName: create-a-set-class
---

# --description--

У цьому завданні ми створимо клас із назвою `Set`, щоб імітувати абстрактну структуру даних, яка називається «множина». Множина схожа на масив, але не може містити повторюваних значень. Типове використання множини — просто перевірити наявність елемента. Ми можемо побачити, як працює об’єкт ES6 `Set` у прикладі нижче:

```js
const set1 = new Set([1, 2, 3, 5, 5, 2, 0]);
console.log(set1);
// output: {1, 2, 3, 5, 0}
console.log(set1.has(1));
// output: true
console.log(set1.has(6));
// output: false
```

Спочатку ми створимо метод add, який додаватиме значення до нашої колекції множини, якщо такого значення ще немає в множині. Потім створимо метод remove, який видалятиме значення з колекції множини, якщо воно там є. І нарешті, створимо метод size, який повертатиме число елементів у колекції множини.

# --instructions--

Створіть метод `add`, який додаватиме унікальне значення до колекції множини і повертатиме `true`, якщо значення було успішно додано, інакше — `false`.

Створіть метод `remove`, який прийматиме значення і перевірятиме, чи існує воно в множині. Якщо так, цей метод має видалити його з колекції множини і повернути `true`. Інакше він має повернути `false`. Створіть метод `size`, який повертатиме розмір колекції множини.

# --hints--

Ваш клас `Set` має мати метод `add`.

```js
assert(
  (function () {
    var test = new Set();
    return typeof test.add === 'function';
  })()
);
```

Ваш метод `add` не повинен додавати повторювані значення.

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

Ваш метод `add` має повертати `true`, коли значення було успішно додано.

```js
assert(
  (function () {
    var test = new Set();
    var result = test.add('a');
    return result != undefined && result === true;
  })()
);
```

Ваш метод `add` має повертати `false`, коли додається повторюване значення.

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

Ваш клас `Set` має мати метод `remove`.

```js
assert(
  (function () {
    var test = new Set();
    return typeof test.remove === 'function';
  })()
);
```

Ваш метод `remove` має видаляти лише ті елементи, які присутні в множині.

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

Ваш метод `remove` має видаляти заданий елемент із множини.

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

Ваш клас `Set` має мати метод `size`.

```js
assert(
  (function () {
    var test = new Set();
    return typeof test.size === 'function';
  })()
);
```

Метод `size` має повертати число елементів у колекції.

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
