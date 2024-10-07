---
id: 587d7b85367417b2b2512b39
title: Scoprire la mancanza di parentesi aperte o chiuse dopo la chiamata di una funzione
challengeType: 1
forumTopicId: 301185
dashedName: catch-missing-open-and-closing-parenthesis-after-a-function-call
---

# --description--

When a function or method doesn't take any arguments, you may forget to include the (empty) opening and closing parentheses when calling it. Often times the result of a function call is saved in a variable for other use in your code. This error can be detected by logging variable values (or their types) to the console and seeing that one is set to a function reference, instead of the expected value the function returns.

Le variabili nell'esempio seguente sono diverse:

```js
function myFunction() {
  return "You rock!";
}
let varOne = myFunction;
let varTwo = myFunction();
```

Qui `varOne` è la funzione `myFunction` e `varTwo` è la stringa `You rock!`.

# --instructions--

Correggi il codice in modo che la variabile `result` sia impostata al valore restituito dalla funzione `getNine`.

# --hints--

Il tuo codice dovrebbe correggere la variabile `result` in modo da impostarla sul numero che la funzione `getNine` restituisce.

```js
assert(result == 9);
```

Il tuo codice dovrebbe chiamare la funzione `getNine`.

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
