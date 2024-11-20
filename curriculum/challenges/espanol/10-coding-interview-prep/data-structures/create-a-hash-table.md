---
id: 587d825b367417b2b2512c8e
title: Crear una tabla Hash
challengeType: 1
forumTopicId: 301627
dashedName: create-a-hash-table
---

# --description--

En este desafío aprenderemos sobre las tablas Hash. Una tabla hash es usada para implementar arreglos asociativos, o mapeos de pares clave-valor, como los objetos y mapas que acabamos de estudiar. Un objeto JavaScript podría ser implementado como una tabala hash, por ejemplo, (su implementación actual dependerpa del entorno en el que se ejecute). La forma en la que funciona una tabla hash es tomar una llave de entrada y hacer hash esta llave en una forma determinista a un valor numérico. Este valor numérico luego se utiliza como la clave real en la que se almacena el valor asociado. Entonces, si tu tratas de acceder a la misma clave otra vez, la funcion hashing procesará la clave, devuelve el mismo resultado numérco, el cual será usado para buscar el valor asociado. Esto proporciona un tiempo de búsqueda O(1) muy eficiente en promedio.

Las tablas hash pueden ser implementadas como arreglos con funciones hash que producen índices del arreglo dentro de un rango específico. En este método, la elección del tamaño del arreglo es importante, al igual que la función de hashing. Por ejemplo, ¿qué pasa si la función de hashing produce el mismo valor para dos diferentes claves? Esto es llamado una colisión. Una forma de manejar las colisiones es solamente almacenar ambos pares clave-valor en ese índice. Luego, al buscar ambos, tendríamos que iterar a través del cubo de objetos para encontrar la llave que estamos buscando. Una buena función de Hashing minimizará las colisiones para mantener un tiempo de búsqueda eficiente.

Aquí, no nos preocuparemos de los detalles de la implementación de la tabal de hash, solamente trataremos de obtener un sentido general de como funcionan.

# --instructions--

Vamos a crear una funcionalidad básica de una tabla de hash. Hemos creado una función hashing sencilla para que la utilices. Puedes pasar un valor de cadena a la función `hash` y retornará un valor hash que puedes usar como una clave para almacenar. Almacenar elementos basado en este valor hash en el objeto `this.collection`. Crea estos tres métodos; `add`,`remove`, y `lookup`. El primero debe aceptar un par clave valor para añadir a la tabla hash. El segundo debe eliminar un par clave valor cuando pasemos una clave. El tercero debe aceptar una clave y devolver el valor asociado o `null` si la llave no está presente.

Asegúrate de escribir tu código tomando en cuenta las colisiones!

**Nota:** Las pruebas del método `remove` no pasarán hasta que los métodos `add` y `lookup` sean correctamente implementados.

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

La estructura de datos `HashTable` debe existir.

```js
assert.isDefined(HashTable); 
let newHashTable = new HashTable(); 
assert.isObject(newHashTable); 
```

La `HashTable` debe tener un método `add`.

```js
let newHashTable = new HashTable(); 
assert.isFunction(newHashTable.add); 
```

La `HashTable` debe tener un método `lookup`.

```js
let newHashTable = new HashTable(); 
assert.isFunction(newHashTable.lookup); 
```

La `HashTable` debe tener un método `remove`.

```js
let newHashTable = new HashTable(); 
assert.isFunction(newHashTable.remove); 
```

El método `add` debe agregar pares clave valor y el método `lookup` debe devolver los valores asociados con una clave dada.

```js
let newHashTable = new HashTable(); 
newHashTable.add('key','value');
assert.strictEqual(newHashTable.lookup('key'),'value'); 
```

El método `remove` debe aceptar una clave como entrada y debe eliminar el par clave valor asociado.

```js
let hashValue = hash('key');
let newHashTable = new HashTable(); 
newHashTable.add('key','value');
newHashTable.remove('key'); 
assert.notProperty(newHashTable.collection,hashValue); 
```

El método `remove` solo debe eliminar el par clave valor correcto.

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

Los elementos deben ser agregados usando la función hash.

```js
let newHashTable = new HashTable(); 
called = 0;
newHashTable.add('key1', 'value1')
newHashTable.add('key2', 'value2');
newHashTable.add('key3', 'value3');
assert.strictEqual(called,3); 
```

La tabla Hash debe manejar las colisiones.

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
