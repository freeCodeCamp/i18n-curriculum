---
id: 8d1323c8c441eddfaeb5bdef
title: Erstelle eine Set-Klasse
challengeType: 1
forumTopicId: 301632
dashedName: create-a-set-class
---

# --description--

In this exercise we are going to create a class named `Set` to emulate an abstract data structure called "set". A set is like an array, but it cannot contain duplicate values. The typical use for a set is to simply check for the presence of an item. We can see how the ES6 `Set` object works in the example below:

```js
const set1 = new Set([1, 2, 3, 5, 5, 2, 0]);
console.log(set1);
// output: {1, 2, 3, 5, 0}
console.log(set1.has(1));
// output: true
console.log(set1.has(6));
// output: false
```

Zunächst erstellen wir eine Add-Methode, die einen Wert zu unserer Mengensammlung hinzufügt, sofern der Wert nicht bereits in der Menge vorhanden ist. Dann erstellen wir eine remove-Methode, die einen Wert aus der Set-Sammlung entfernt, wenn er bereits existiert. Und schließlich erstellen wir eine size-Methode, die die Anzahl der Elemente in der Set-Sammlung zurückgibt.

# --instructions--

Erstelle eine `add`-Methode, die einen eindeutigen Wert zur Set-Sammlung hinzufügt und `true` zurückgibt, wenn der Wert erfolgreich hinzugefügt wurde, und andernfalls `false`.

Erstelle eine `remove`-Methode, die einen Wert annimmt und prüft, ob er in der Menge vorhanden ist. Wenn er das tut, dann sollte diese Methode ihn aus der Set-Sammlung entfernen und `true` zurückgeben. Er sollte sonst `false` zurückgeben. Erstelle eine `size`-Methode, die die Größe der Set-Sammlung zurückgibt.

# --hints--

Deine `Set`-Klasse sollte eine `add`-Methode haben.

```js
assert(
  (function () {
    var test = new Set();
    return typeof test.add === 'function';
  })()
);
```

Deine `add` Methode sollte keine doppelten Werte hinzufügen.

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

Deine `add`-Methode sollte `true` zurückgeben, wenn ein Wert erfolgreich hinzugefügt wurde.

```js
assert(
  (function () {
    var test = new Set();
    var result = test.add('a');
    return result != undefined && result === true;
  })()
);
```

Deine `add`-Methode sollte `false` zurückgeben, wenn ein doppelter Wert hinzugefügt wird.

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

Deine `Set` Klasse sollte eine `remove` Methode haben.

```js
assert(
  (function () {
    var test = new Set();
    return typeof test.remove === 'function';
  })()
);
```

Deine `remove` Methode sollte nur Elemente entfernen, die in der Menge vorhanden sind.

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

Deine `remove` Methode sollte das angegebene Element aus der Menge entfernen.

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

Deine `Set`-Klasse sollte eine `size`-Methode haben.

```js
assert(
  (function () {
    var test = new Set();
    return typeof test.size === 'function';
  })()
);
```

Die Methode `size` sollte die Anzahl der Elemente in der Sammlung zurückgeben.

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
