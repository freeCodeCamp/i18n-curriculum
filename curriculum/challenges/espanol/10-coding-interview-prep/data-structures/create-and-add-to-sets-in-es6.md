---
id: 587d8254367417b2b2512c70
title: Crear y añadir Sets en ES6
challengeType: 1
forumTopicId: 301636
dashedName: create-and-add-to-sets-in-es6
---

# --description--

Now that you have worked through ES5, you are going to perform something similar in ES6. This will be considerably easier. ES6 contains a built-in data structure `Set` so many of the operations you wrote by hand are now included for you. Let's take a look:

Para crear un nuevo set vacío:

```js
var set = new Set();
```

Tu puedes crear un set con un valor:

```js
var set = new Set(1);
```

Puedes crear un set con un arreglo:

```js
var set = new Set([1, 2, 3]);
```

Una vez que hayas creado un set, puedes añadir los valores que desees usando el método `add`:

```js
var set = new Set([1, 2, 3]);
set.add([4, 5, 6]);
```

Como un recordatorio, un set es una estructura de datos que no puede contener valores duplicados:

```js
var set = new Set([1, 2, 3, 1, 2, 3]);
// set contains [1, 2, 3] only
```

# --instructions--

Para este ejercicio, devuelve un set con los siguientes valores:`1, 2, 3, 'Taco', 'Cat', 'Awesome'`

# --hints--

Tu `Set` debe contener solamente los valores `1, 2, 3, Taco, Cat, Awesome`.

```js
assert(
  (function () {
    var test = checkSet();
    return (
      test.size == 6 &&
      test.has(1) &&
      test.has(2) &&
      test.has(3) &&
      test.has('Taco') &&
      test.has('Cat') &&
      test.has('Awesome')
    );
  })()
);
```

# --seed--

## --seed-contents--

```js
function checkSet() {
  var set = new Set([1, 2, 3, 3, 2, 1, 2, 3, 1]);
  // Only change code below this line

  // Only change code above this line
  console.log(Array.from(set));
  return set;
}

checkSet();
```

# --solutions--

```js
function checkSet(){var set = new Set([1,2,3,'Taco','Cat','Awesome']);
return set;}
```
