---
id: 67329fbcfaf5ff5cdaa38a42
title: '¿Qué es la palabra clave var y por qué ya no se sugiere su uso?'
challengeType: 19
dashedName: what-is-the-var-keyword-and-why-is-it-no-longer-suggested-to-use-it
---

# --description--

La palabra clave `var` en JavaScript es una de las formas originales de declarar variables. Ha sido parte del lenguaje desde su inicio y durante muchos años siguió siendo el método principal para crear variables. Sin embargo, a medida que JavaScript evolucionó y los desarrolladores ganaron más experiencia con el lenguaje, ciertos inconvenientes de usar `var` se hicieron evidentes, lo que llevó a la introducción de `let` y `const` en 2015.

Cuando declaras una variable con `var`, se vuelve de alcance funcional o global. Esto significa que si declaras una variable dentro de una función usando `var`, solo es accesible dentro de esa función. Sin embargo, si la declaras fuera de cualquier función, se convierte en una variable global accesible a lo largo de todo tu script. Este comportamiento a veces puede llevar a resultados inesperados y hacer que tu código sea más difícil de entender.

Un problema con `var` es que te permite redeclarar la misma variable varias veces sin lanzar un error. Esto puede llevar a sobrescrituras accidentales y hacer que la depuración sea más difícil.

```js
var num = 5;

// This is allowed and doesn't throw an error
var num = 10;
```

El problema más significativo con `var` es su falta de alcance en bloque. Las variables declaradas con `var` dentro de un bloque como una declaración `if` o un bucle `for` siguen siendo accesibles fuera de ese bloque.

```js
if (true) {
  var num = 5;
}
console.log(num); // 5
```

Este comportamiento puede llevar a fugas de variables no intencionadas y hacer que tu código sea más propenso a errores.

Debido a estos problemas, el desarrollo moderno de JavaScript se ha alejado en gran medida de `var` en favor de `let` y `const`. Estas palabras clave proporcionan alcances en bloque que se alinean más estrechamente con cómo funciona el alcance en muchos otros lenguajes de programación.

Tampoco permiten la redeclaración dentro del mismo ámbito, ayudando a prevenir sobrescrituras accidentales.

Si bien `var` sigue siendo parte de JavaScript y funciona en todos los navegadores, en general se recomienda usar `let` y `const` en el desarrollo moderno de JavaScript. Proporcionan reglas claras de alcance, ayudan a prevenir errores comunes y hacen que el comportamiento de tu código sea más predecible.

# --questions--

## --text--

¿Cuál es el alcance de una variable declarada con `var` fuera de cualquier función?

## --answers--

Alcance de bloque.

### --feedback--

Piensa en dónde se puede acceder a una variable `var` declarada fuera de una función.

---

Alcance funcional.

### --feedback--

Piensa en dónde se puede acceder a una variable `var` declarada fuera de una función.

---

Alcance global.

---

Alcance del módulo.

### --feedback--

Think about where a `var` variable declared outside a function can be accessed.

## --video-solution--

3

## --text--

¿Cuál será la salida del siguiente código?

```js
var x = 10;

if (true) {
  var x = 20;
  console.log(x);
}

console.log(x);
```

## --answers--

```js
10
10
```

### --feedback--

Recuerda que `var` tiene alcance de función o global, y permite la redeclaración dentro del mismo ámbito.

---

```js
20
20
```

---

```js
10
20
```

### --feedback--

Remember that `var` is function-scoped or globally-scoped, and it allows redeclaration within the same scope.

---

```js
20
10
```

### --feedback--

Recuerda que `var` tiene alcance de función o global, y permite la redeclaración dentro del mismo ámbito.

## --video-solution--

2

## --text--

¿Cuál de las siguientes no es una razón para evitar el uso de `var` en JavaScript moderno?

## --answers--

`var` permite la redeclaración de variables en el mismo ámbito.

### --feedback--

Considera qué afirmación es falsa sobre el comportamiento o soporte de `var`.

---

`var` no está soportado en navegadores modernos.

---

Las variables `var` tienen alcance funcional, no alcance de bloque.

### --feedback--

Consider which statement is false about `var`'s behavior or support.

---

Las variables `var` son elevadas (hoisted).

### --feedback--

Considera qué afirmación es falsa sobre el comportamiento o soporte de `var`.

## --video-solution--

2
