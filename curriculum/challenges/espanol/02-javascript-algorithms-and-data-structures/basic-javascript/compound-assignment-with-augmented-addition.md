---
id: 56533eb9ac21ba0edf2244af
title: Asignación compuesta con adición aumentada
challengeType: 1
videoUrl: 'https://scrimba.com/c/cDR6LCb'
forumTopicId: 16661
dashedName: compound-assignment-with-augmented-addition
---

# --description--

In programming, it is common to use assignments to modify the contents of a variable. Remember that everything to the right of the equals sign is evaluated first, so we can say:

```js
myVar = myVar + 5;
```

para sumar `5` a `myVar`. Dado que se trata de un patrón tan común, hay operadores que hacen tanto la operación matemática como la asignación en un solo paso.

Uno de estos operadores es el operador `+=`.

```js
let myVar = 1;
myVar += 5;
console.log(myVar);
```

Se mostrará un `6` en la consola.

# --instructions--

Convierte las tareas de `a`, `b`, y `c` para utilizar el operador `+=`.

# --hints--

`a` debe ser igual a `15`.

```js
assert(a === 15);
```

`b` debe ser igual a `26`.

```js
assert(b === 26);
```

`c` debe ser igual a `19`.

```js
assert(c === 19);
```

Debe usar el operador `+=` para cada variable.

```js
assert(__helpers.removeJSComments(code).match(/\+=/g).length === 3);
```

No debe modificar el código sobre el comentario especificado.

```js
assert(
  /let a = 3;/.test(__helpers.removeJSComments(code)) &&
    /let b = 17;/.test(__helpers.removeJSComments(code)) &&
    /let c = 12;/.test(__helpers.removeJSComments(code))
);
```

# --seed--

## --after-user-code--

```js
(function(a,b,c){ return "a = " + a + ", b = " + b + ", c = " + c; })(a,b,c);
```

## --seed-contents--

```js
let a = 3;
let b = 17;
let c = 12;

// Only change code below this line
a = a + 12;
b = 9 + b;
c = c + 7;
```

# --solutions--

```js
let a = 3;
let b = 17;
let c = 12;

a += 12;
b += 9;
c += 7;
```
