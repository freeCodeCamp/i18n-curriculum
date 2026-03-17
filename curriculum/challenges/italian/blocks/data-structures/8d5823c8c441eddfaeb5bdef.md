---
id: 8d5823c8c441eddfaeb5bdef
title: Creare una struttura dati map
challengeType: 1
forumTopicId: 301629
dashedName: create-a-map-data-structure
---

# --description--

Le prossime sfide tratteranno mappe e tabelle hash. Le mappe sono strutture dati che archiviano coppie chiave-valore. In JavaScript, queste sono disponibili come oggetti. Le mappe permettono una ricerca rapida degli elementi archiviati basandosi sui valori delle chiavi e sono strutture dati molto comuni e utili.

# --instructions--

Facciamo un po’ di pratica creando la nostra mappa. Poiché gli oggetti JavaScript offrono una struttura mappa molto più efficiente di qualsiasi cosa potremmo scrivere qui, questo esercizio è pensato principalmente per imparare. Tuttavia, gli oggetti JavaScript ci forniscono solo alcune operazioni. Cosa succede se volessimo definire operazioni personalizzate? Usa l’oggetto `Map` fornito qui come involucro attorno a un `object` JavaScript. Crea i seguenti metodi e operazioni sull’oggetto Map:

<ul>
<li><code>add</code> accetta una coppia <code>key, value</code> da aggiungere alla mappa.</li>
<li><code>remove</code> accetta una chiave e rimuove la coppia <code>key, value</code> associata</li>
<li><code>get</code> accetta una <code>key</code> e restituisce il <code>value</code> archiviato</li>
<li><code>has</code> accetta una <code>key</code> e restituisce <dfn>true</dfn> se la chiave esiste o <dfn>false</dfn> se non esiste.</li>
<li><code>values</code> restituisce un array di tutti i valori nella mappa</li>
<li><code>size</code> restituisce il numero di elementi nella mappa</li>
<li><code>clear</code> svuota la mappa</li>
</ul>

# --hints--

La struttura dati `Map` dovrebbe esistere.

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

L’oggetto `Map` dovrebbe avere i seguenti metodi: `add`, `remove`, `get`, `has`, `values`, `clear` e `size`.

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

Il metodo `add` dovrebbe aggiungere elementi alla mappa.

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

Il metodo `has` dovrebbe restituire `true` per gli elementi aggiunti e `false` per quelli assenti.

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

Il metodo `get` dovrebbe accettare chiavi come input e restituire i valori associati.

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

Il metodo `values` dovrebbe restituire tutti i valori archiviati nella mappa come stringhe in un array.

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

Il metodo `clear` dovrebbe svuotare la mappa e il metodo `size` dovrebbe restituire il numero di elementi presenti nella mappa.

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
