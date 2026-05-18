---
id: 8d5823c8c441eddfaeb5bdef
title: Eine Map-Datenstruktur erstellen
challengeType: 1
forumTopicId: 301629
dashedName: create-a-map-data-structure
---

# --description--

Die nächsten Aufgaben behandeln Maps und Hashtabellen. Maps sind Datenstrukturen, die Schlüssel-Wert-Paare speichern. In JavaScript stehen uns diese als Objekte zur Verfügung. Maps ermöglichen eine schnelle Suche nach gespeicherten Elementen anhand von Schlüsseln und sind sehr verbreitete und nützliche Datenstrukturen.

# --instructions--

Lassen Sie uns üben, eine eigene Map zu erstellen. Da JavaScript-Objekte eine wesentlich effizientere Map-Struktur bieten als alles, was wir hier schreiben könnten, dient dies hauptsächlich als Lernübung. Allerdings bieten JavaScript-Objekte nur bestimmte Operationen. Was, wenn wir benutzerdefinierte Operationen definieren möchten? Verwenden Sie das hier bereitgestellte `Map`-Objekt als Wrapper um ein JavaScript-`object`. Erstellen Sie die folgenden Methoden und Operationen im Map-Objekt:

<ul>
<li><code>add</code> akzeptiert ein <code>key, value</code>-Paar, das zur Map hinzugefügt wird.</li>
<li><code>remove</code> akzeptiert einen Schlüssel und entfernt das zugehörige <code>key, value</code>-Paar.</li>
<li><code>get</code> akzeptiert einen <code>key</code> und gibt den gespeicherten <code>value</code> zurück.</li>
<li><code>has</code> akzeptiert einen <code>key</code> und gibt <dfn>true</dfn> zurück, wenn der Schlüssel existiert, oder <dfn>false</dfn>, wenn nicht.</li>
<li><code>values</code> gibt ein Array aller Werte in der Map zurück.</li>
<li><code>size</code> gibt die Anzahl der Elemente in der Map zurück.</li>
<li><code>clear</code> leert die Map.</li>
</ul>

# --hints--

Die `Map`-Datenstruktur sollte existieren.

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

Das `Map`-Objekt sollte die folgenden Methoden haben: `add`, `remove`, `get`, `has`, `values`, `clear` und `size`.

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

Die `add`-Methode sollte Elemente zur Map hinzufügen.

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

Die `has`-Methode sollte `true` für hinzugefügte Elemente und `false` für nicht vorhandene Elemente zurückgeben.

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

Die `get`-Methode sollte Schlüssel als Eingabe akzeptieren und die zugehörigen Werte zurückgeben.

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

Die `values`-Methode sollte alle in der Map gespeicherten Werte als Strings in einem Array zurückgeben.

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

Die `clear`-Methode sollte die Map leeren und die `size`-Methode sollte die Anzahl der in der Map vorhandenen Elemente zurückgeben.

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
