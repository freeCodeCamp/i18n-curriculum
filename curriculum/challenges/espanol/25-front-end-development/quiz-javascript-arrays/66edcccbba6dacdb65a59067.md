---
id: 66edcccbba6dacdb65a59067
title: Cuestionario de Arrays de JavaScript
challengeType: 8
dashedName: quiz-javascript-arrays
---

# --description--

Para pasar el cuestionario, debe responder correctamente al menos 18 de las 20 preguntas a continuación.

# --quizzes--

## --quiz--

### --question--

#### --text--

¿Cuál será el resultado del siguiente código?

```js
const numbers = [1, 2, 3];
console.log(numbers[10]);
```

#### --distractors--

`[1, 2, 3]`

---

`null`

---

`10`

#### --answer--

`undefined`

### --question--

#### --text--

¿Cuál de las siguientes es la forma correcta de acceder a la cadena `"Jessica"` del array `developers`?

#### --distractors--

```js
const developers = ["Jessica", "Naomi", "Tom"];
developers[1]
```

---

```js
const developers = ["Jessica", "Naomi", "Tom"];
developers[2]
```

---

```js
const developers = ["Jessica", "Naomi", "Tom"];
developers[-1]
```

#### --answer--

```js
const developers = ["Jessica", "Naomi", "Tom"];
developers[0]
```

### --question--

#### --text--

¿Qué valor se le asignará a la variable `index`?

```js
const numbers = [10, 20, 30, 40];
const index = numbers.indexOf(20);
console.log(index);
```

#### --distractors--

2

---

3

---

-1

#### --answer--

1

### --question--

#### --text--

¿Qué hace la sintaxis de rest?

#### --distractors--

Se utiliza para dividir una cadena en un array de subcadenas.

---

Se utiliza para añadir o eliminar elementos de cualquier posición en un array.

---

Se utiliza para añadir elementos al final del array y devuelve la nueva longitud.

#### --answer--

Captura los elementos restantes de un array en un nuevo array.

### --question--

#### --text--

¿Qué es la desestructuración de arrays?

#### --distractors--

Se utiliza para concatenar todos los elementos de un array en una sola cadena.

---

Se utiliza para verificar si un array contiene un valor específico.

---

Se utiliza para eliminar el último elemento de un array y devolver ese elemento eliminado.

#### --answer--

Se utiliza para extraer valores de arrays y asignarlos a variables de manera más concisa y legible.

### --question--

#### --text--

¿Qué valor se le asignará a la variable `arr2`?

```js
const arr1 = [1, 2, 3];
const arr2 = [...arr1, 4, 5];
console.log(arr2);
```

#### --distractors--

`[4, 5, 1, 2, 3]`

---

`[1, 2, [3, 4, 5]]`

---

`[1, 2, 3]`

#### --answer--

`[1, 2, 3, 4, 5]`

### --question--

#### --text--

¿Qué registrará este código en la consola?

```js
const colors = ["red", "blue", "green", "yellow"];
colors.splice(1, 2, "purple");
console.log(colors);
```

#### --distractors--

`["red", "blue", "green", "yellow"]`

---

`["red", "blue", "yellow"]`

---

`["red", "yellow"]`

#### --answer--

`["red", "purple", "yellow"]`

### --question--

#### --text--

¿Qué valor se le asignará a la variable `slicedArr`?

```js
const arr = ["apple", "banana", "cherry", "date"];
const slicedArr = arr.slice(1, 3);
console.log(slicedArr);
```

#### --distractors--

`["apple", "banana"]`

---

`["cherry", "date"]`

---

`["apple", "cherry"]`

#### --answer--

`["banana", "cherry"]`

### --question--

#### --text--

¿Qué método devuelve el primer índice de un elemento dado en un array?

#### --distractors--

`firstIndex()`

---

`lastIndex()`

---

`searchIndex()`

#### --answer--

`indexOf()`

### --question--

#### --text--

¿Qué método se utiliza para eliminar el primer elemento de un array y retornar ese elemento eliminado?

#### --distractors--

`pop()`

---

`slice()`

---

`splice()`

#### --answer--

`shift()`

### --question--

#### --text--

¿Qué hace el método `concat()`?

#### --distractors--

Une los elementos del array en una cadena.

---

Agrega un elemento al principio de un array.

---

Elimina un elemento del array.

#### --answer--

Fusiona dos arrays en un nuevo array.

### --question--

#### --text--

¿Cuál será el resultado de este código?

```js
const fruits = ["apple", "banana", "cherry", "apple", "orange"];

fruits.splice(0, 1);

console.log(fruits);
```

#### --distractors--

`["apple", "banana", "cherry", "apple", "orange"]`

---

`["apple", "banana", "cherry"]`

---

`["cherry", 'apple']`

#### --answer--

`["banana", "cherry", "apple", "orange"]`

### --question--

#### --text--

¿Qué hace el método `includes()`?

#### --distractors--

Se utiliza para dividir una cadena en un array de subcadenas.

---

Se utiliza para concatenar todos los elementos de un array en una sola cadena.

---

Se utiliza para añadir o eliminar elementos de cualquier posición en un array.

#### --answer--

Se utiliza para verificar si un array contiene un valor específico.

### --question--

#### --text--

¿Cuál de los siguientes métodos se utiliza para invertir un array en su lugar?

#### --distractors--

`reversed()`

---

`reverseArr()`

---

`reversing()`

#### --answer--

`reverse()`

### --question--

#### --text--

¿Qué es un array de dos dimensiones?

#### --distractors--

Un array que solo contiene literales de objeto.

---

Un array de longitud fija.

---

Un array de números de punto flotante.

#### --answer--

Un array de arrays.

### --question--

#### --text--

¿Cuál de las siguientes afirmaciones es verdadera acerca del método `indexOf()` en arrays?

#### --distractors--

Siempre devuelve la última ocurrencia del elemento.

---

Lanza un error si no encuentra el elemento.

---

Requiere que el array esté ordenado.

#### --answer--

Devuelve `-1` si el elemento no se encuentra.

### --question--

#### --text--

¿Cuál de las siguientes NO es un método de array?

#### --distractors--

`includes()`

---

`pop()`

---

`push()`

#### --answer--

`keys()`

### --question--

#### --text--

¿Cuál será el resultado del siguiente código?

```js
const arr = ["o", "l", "l", "e", "h"];
console.log(arr.join(""));
```

#### --distractors--

`["o", "l", "l", "e", "h"]`

---

`"hello"`

---

`undefined`

#### --answer--

`"olleh"`

### --question--

#### --text--

¿Cuál será el resultado de usar el método `shift()` en un array vacío?


#### --distractors--

`TypeError`

---

`[]`

---

`null`

#### --answer--

`undefined`

### --question--

#### --text--

¿Qué método devolverá un nuevo array sin modificar el array original?

#### --distractors--

`shift()`

---

`pop()`

---

`push()`

#### --answer--

`slice()`
