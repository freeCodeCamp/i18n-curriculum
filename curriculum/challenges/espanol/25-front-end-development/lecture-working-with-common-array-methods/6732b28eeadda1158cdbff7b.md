---
id: 6732b28eeadda1158cdbff7b
title: '¿Cómo puedes verificar si un arreglo contiene un cierto valor?'
challengeType: 11
videoId: NjZI_TlIiXk
dashedName: how-can-you-check-if-an-array-contains-a-certain-value
---

# --description--

Mire el video o lea la transcripción y responda las preguntas a continuación.

# --transcript--

¿Cómo puedes verificar si un arreglo contiene un cierto valor?

En JavaScript, el método `includes()` es una forma simple y eficiente de verificar si un arreglo contiene un valor específico. Este método devuelve un valor booleano: `true` si el arreglo contiene el elemento especificado, y `false` en caso contrario.

El método `includes()` es particularmente útil cuando necesitas verificar rápidamente la presencia de un elemento en un arreglo sin necesidad de conocer su posición exacta. Comencemos con un ejemplo de cómo usar el método `includes()`:

```js
let fruits = ["apple", "banana", "orange", "mango"];
console.log(fruits.includes("banana")); // true
console.log(fruits.includes("grape"));  // false
```

En este ejemplo, tenemos un arreglo de frutas. Usamos el método `includes()` para verificar si `banana` está en el arreglo. Devuelve `true` porque `banana` está presente. Luego comprobamos `grape`, lo que devuelve `false` porque no está en el arreglo.

El método `includes()` distingue entre mayúsculas y minúsculas cuando se trata de cadenas. Esto significa que `Banana` con una B mayúscula y `banana` con todas las letras en minúscula se consideran valores diferentes. Aquí tienes un ejemplo que ilustra esto:

```js
let fruits = ["apple", "banana", "orange"];
console.log(fruits.includes("banana")); // true
console.log(fruits.includes("Banana")); // false
```

En este caso, `banana` (todas en minúsculas) se encuentra en el arreglo, pero `Banana` (con la primera letra en mayúscula) no, por lo que la segunda llamada a `includes()` devuelve `false`.

El método `includes()` también puede aceptar un segundo parámetro opcional que especifica la posición en el arreglo para iniciar la búsqueda. Esto es útil si quieres verificar la presencia de un elemento en una parte específica del arreglo. Así es como puedes usar esta característica:

```js
let numbers = [10, 20, 30, 40, 50, 30, 60];
console.log(numbers.includes(30, 3)); // true
console.log(numbers.includes(30, 4)); // true
```

Para el primer `console.log`, estamos buscando el número `30` comenzando en el índice `3`. En este caso, hay un número `30` que aparece después del índice `3`, por lo que el método `includes()` devuelve `true`.

Lo mismo sucede con el segundo `console.log`. Estamos buscando el número `30` comenzando en el índice `4`. Dado que el número `30` aparece después de ese índice, retornará `true`.

Vale la pena señalar que `includes()` usa la comparación de igualdad estricta (`===`), lo que significa que puede distinguir entre diferentes tipos. Por ejemplo:

```js
let mixedArray = [1, "2", 3, "4", 5];
console.log(mixedArray.includes(2));  // false
console.log(mixedArray.includes("2")); // true
```

En este caso, el número `2` y la cadena `"2"` se consideran diferentes tipos de datos. Por lo tanto, el primer `console.log` devolverá `false`, mientras que el segundo `console.log` devolverá `true`.

El método `includes()` es una herramienta poderosa para verificar la presencia de elementos en arreglos. Es simple de usar, eficiente y puede ahorrarte de escribir bucles más complejos o condiciones para buscar en los arreglos. Ya sea que estés trabajando con cadenas, números o tipos de datos mixtos, `includes()` proporciona una manera directa de verificar si un valor existe en tu arreglo.

# --questions--

## --text--

¿Cuál será el resultado del siguiente código?

```js
let arr = [1, 2, 3, 4, 5];
console.log(arr.includes(3, 3));
```

## --answers--

`true`

### --feedback--

El segundo parámetro de `includes()` especifica la posición de inicio para la búsqueda.

---

`false`

---

`undefined`

### --feedback--

El segundo parámetro de `includes()` especifica la posición de inicio para la búsqueda.

---

Esto generará un error.

### --feedback--

El segundo parámetro de `includes()` especifica la posición de inicio para la búsqueda.

## --video-solution--

2

## --text--

¿Cuál será el resultado del siguiente código?

```js
let arr = ["a", "b", "c", "d", "e"];
console.log(arr.includes("C"));
```

## --answers--

`true`

### --feedback--

Recuerda que `includes()` distingue entre mayúsculas y minúsculas cuando se trata de cadenas.

---

`false`

---

`undefined`

### --feedback--

Recuerda que `includes()` distingue entre mayúsculas y minúsculas cuando se trata de cadenas.

---

Esto generará un error.

### --feedback--

Recuerda que `includes()` distingue entre mayúsculas y minúsculas cuando se trata de cadenas.

## --video-solution--

2

## --text--

¿Cuál será el resultado del siguiente código?

```js
let arr = [1, "2", 3, "4", 5];
console.log(arr.includes("3"));
```

## --answers--

`true`

### --feedback--

El método `includes()` utiliza igualdad estricta (`===`) para la comparación.

---

`false`

---

`undefined`

### --feedback--

El método `includes()` utiliza igualdad estricta (`===`) para la comparación.

---

Esto generará un error.

### --feedback--

El método `includes()` utiliza igualdad estricta (`===`) para la comparación.

## --video-solution--

2
