---
id: 587d7b84367417b2b2512b34
title: Usare typeof per controllare il tipo di una variabile
challengeType: 1
forumTopicId: 18374
dashedName: use-typeof-to-check-the-type-of-a-variable
---

# --description--

You can use `typeof` to check the data structure, or type, of a variable. This is useful in debugging when working with multiple data types. If you think you're adding two numbers, but one is actually a string, the results can be unexpected. Type errors can lurk in calculations or function calls. Be careful especially when you're accessing and working with external data in the form of a JavaScript Object Notation (JSON) object.

Ecco alcuni esempi che usano `typeof`:

```js
console.log(typeof "");
console.log(typeof 0);
console.log(typeof []);
console.log(typeof {});
```

Nell'ordine, la console visualizzerà le stringhe `string`, `number`, `object`, e `object`.

JavaScript riconosce sette tipi di dati primitivi (immutabili): `Boolean`, `Null`, `Undefined`, `Number`, `String`, `Symbol` (introdotto con ES6), e `BigInt` (introdotto con ES2020), e un tipo per gli oggetti mutabili: `Object`. Nota che in JavaScript, gli array sono tecnicamente un tipo di oggetto.

# --instructions--

Aggiungi due istruzioni `console.log()` per controllare il `typeof` di ciascuna delle due variabili `seven` e `three` nel codice.

# --hints--

Il tuo codice dovrebbe utilizzare `typeof` in due istruzioni `console.log()` per controllare il tipo delle variabili.

```js
assert(__helpers.removeJSComments(code).match(/console\.log\s*\(typeof[\( ].*\)?\)/g).length == 2);
```

Il tuo codice dovrebbe utilizzare `typeof` per controllare il tipo della variabile `seven`.

```js
assert(__helpers.removeJSComments(code).match(/typeof[\( ]seven\)?/g));
```

Il tuo codice dovrebbe utilizzare `typeof` per controllare il tipo della variabile `three`.

```js
assert(__helpers.removeJSComments(code).match(/typeof[\( ]three\)?/g));
```

# --seed--

## --seed-contents--

```js
let seven = 7;
let three = "3";
console.log(seven + three);
// Only change code below this line
```

# --solutions--

```js
let seven = 7;let three = "3";console.log(typeof seven);
console.log(typeof three);
```
