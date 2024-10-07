---
id: 661e275a8602567c118451d8
title: Aprende arreglos y bucles lección H
challengeType: 15
dashedName: learn-arrays-and-loops-lesson-h
---

# --description--

Una otra método útil de arreglo es el método `filter()`. El método `filter()` crea un nuevo arreglo con todos los elementos que pasan la prueba implementada por la función proporcionada. La sintaxis del método `filter()` es la siguiente:

```javascript
const numbers = [2, 5, 6, 1, 9, -1]

const newNumbers = numbers.filter((number) => {
  return number > 2;
});

console.log(newNumbers); // Output: [5, 6, 9]
```

El método `filter()` crea un nuevo arreglo con todos los elementos que son mayores que 2. El método `filter()` no cambia el arreglo original.

# --preguntas----preguntas--

## --text--

¿Cuál será el resultado del siguiente fragmento de código JavaScript?

```javascript
const strings = ['apple', 'banana', 'cherry', 'orange', 'kiwi', 'mango'];
const newStrings = strings.filter((string) => {
  return string.length > 5;
});

console.log(newStrings);
```

## --answers--

`['apple', 'banana', 'cherry', 'orange', 'kiwi', 'mango']`

---

`['apple', 'banana', 'cherry', 'orange', 'kiwi']`

---

`['banana, 'cherry', 'orange']`

---

`['apple', 'banana', 'cherry', 'orange', 'kiwi']`


## --video-solution--

3
