---
id: 587d825b367417b2b2512c8e
title: Erstelle eine Hashtabelle
challengeType: 1
forumTopicId: 301627
dashedName: create-a-hash-table
---

# --description--

In this challenge we will learn about hash tables. A Hash table is used to implement associative arrays, or mappings of key-value pairs, like the objects and Maps we have just been studying. A JavaScript object could be implemented as a hash table, for instance (its actual implementation will depend on the environment it's running in). The way a hash table works is that it takes a key input and hashes this key in a deterministic way to some numerical value. This numerical value is then used as the actual key the associated value is stored by. Then, if you try to access the same key again, the hashing function will process the key, return the same numerical result, which will then be used to look up the associated value. This provides very efficient O(1) lookup time on average.

Hashtabellen können als Arrays mit Hashfunktion implementiert werden, so werden Array-Indexe innerhalb eines bestimmten Bereichs erzeugt. Hierbei ist die Wahl der Array-Größe ebenso wichtig wie die der Hashfunktion. Was passiert, wenn die Hashfunktion den gleichen Wert für zwei unterschiedliche Schlüssel erzeugt? Dies nennt man eine Kollision. Eine Möglichkeit zur Bewältigung von Kollisionen besteht darin, beide Schlüssel-Wert-Paare in diesem Index zu speichern. Beim Aufruf eines dieser Paare müsstest du deshalb die Menge aller Elemente durchlaufen, um den gewünschten Schlüssel zu finden. Eine gute Hashfunktion minimiert Kollisionen, um effiziente Suchzeiten zu gewährleisten.

Wir werden uns hier jedoch nicht weiter mit den Einzelheiten des Hashings oder der Implementierung von Hashtabellen beschäftigen – wir werden uns auf ein grundsätzliches Verständnis dieser beschränken.

# --instructions--

Lass uns die grundlegende Funktionalität einer Hashtabelle erstellen. Wir haben eine einfache Hashfunktion für dich erstellt. Übergibst du einen String an die `hash`-Funktion, wird diese einen verschlüsselten Wert zurückgeben, den du dann als Schlüssel zur Speicherung verwenden kannst. Speichere Elemente basiert auf diesem verschlüsselten Wert im Objekt `this.collection`. Erstelle diese drei Methoden: `add`, `remove` und `lookup`. Erstere sollte als Argument ein Schlüssel-Wert-Paar, das zur Hashtabelle hinzugefügt werden soll, akzeptieren. Die Zweite sollte bei Übergabe eines Schlüssels das zugehörige Schlüssel-Wert-Paar entfernen. Letztere sollte als Argument einen Schlüssel akzeptieren und den zugehörigen Wert zurückgeben – oder `null`, ist dieser nicht vorhanden.

Achte beim Schreiben deines Codes auf mögliche Kollisionen!

**Hinweis:** Die `remove`-Methodentests werden erst erfolgreich durchlaufen, wenn die Methoden `add` und `lookup` richtig implementiert wurden.

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

Die `HashTable`-Datenstruktur sollte vorhanden sein.

```js
assert.isDefined(HashTable); 
let newHashTable = new HashTable(); 
assert.isObject(newHashTable); 
```

Der `HashTable` sollte eine `add`-Methode enthalten.

```js
let newHashTable = new HashTable(); 
assert.isFunction(newHashTable.add); 
```

Der `HashTable` sollte eine `lookup`-Methode enthalten.

```js
let newHashTable = new HashTable(); 
assert.isFunction(newHashTable.lookup); 
```

Der `HashTable` sollte eine `remove`-Methode enthalten.

```js
let newHashTable = new HashTable(); 
assert.isFunction(newHashTable.remove); 
```

Die `add`-Methode sollte Schlüssel-Wert-Paare hinzufügen, die `lookup`-Methode sollte die zugehörigen Werte eines übergebenen Schlüssels zurückgeben.

```js
let newHashTable = new HashTable(); 
newHashTable.add('key','value');
assert.strictEqual(newHashTable.lookup('key'),'value'); 
```

Die `remove`-Methode sollte einen Schlüssel als Argument akzeptieren und das zugehörige Schlüssel-Wert-Paar entfernen.

```js
let hashValue = hash('key');
let newHashTable = new HashTable(); 
newHashTable.add('key','value');
newHashTable.remove('key'); 
assert.notProperty(newHashTable.collection,hashValue); 
```

Die `remove`-Methode sollte ausschließlich das richtige Schlüssel-Wert-Paar entfernen.

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

Elemente sollten über die Hashfunktion hinzugefügt werden.

```js
let newHashTable = new HashTable(); 
called = 0;
newHashTable.add('key1', 'value1')
newHashTable.add('key2', 'value2');
newHashTable.add('key3', 'value3');
assert.strictEqual(called,3); 
```

Die Hashtabelle sollte Kollisionen verarbeiten können.

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
