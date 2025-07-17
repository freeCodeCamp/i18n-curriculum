---
id: 66edcdd18a4ef8df16e6bb7e
title: Quiz de Funciones de Orden Superior en JavaScript
challengeType: 8
dashedName: quiz-javascript-higher-order-functions
---

# --description--

Para pasar el quiz, debes responder correctamente al menos 18 de las 20 preguntas siguientes.

# --quizzes--

## --quiz--

### --question--

#### --text--

¿Cuál de las siguientes afirmaciones sobre las funciones de orden superior en JavaScript NO es verdad?

#### --distractors--

Las funciones de orden superior pueden mejorar significativamente la legibilidad y mantenibilidad del código al permitir técnicas de programación funcional.

---

Las funciones de orden superior como map, filter y reduce son herramientas poderosas para manipulación de arrays, pero no son exclusivas de la programación funcional.

---

Las funciones de orden superior pueden introducir complejidad al entender el código, pero también pueden conducir a soluciones más expresivas y concisas.

#### --answer--

Todas las funciones en JavaScript, incluidas las que no toman o devuelven otras funciones, pueden clasificarse como funciones de orden superior.

### --question--

#### --text--

¿Qué es una función de fábrica en el contexto de funciones de orden superior?

#### --distractors--

Una función que crea nuevas variables.

---

Una función que solo funciona con cadenas.

---

Una función que genera automáticamente comentarios en el código.

#### --answer--

Una función que devuelve una nueva función basada en parámetros específicos

### --question--

#### --text--

Después de la ejecución del código, ¿cuál será el valor de `forEachRes` y `mapRes`?

```js
const numbers = [1, 1, 1, 1, 1];
let sum = 0;
const forEachRes = numbers.forEach(num => {
  return (sum += num);
});
const mapRes = numbers.map(num => {
  return (sum += num);
});
```

#### --distractors--

`forEachRes` es `undefined` y `mapRes` es `[1,2,3,4,5]`

---

`forEachRes` es `0` y `mapRes` es `[1,2,3,4,5]`

---

`forEachRes` es `5` y `mapRes` es `[1,2,3,4,5]`

#### --answer--

`forEachRes` es `undefined` y `mapRes` es `[6,7,8,9,10]`

### --question--

#### --text--

¿Cuál es el resultado de este código?

```js
[, undefined, 'a', 'b', { 20: 5 }].sort();
```

#### --distractors--

Elementos no compatibles para un array a ordenar, por lo tanto error.

---

Callback no proporcionado, por lo tanto error.

---

```js
[empty, 'a', 'b', undefined, { '20': 5 }]
```

#### --answer--

```js
[{ '20': 5 }, 'a', 'b', undefined, empty]
```

### --question--

#### --text--

¿Cuál de los siguientes describe una función de callback en JavaScript?

#### --distractors--

Una función que se llama inmediatamente tras ser declarada.

---

Una función que se invoca con un contexto específico.

---

Una función que devuelve otra función.

#### --answer--

Una función pasada como argumento a otra función, para ser ejecutada por la lógica de esa función.

### --question--

#### --text--

¿Cuál es el resultado de usar `reduce()` en un array?

#### --distractors--

Un booleano que indica si algún elemento cumple una condición.

---

Un Array con todos los elementos reducidos por la función de callback especificada.

---

Un Array de booleanos.

#### --answer--

Varía dependiendo del valor inicial del acumulador y la función de callback.

### --question--

#### --text--

¿Cómo se comporta el método `sort()` si no se proporciona ninguna función de comparación en la clasificación numérica?

#### --distractors--

Rellena los espacios vacíos con `null`.

---

Devuelve un array de caracteres especiales.

---

Ordena el array en orden inverso.

#### --answer--

Ordena el array como cadenas dentro de los códigos de unidad de UTF-16.

### --question--

#### --text--

¿Cuál es el propósito del método `some()` en JavaScript?

#### --distractors--

Para crear un nuevo array con los resultados de una función aplicada a cada elemento.

---

Para iterar sobre un array sin producir un resultado.

---

Para reducir un array a un solo valor basado en una función de callback.

#### --answer--

Para determinar si algún elemento en un array pasa una prueba especificada.

### --question--

#### --text--

¿Cuál de los siguientes es un ejemplo válido de método encadenado?

#### --distractors--

```js
Math.random();
```

---

```js
array.push(1).pop();
```

---

