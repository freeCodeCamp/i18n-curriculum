---
id: cf1111c1c12feddfaeb3bdef
title: Usa la logica condizionale con le istruzioni if
challengeType: 1
forumTopicId: 18348
dashedName: use-conditional-logic-with-if-statements
---

# --description--

Le istruzioni `if` sono usate per prendere decisioni nel codice. La parola chiave `if` dice a JavaScript di eseguire il codice nelle parentesi graffe sotto certe condizioni, definite nelle parentesi tonde. Queste condizioni sono note come condizioni `Boolean` e possono essere solo `true` o `false`.

Quando la condizione valuta a `true`, il programma esegue l'istruzione dentro le parentesi graffe. Quando la condizione booleana valuta a `false`, l'istruzione dentro le parentesi graffe non viene eseguita.

**Pseudocodice**

<blockquote>if (<i>la condizione è vera</i>) {<br>  <i>l'istruzione viene eseguita</i><br>}</blockquote>

**Esempio**

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

`test(true)` restituisce la stringa `It was true`, e `test(false)` restituisce la stringa `It was false`.

Quando `test` viene chiamata con un valore `true`, l'istruzione `if` valuta `myCondition` per vedere se è `true` o no. Poiché è `true`, la funzione restituisce `It was true`. Quando chiamiamo `test` con un valore `false`, `myCondition` *non* è `true` e l'istruzione nelle parentesi graffe non viene eseguita e la funzione restituisce `It was false`.

# --instructions--

Crea un'istruzione `if` all'interno della funzione per restituire `Yes, that was true` se il parametro `wasThatTrue` è `true` e restituisci `No, that was false` altrimenti.

# --hints--

`trueOrFalse` dovrebbe essere una funzione

```js
assert(typeof trueOrFalse === 'function');
```

`trueOrFalse(true)` dovrebbe restituire una stringa

```js
assert(typeof trueOrFalse(true) === 'string');
```

`trueOrFalse(false)` dovrebbe restituire una stringa

```js
assert(typeof trueOrFalse(false) === 'string');
```

`trueOrFalse(true)` dovrebbe restituire la stringa `Yes, that was true`

```js
assert(trueOrFalse(true) === 'Yes, that was true');
```

`trueOrFalse(false)` dovrebbe restituire la stringa `No, that was false`

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
