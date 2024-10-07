---
id: 587d7b85367417b2b2512b3a
title: Scovare argomenti passati nell'ordine sbagliato quando si chiama una funzione
challengeType: 1
forumTopicId: 301184
dashedName: catch-arguments-passed-in-the-wrong-order-when-calling-a-function
---

# --description--

Continuing the discussion on calling functions, the next bug to watch out for is when a function's arguments are supplied in the incorrect order. If the arguments are different types, such as a function expecting an array and an integer, this will likely throw a runtime error. If the arguments are the same type (all integers, for example), then the logic of the code won't make sense. Make sure to supply all required arguments, in the proper order to avoid these issues.

# --instructions--

La funzione `raiseToPower` eleva una base ad un esponente. Purtroppo, non è chiamata correttamente - correggi il codice in modo che il valore di `power` sia 8 come previsto.

# --hints--

Il tuo codice dovrebbe correggere la variabile `power` in modo che sia uguale a 2 elevato alla terza potenza, non 3 elevato alla seconda potenza.

```js
assert(power == 8);
```

Il tuo codice dovrebbe utilizzare l'ordine corretto degli argomenti per la chiamata della funzione `raiseToPower`.

```js
assert(__helpers.removeJSComments(code).match(/raiseToPower\(\s*?base\s*?,\s*?exp\s*?\);/g));
```

# --seed--

## --seed-contents--

```js
function raiseToPower(b, e) {
  return Math.pow(b, e);
}

let base = 2;
let exp = 3;
let power = raiseToPower(exp, base);
console.log(power);
```

# --solutions--

```js
function raiseToPower(b, e) {
 return Math.pow(b, e);
}

let base = 2;
let exp = 3;
let power = raiseToPower(base, exp);
console.log(power);
```
