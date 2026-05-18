---
id: 8d1323c8c441eddfaeb5bdef
title: Eine Set-Klasse erstellen
challengeType: 1
forumTopicId: 301632
dashedName: create-a-set-class
---

# --description--

In dieser Aufgabe erstellen wir eine Klasse namens `Set`, um eine abstrakte Datenstruktur namens „Set“ zu simulieren. Ein Set ist wie ein Array, kann aber keine doppelten Werte enthalten. Die typische Verwendung eines Sets besteht darin, einfach zu überprüfen, ob ein Element vorhanden ist. Im folgenden Beispiel sehen wir, wie das ES6 `Set`-Objekt funktioniert:

```js
const set1 = new Set([1, 2, 3, 5, 5, 2, 0]);
console.log(set1);
// output: {1, 2, 3, 5, 0}
console.log(set1.has(1));
// output: true
console.log(set1.has(6));
// output: false
```

Zuerst erstellen wir eine add-Methode, die einen Wert zu unserer Set-Sammlung hinzufügt, solange der Wert noch nicht im Set vorhanden ist. Dann erstellen wir eine remove-Methode, die einen Wert aus der Set-Sammlung entfernt, falls er bereits vorhanden ist. Schließlich erstellen wir eine size-Methode, die die Anzahl der Elemente in der Set-Sammlung zurückgibt.

# --instructions--

Erstellen Sie eine `add`-Methode, die einen eindeutigen Wert zur Set-Sammlung hinzufügt und `true` zurückgibt, wenn der Wert erfolgreich hinzugefügt wurde, und andernfalls `false`.

Erstellen Sie eine `remove`-Methode, die einen Wert akzeptiert und überprüft, ob er im Set vorhanden ist. Falls ja, sollte diese Methode ihn aus der Set-Sammlung entfernen und `true` zurückgeben. Andernfalls sollte sie `false` zurückgeben. Erstellen Sie eine `size`-Methode, die die Größe der Set-Sammlung zurückgibt.

# --hints--

Ihre `Set`-Klasse sollte eine `add`-Methode haben.

```js
assert(
  (function () {
    var test = new Set();
    return typeof test.add === 'function';
  })()
);
```

Ihre `add`-Methode sollte keine doppelten Werte hinzufügen.

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

Ihre `add`-Methode sollte `true` zurückgeben, wenn ein Wert erfolgreich hinzugefügt wurde.

```js
assert(
  (function () {
    var test = new Set();
    var result = test.add('a');
    return result != undefined && result === true;
  })()
);
```

Ihre `add`-Methode sollte `false` zurückgeben, wenn ein doppelter Wert hinzugefügt wird.

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

Ihre `Set`-Klasse sollte eine `remove`-Methode haben.

```js
assert(
  (function () {
    var test = new Set();
    return typeof test.remove === 'function';
  })()
);
```

Ihre `remove`-Methode sollte nur Elemente entfernen, die im Set vorhanden sind.

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

Ihre `remove`-Methode sollte das angegebene Element aus dem Set entfernen.

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

Ihre `Set`-Klasse sollte eine `size`-Methode haben.

```js
assert(
  (function () {
    var test = new Set();
    return typeof test.size === 'function';
  })()
);
```

Die `size`-Methode sollte die Anzahl der Elemente in der Sammlung zurückgeben.

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
