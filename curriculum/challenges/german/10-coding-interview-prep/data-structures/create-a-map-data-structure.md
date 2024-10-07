---
id: 8d5823c8c441eddfaeb5bdef
title: Erstelle eine Map-Datenstruktur
challengeType: 1
forumTopicId: 301629
dashedName: create-a-map-data-structure
---

# --description--

The next few challenges will cover maps and hash tables. Maps are data structures that store key-value pairs. In JavaScript, these are available to us as objects. Maps provide rapid lookup of stored items based on key values and are very common and useful data structures.

# --instructions--

Lass uns ein wenig üben, unsere eigene Karte zu erstellen. Da JavaScript-Objekte eine viel effizientere Map-Struktur bieten als alles, was wir hier schreiben könnten, ist dies in erster Linie als Lernübung gedacht. JavaScript-Objekte stellen uns jedoch nur bestimmte Operationen zur Verfügung. Was wäre, wenn wir benutzerdefinierte Vorgänge definieren wollten? Verwende das hier bereitgestellte `Map`-Objekt als Wrapper um ein JavaScript `object`. Erstelle die folgenden Methoden und Operationen für das Map-Objekt:

<ul>
<li><code>add</code> accepts a <code>key, value</code> pair to add to the map.</li>
<li><code>remove</code> akzeptiert einen Schlüssel und entfernt das zugehörige <code>key, value</code> Paar</li>
<li><code>get</code> nimmt einen <code>key</code> entgegen und gibt den gespeicherten <code>Wert</code> zurück</li>
<li><code>has</code> akzeptiert ein <code>key</code> und gibt <dfn>true</dfn> zurück, wenn der Schlüssel existiert oder <dfn>false</dfn>, wenn er nicht existiert.</li>
<li><code>values</code> gibt ein Array mit allen Werten in der Map zurück</li>
<li><code>size</code> gibt die Anzahl der Elemente in der Karte zurück</li>
<li><code>clear</code> leert die Karte</li>
</ul>

# --hints--

Die `Map`-Datenstruktur sollte vorhanden sein.

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

Das `Map`-Objekt sollte über die folgenden Methoden verfügen: `add`, `remove`, `get`, `has`, `values`, `clear`, und `size`.

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

Die Methode `add` soll Elemente zur Karte hinzufügen.

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

Die Methode `has` sollte `true` für hinzugefügte Elemente und `false` für fehlende Elemente zurückgeben.

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

Die `get` Methode sollte Schlüssel als Eingabe akzeptieren und die zugehörigen Werte zurückgeben.

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

Die Methode `values` sollte alle in der Map gespeicherten Werte als Strings in einem Array zurückgeben.

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

Die `clear`-Methode sollte die Karte leeren und die `size`-Methode sollte die Anzahl der in der Karte vorhandenen Elemente zurückgeben.

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
