---
id: cf1111c1c12feddfaeb3bdef
title: Usa lógica condicional con las sentencias "If"
challengeType: 1
videoUrl: 'https://scrimba.com/c/cy87mf3'
forumTopicId: 18348
dashedName: use-conditional-logic-with-if-statements
---

# --description--

`if` statements are used to make decisions in code. The keyword `if` tells JavaScript to execute the code in the curly braces under certain conditions, defined in the parentheses. These conditions are known as `Boolean` conditions and they may only be `true` or `false`.

Cuando la condición se evalúa como `true`, el programa ejecuta el comando dentro de las llaves. Cuando la condición booleana se evalúa como `false`, la sentencia dentro de las llaves no se ejecutará.

**Pseudocódigo**

<blockquote>si (<i>la condición es verdadera</i>) {<br>  <i>la sentencia es ejecutada</i><br>}</blockquote>

**Ejemplo**

```js
function test(myCondition) {
  if (myCondition) {
    return "It was true";
  }
  return "It was false";
}

test(true);
test(false);
```

`test(true)` devuelve la cadena `It was true` y `test(false)` devuelve la cadena `It was false`.

Cuando `test` es llamada con un valor de `true`, la sentencia `if` evalúa `myCondition` (mi condición) para ver si es `true` o no. Puesto que es `true`, la función devuelve `It was true`. Cuando llamamos a `test` con un valor de `false`, `myCondition` *no* es `true`, la sentencia dentro de las llaves no se ejecuta y la función devuelve `It was false`.

# --instructions--

Crea una sentencia `if` dentro de la función que devuelva `Yes, that was true` si el parámetro `wasThatTrue` es `true` y devuelva `No, that was false` en caso contrario.

# --hints--

`trueOrFalse` debe ser una función

```js
assert(typeof trueOrFalse === 'function');
```

`trueOrFalse(true)` debe devolver una cadena

```js
assert(typeof trueOrFalse(true) === 'string');
```

`trueOrFalse(false)` debe devolver una cadena

```js
assert(typeof trueOrFalse(false) === 'string');
```

`trueOrFalse(true)` debe devolver la cadena `Yes, that was true`

```js
assert(trueOrFalse(true) === 'Yes, that was true');
```

`trueOrFalse(false)` debe devolver la cadena `No, that was false`

```js
assert(trueOrFalse(false) === 'No, that was false');
```

# --seed--

## --seed-contents--

```js
function trueOrFalse(wasThatTrue) {
  // Only change code below this line



  // Only change code above this line

}
```

# --solutions--

```js
function trueOrFalse(wasThatTrue) {
  if (wasThatTrue) {
    return "Yes, that was true";
  }
  return "No, that was false";
}
```
