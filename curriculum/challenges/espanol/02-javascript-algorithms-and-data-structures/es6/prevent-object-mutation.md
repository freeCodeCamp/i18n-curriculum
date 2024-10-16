---
id: 598f48a36c8c40764b4e52b3
title: Prevenir la mutación del objeto
challengeType: 1
forumTopicId: 301207
dashedName: prevent-object-mutation
---

# --description--

As seen in the previous challenge, `const` declaration alone doesn't really protect your data from mutation. To ensure your data doesn't change, JavaScript provides a function `Object.freeze` to prevent data mutation.

Cualquier intento de cambiar el objeto será rechazado, lanzando un error si el script se ejecuta en modo estricto (strict mode).

```js
let obj = {
  name:"FreeCodeCamp",
  review:"Awesome"
};
Object.freeze(obj);
obj.review = "bad";
obj.newProp = "Test";
console.log(obj); 
```

Las asignaciones `obj.review` y `obj.newProp` provocarán errores, porque nuestro editor se ejecuta en modo estricto por defecto, y la consola mostrará el valor `{ name: "FreeCodeCamp", review: "Awesome" }`.

# --instructions--

En este desafío vas a utilizar `Object.freeze` para prevenir el cambio de constantes matemáticas. Necesitas congelar el objeto `MATH_CONSTANTS` para que nadie pueda alterar el valor de `PI`, añadir o borrar propiedades.

# --hints--

No debes reemplazar la palabra clave `const`.

```js
assert(__helpers.removeJSComments(code).match(/const/g));
```

`MATH_CONSTANTS` debe ser una variable constante (utilizando `const`).

```js
assert(__helpers.removeJSComments(code).match(/const\s+MATH_CONSTANTS/g));
```

No debes modificar la declaración original de `MATH_CONSTANTS`.

```js
assert(__helpers.removeJSComments(code).match(
   /const\s+MATH_CONSTANTS\s+=\s+{\s+PI:\s+3.14\s+};/g
));
```

`PI` debe ser igual a `3.14`.

```js
assert(PI === 3.14);
```

# --seed--

## --seed-contents--

```js
function freezeObj() {
  const MATH_CONSTANTS = {
    PI: 3.14
  };
  // Only change code below this line


  // Only change code above this line
  try {
    MATH_CONSTANTS.PI = 99;
  } catch(ex) {
    console.log(ex);
  }
  return MATH_CONSTANTS.PI;
}
const PI = freezeObj();
```

# --solutions--

```js
function freezeObj() {
  const MATH_CONSTANTS = {
    PI: 3.14
  };
  Object.freeze(MATH_CONSTANTS);

  try {
    MATH_CONSTANTS.PI = 99;
  } catch(ex) {
    console.log(ex);
  }
  return MATH_CONSTANTS.PI;
}
const PI = freezeObj();
```
