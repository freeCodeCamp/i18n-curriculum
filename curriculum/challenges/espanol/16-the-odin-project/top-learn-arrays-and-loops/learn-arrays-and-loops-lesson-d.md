---
id: 661e27588602567c118451d4
title: Aprende arreglos y bucles lección D
challengeType: 15
dashedName: learn-arrays-and-loops-lesson-d
---

# --description--

Uno de los métodos más complejos utilizados con arreglos son los métodos `splice()` y `slice()`. El método `splice()` cambia el contenido de un arreglo eliminando o reemplazando un elemento en el arreglo. El método `slice()` devuelve una copia superficial de una porción de un arreglo en un nuevo objeto arreglo seleccionado desde `begin` hasta `end` (`end` no incluido). El arreglo original no se modificará.

Por ejemplo, para eliminar el segundo elemento del arreglo `characters`, puedes usar el siguiente código:

```javascript
const characters = ['Harry', 'Ron', 'Hermione'];
characters.splice(1, 1);
console.log(characters); // Output: ['Harry', 'Hermione']
```

El elemento anterior elimina el segundo elemento del arreglo `characters`. El método `splice()` toma dos argumentos: el índice del elemento a eliminar y el número de elementos a eliminar.


Para crear un nuevo arreglo con el segundo elemento del arreglo `character`, puedes usar el siguiente código:

```javascript
const characters = ['Harry', 'Ron', 'Hermione'];
const newCharacters = characters.slice(1, 2);
console.log(newCharacters); // Output: ['Ron']
```

El código anterior crea un nuevo arreglo `newCharacters` con el segundo elemento del arreglo `characters`. El método `slice()` toma dos argumentos: el índice del elemento para comenzar el corte y el índice del elemento para terminar el corte (no incluido).

# --questions--

## --text--

¿Cuál será la salida del siguiente fragmento de código de JavaScript?


```javascript
const numbers = [10, 20, 30, 40, 50];
numbers.splice(3, 1);
const slicedNumbers = numbers.slice(2, 4);

console.log(numbers);
console.log(slicedNumbers);
```

## --answers--

`numbers` salida: `[10, 20, 30, 50]` y `slicedNumbers` salida: `[30, 50]`

---

`numbers` salida: `[10, 20, 30, 40]` y `slicedNumbers` salida: `[30, 40]`

---

`numbers` salida: `[10, 20, 50, 40]` y `slicedNumbers` salida: `[20, 50]`

---

`numbers` salida: `[10, 20, 30, 50, 40]` y `slicedNumbers` salida: `[30, 50]`

## --video-solution--

1
