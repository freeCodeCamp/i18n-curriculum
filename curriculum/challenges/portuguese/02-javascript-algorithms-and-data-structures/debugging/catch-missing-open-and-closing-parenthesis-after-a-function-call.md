---
id: 587d7b85367417b2b2512b39
title: Capturar abertura e fechamento de parênteses faltantes após uma chamada de função
challengeType: 1
forumTopicId: 301185
dashedName: catch-missing-open-and-closing-parenthesis-after-a-function-call
---

# --description--

When a function or method doesn't take any arguments, you may forget to include the (empty) opening and closing parentheses when calling it. Often times the result of a function call is saved in a variable for other use in your code. This error can be detected by logging variable values (or their types) to the console and seeing that one is set to a function reference, instead of the expected value the function returns.

As variáveis no seguinte exemplo são diferentes:

```js
function myFunction() {
  return "You rock!";
}
let varOne = myFunction;
let varTwo = myFunction();
```

Aqui `varOne` é a função `myFunction` e `varTwo` é a string `You rock!`.

# --instructions--

Corrija o código para que a variável `result` seja definida para o valor retornado da chamada da função `getNine`.

# --hints--

O código deve corrigir a variável `result` para que seja definida para o número que a função `getNine` retorna.

```js
assert(result == 9);
```

O código deve chamar a função `getNine`.

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
