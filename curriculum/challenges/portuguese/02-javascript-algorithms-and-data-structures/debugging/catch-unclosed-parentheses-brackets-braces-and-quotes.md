---
id: 587d7b84367417b2b2512b36
title: 'Identificar parênteses, colchetes, chaves e aspas sem fechamento'
challengeType: 1
forumTopicId: 301190
dashedName: catch-unclosed-parentheses-brackets-braces-and-quotes
---

# --description--

Another syntax error to be aware of is that all opening parentheses, brackets, curly braces, and quotes have a closing pair. Forgetting a piece tends to happen when you're editing existing code and inserting items with one of the pair types. Also, take care when nesting code blocks into others, such as adding a callback function as an argument to a method.

Uma maneira de evitar esse erro é, assim que o caractere de abertura é digitado, incluir imediatamente o caractere de fechamento, mover o cursor entre eles e continuar programando. Felizmente, a maioria dos editores de código modernos geram a segunda parte do par automaticamente.

# --instructions--

Corrija os dois erros de pares no código.

# --hints--

O código deve corrigir o pedaço que falta do array.

```js
assert(__helpers.removeJSComments(code).match(/myArray\s*?=\s*?\[\s*?1\s*?,\s*?2\s*?,\s*?3\s*?\];/g));
```

O código deve corrigir o pedaço que falta do método `.reduce()`. A saída no console deve mostrar que `Sum of array value is: 6`.

```js
assert(arraySum === 6);
```

# --seed--

## --seed-contents--

```js
let myArray = [1, 2, 3;
let arraySum = myArray.reduce((previous, current =>  previous + current);
console.log(`Sum of array values is: ${arraySum}`);
```

# --solutions--

```js
let myArray = [1, 2, 3];
let arraySum = myArray.reduce((previous, current) =>  previous + current);
console.log(`Sum of array values is: ${arraySum}`);
```
