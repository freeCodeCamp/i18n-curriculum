---
id: 6617a1fce90de1b3fd10bd4e
title: Learn Function Basics Lesson B
challengeType: 15
dashedName: learn-function-basics-lesson-b
---

# --description--

```js
function favoriteAnimal(animal) {
  return animal + " is my favorite animal!"
}

console.log(favoriteAnimal('Goat'));
```

By putting `animal` inside the parentheses of the `favoriteAnimal()` function, you are telling JavaScript that you will send some value to your `favoriteAnimal` function. This means that animal is just a placeholder for some future value. But what value are you sending?

The last line, `favoriteAnimal('Goat')`, is where you are calling your `favoriteAnimal` function and passing the value `'Goat'` inside that function. Here, `'Goat'` is your argument. You are telling the `favoriteAnimal` function, "Please send `'Goat'` to the `favoriteAnimal` function and use `'Goat'` wherever the `'animal'` placeholder is." Debido a la flexibilidad que ofrece el uso de un parámetro, puedes declarar cualquier animal como tu favorito.

Aquí hay un diagrama para ayudarte a visualizar cómo se pasan los parámetros a una función, y cómo los valores son devueltos de ella.

<img src="https://cdn.statically.io/gh/TheOdinProject/curriculum/c53dd9a12f0c9afde0d9229f82a176170f12e120/foundations/javascript_basics/function_basics/imgs/00.png" alt="Una descripción de una función con flechas que explican que los valores entre los paréntesis de la función en sí son llamados parámetros, y los valores que se emiten cuando la función se usa son llamados argumentos" style="width:95%;height:auto;" />

Observa que al llamar a `favoriteAnimal()` dentro de `console.log()` con el argumento `'Goat'`, obtienes el valor de retorno de la función, cadena de `"Goat is my favorite animal!"`, impreso en la consola. Estás pasando una llamada de función `favoriteAnimal('Goat')` como un argumento en una llamada de función diferente - `log()`.

# --questions--

## --text--

Si cambias el argumento de `'Goat'` a `'Elephant'` en la llamada de función `favoriteAnimal('Goat')`, ¿qué imprimiría `console.log(favoriteAnimal('Elephant'))` en la consola?

## --answers--

`"Goat is my favorite animal!"`

---

La función devolverá un error porque `"Elephant"` no es un argumento reconocido.

---

`"Elephant is my favorite animal!"`

---

`"Kangaroo is my favorite animal!"`

## --video-solution--

3
