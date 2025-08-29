---
id: 587d7b84367417b2b2512b35
title: Scovare i nomi di funzioni e variabili scritti male
challengeType: 1
forumTopicId: 301186
dashedName: catch-misspelled-variable-and-function-names
---

# --description--

The `console.log()` and `typeof` methods are the two primary ways to check intermediate values and types of program output. Now it's time to get into the common forms that bugs take. One syntax-level issue that fast typers can commiserate with is the humble spelling error.

Caratteri traslati, mancanti o sbagliati nel nome di una variabile o di una funzione porteranno il browser a cercare un oggetto che non esiste e a segnalare un errore di riferimento. In JavaScript, le variabili e i nomi di funzione sono sensibili alle maiuscole.

# --instructions--

Correggi i due errori di ortografia nel codice in modo che il calcolo di `netWorkingCapital` funzioni.

# --hints--

Controlla l'ortografia delle due variabili utilizzate nel calcolo di netWorkingCapital, l'output della console dovrebbe mostrare che "Net working capital is: 2".

```js
assert(netWorkingCapital === 2);
```

Non ci dovrebbero essere casi di variabili scritte male nel codice.

```js
assert(!__helpers.removeJSComments(code).match(/recievables/g));
```

La variabile `receivables` dovrebbe essere dichiarata e utilizzata correttamente nel codice.

```js
assert(__helpers.removeJSComments(code).match(/receivables/g).length == 2);
```

Non ci dovrebbero essere casi di variabili scritte male nel codice.

```js
assert(!__helpers.removeJSComments(code).match(/payable;/g));
```

La variabile `payables` dovrebbe essere dichiarata e utilizzata correttamente nel codice.

```js
assert(__helpers.removeJSComments(code).match(/payables/g).length == 2);
```

# --seed--

## --seed-contents--

```js
let receivables = 10;
let payables = 8;
let netWorkingCapital = recievables - payable;
console.log(`Net working capital is: ${netWorkingCapital}`);
```

# --solutions--

```js
let receivables = 10;
let payables = 8;
let netWorkingCapital = receivables - payables;
console.log(`Net working capital is: ${netWorkingCapital}`);
```