```js
console.log('Hello');
```

#### --answer--

```js
str.toLowerCase().trim().replace(' ', '_');
```

### --question--

#### --text--

¿Cuál es el resultado del siguiente código?

```js
let numbers = [2, 4, 8, 10];

numbers.forEach(function(number) {
    console.log(number % 2);
});
```

#### --distractors--

`2 4 8 10`

---

`null null null null`

---

`1 2 4 5`

#### --answer--

`0 0 0 0`

### --question--

#### --text--

¿Cuál de los siguientes es un beneficio del encadenamiento de métodos?

#### --distractors--

Optimiza inherentemente el rendimiento al reducir el tiempo de ejecución de las funciones.

---

Elimina la necesidad de variables temporales, pero puede aumentar el uso de memoria en algunos casos.

---

Permite que la manipulación de errores y depuración sea más directa.

#### --answer--

Promueve una sintaxis simplificada y código más legible al permitir múltiples operaciones en una sola expresión.

### --question--

#### --text--

¿Cómo puedes ordenar un array de objetos por una propiedad específica usando el método `sort`?

#### --distractors--

El método `sort` no puede ordenar objetos.

---

Usa el método `reverse` después de ordenar.

---

Convierte los objetos a cadenas y ordénalos.

#### --answer--

Usa una función de comparación que compare los valores de las propiedades.

### --question--

#### --text--

En el encadenamiento de métodos, ¿cuál es una práctica común para mejorar la claridad y depuración?

#### --distractors--

Usa menos métodos en la cadena.

---

Evita encadenar métodos que devuelvan solo valores primitivos.

---

Usa solo métodos incorporados.

#### --answer--

Divide cadenas largas en múltiples pasos.

### --question--

#### --text--

¿Cuál es una posible desventaja de usar el encadenamiento de métodos en exceso en tu código?

#### --distractors--

Hace que el código se ejecute más lentamente.

---

Impide el uso de comentarios.

---

Aumenta el tamaño del archivo.

#### --answer--

Puede hacer que el código sea más difícil de depurar.

### --question--

#### --text--

¿Qué método usarías para determinar si todos los elementos en un array son cadenas?

#### --distractors--

`some()`

---

`everyInstance()`

---

`filter()`

#### --answer--

`every()`

### --question--

#### --text--

¿Cuál será el valor de `originalArray` después de ejecutar el siguiente código?

```js
const originalArray = [{ id: 1 }, { id: 2 }, { id: 3 }];
const filteredArray = originalArray.filter(item => item.id > 1);
filteredArray[0].id = 4;
```

#### --distractors--

`[{ id: 1 }, { id: 2 }, { id: 3 }]`

---

`[{ id: 1 }]`

---

`[{ id: 4 }, { id: 2 }, { id: 3 }]`

#### --answer--

`[{ id: 1 }, { id: 4 }, { id: 3 }]`
### --question--

#### --text--

What will be the value of `shortWords` after the following code is run?

```js
const words = ['apple', 'banana', 'pear', 'kiwi'];
const shortWords = words.filter(word => word.length <= 5);
```

#### --distractors--

`[]`

---

`['pear', 'kiwi']`

---

`['apple', 'banana']`

#### --answer--

`['apple', 'pear', 'kiwi']`

### --question--

#### --text--

¿Cuál es el propósito de proporcionar un valor inicial como argumento al método `reduce()`?

#### --distractors--

Para establecer la longitud del array.

---

Para limitar el número de iteraciones.

---

Para especificar el tipo de retorno de la función.

#### --answer--

Para definir el valor inicial para el acumulador.

### --question--

#### --text--

¿Puede utilizarse el método `map` en objetos que no son arrays?

#### --distractors--

Sí, puede utilizarse en cualquier objeto.

---

Sí, pero solo en objetos con propiedades numéricas.

---

Depende de la versión de JavaScript.

#### --answer--

No, está específicamente diseñado para arrays.

### --question--

#### --text--

¿Cuál es el propósito principal del método `map` en JavaScript?

#### --distractors--

Para ordenar un array y devolver un nuevo array manteniendo el orden original.

---

Para filtrar elementos de un array y eliminar o agregar elementos basados en una condición.

---

Para encontrar un elemento específico en un array y devolver su índice junto con el elemento.

#### --answer--

Para crear un nuevo array que contenga los resultados de llamar a una función proporcionada sobre cada elemento del array inicial.
