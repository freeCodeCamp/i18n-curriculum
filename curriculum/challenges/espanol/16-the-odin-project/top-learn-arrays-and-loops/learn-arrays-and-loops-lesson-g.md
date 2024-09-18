---
id: 661e275a8602567c118451d7
title: Aprende arreglos y bucles Lección G
challengeType: 15
dashedName: learn-arrays-and-loops-lesson-g
---

# --description--

Ahora que sabes sobre las formas más comunes de iterar sobre valores y arreglos, hay algunas formas más de iterar sobre arreglos. Los arreglos tienen un método incorporado llamado `map()`, que se utiliza para crear un nuevo arreglo aplicando una función a cada elemento del arreglo original. El método `map()` no cambia el arreglo original. La sintaxis del método `map()` es la siguiente:

```javascript
const array = [1, 2, 3, 4, 5];

const newArray = array.map((arrayValue) => {
  return arrayValue * 2;
});

console.log(newArray); // Output: [2, 4, 6, 8, 10]
```

El método `map()` crea un nuevo arreglo aplicando la función `(arrayValue) => { return arrayValue * 2;` a cada elemento del arreglo original. Esto es particularmente útil cuando deseas transformar los elementos de un arreglo sin cambiar el arreglo original.

# --question--

## --text--

¿Cuál será el resultado del siguiente fragmento de código JavaScript?

```javascript
const numbers = [1, 2, 3, 4, 5];
const newNumbers = numbers.map((number) => {
  return number * 3;
});

console.log(newNumbers);
```

## --answers--

`[1, 2, 3, 4, 5]`

---

`[3, 6, 9, 12, 15]`

---

`[1, 3, 5, 7, 9]`

---

`[3, 6, 9, 12, 15, 18]`

## --video-solution--

2
