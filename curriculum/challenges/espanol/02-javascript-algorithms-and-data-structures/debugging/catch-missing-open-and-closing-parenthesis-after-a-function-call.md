---
id: 587d7b85367417b2b2512b39
title: Captura los paréntesis de apertura y cierre que faltan después de una llamada a una función
challengeType: 1
forumTopicId: 301185
dashedName: catch-missing-open-and-closing-parenthesis-after-a-function-call
---

# --description--

When a function or method doesn't take any arguments, you may forget to include the (empty) opening and closing parentheses when calling it. Often times the result of a function call is saved in a variable for other use in your code. This error can be detected by logging variable values (or their types) to the console and seeing that one is set to a function reference, instead of the expected value the function returns.

Las variables del siguiente ejemplo son diferentes:

```js
function myFunction() {
  return "You rock!";
}
let varOne = myFunction;
let varTwo = myFunction();
```

Aquí `varOne` es la función `myFunction`, y `varTwo` es la cadena `You rock!`.

# --instructions--

Corrige el código para que la variable `result` se establezca en el valor devuelto al llamar a la función `getNine`.

# --hints--

Tu código debe corregir la variable `result` para que se establezca en el número que devuelve la función `getNine`.

```js
assert(result == 9);
```

Tu código debe llamar a la función `getNine`.

```js
assert(__helpers.removeJSComments(code).match(/getNine\(\)/g).length == 2);
```

# --seed--

## --seed-contents--

```js
function getNine() {
  let x = 6;
  let y = 3;
  return x + y;
}

let result = getNine;
console.log(result);
```

# --solutions--

```js
function getNine() {
 let x = 6;
 let y = 3;
 return x + y;
}

let result = getNine();
console.log(result);
```
