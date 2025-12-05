---
id: 8d5823c8c441eddfaeb5bdef
title: Crea una Estructura de Datos de Mapa
challengeType: 1
forumTopicId: 301629
dashedName: create-a-map-data-structure
---

# --description--

Los siguientes desafíos cubrirán los mapas y tablas hash. Los mapas son estructuras de datos que almacenan pares clave-valor. En JavaScript, estos están disponibles como objetos. Los mapas proveen una búsqueda rápida de elementos almacenados basados en valores de clave y son estructuras de datos muy comunes y útiles.

# --instructions--

Vamos a adquirir práctica creando nuestro propio mapa. Debido a que los objetos JavaScript proveen una estructura de mapa mucho más eficiente que lo que podríamos escribir aquí, esto pretende ser un ejercicio principalemente de aprendizaje. Sin embargo, los objetos JavaScript solamente proveen ciertas operaciones. ¿Qué sucedería sin quisiéramos definir las operaciones personalizadas? Usa el objeto `Map` proporcionado aquí como un envoltorio alrededor de un JavaScript `object`. Crea los siguientes métodos y operaciones en el objeto Map:

<ul>
<li><code>add</code> accepts a <code>key, value</code> pair to add to the map.</li>
<li><code>remove</code> accepts a key and removes the associated <code>key, value</code> pair</li>
<li><code>get</code> accepts a <code>key</code> and returns the stored <code>value</code></li>
<li><code>has</code> accepts a <code>key</code> and returns <dfn>true</dfn> if the key exists or <dfn>false</dfn> if it doesn't.</li>
<li><code>values</code> returns an array of all the values in the map</li>
<li><code>size</code> returns the number of items in the map</li>
<li><code>clear</code> empties the map</li>
</ul>

# --hints--

La estructura de datos `Map` debe existir.

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

El objeto `Map` debe tener los siguientes métodos: `add`, `remove`, `get`, `has`, `values`, `clear`, y `size`.

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

El método `add` debe agregar elementos al mapa.

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

El método `has` debe devolver `true` para elementos añadios y `false` para elementos ausentes.

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

El método `get` debe aceptar una clave como entrad y devolver el valor asociado.

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

El método `values` debe devolver todos los valores almacenado en el mapa como cadenas en un arreglo.

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

El método `clear` debe vaiar el mapa y el método `size` debe devolver el número de elementos presentes en el mapa.

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
