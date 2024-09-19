---
id: 65e97280484dd50f720e6fee
title: Aprenda tipos de datos y condicionales lección I
challengeType: 15
dashedName: learn-data-types-and-conditionals-lesson-i
---

# --description--

En el último ejemplo, tenías dos opciones `if` o `else`. ¿Pero qué sucede si quieres tener más de dos opciones? Puedes usar la sentencia `else if` para agregar más condiciones a nuestro código. La sentencia `else if` nos permite comprobar múltiples condiciones y ejecutar un bloque de código cuando la primera condición es verdadera. Si la primera condición es falsa, se comprobará la siguiente condición y así sucesivamente. Si ninguna de las condiciones son verdaderas, el bloque `else` será ejecutado.

Aquí hay un ejemplo de la sentencia `else if`:

```javascript
let x = 5;

if (x > 10) {
  console.log("x is greater than 10");
} else if (x > 5) {
  console.log("x is greater than 5");
} else {
  console.log("x is less than or equal to 5");
}
```

En este ejemplo, la variable `x` se compara con el número `10` usando el operador `>`. Si `x` es mayor que `10`, se ejecutará el primer bloque de código. De lo contrario, la sentencia `else if` comprobará la siguiente condición. Si `x` es mayor que `5`, se ejecutará el segundo bloque de código. De lo contrario, se ejecutará el bloque `else`.

# --questions--

## --text--

¿Cuál será la salida del siguiente código?

```javascript
let x = 4;

if (x > 10) {
  console.log("x is greater than 10");
} else if (x > 5) {
  console.log("x is greater than 5");
} else {
  console.log("x is less than or equal to 5");
}
```

## --answers--

`x is less than or equal to 5`

---

`x is greater than 5`

---

`x is greater than 10`

## --video-solution--

1
