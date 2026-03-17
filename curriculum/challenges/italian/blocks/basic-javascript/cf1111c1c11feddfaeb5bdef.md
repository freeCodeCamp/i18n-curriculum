---
id: cf1111c1c11feddfaeb5bdef
title: Iterare con i loop for in JavaScript
challengeType: 1
forumTopicId: 18219
dashedName: iterate-with-javascript-for-loops
---

# --description--

Puoi eseguire lo stesso codice più volte usando un loop.

Il tipo di loop più comune in JavaScript si chiama loop `for` perché viene eseguito per un numero specifico di volte.

I loop for si dichiarano con tre espressioni opzionali separate da punti e virgola:

`for (a; b; c)`, dove `a` è l’istruzione di inizializzazione, `b` è l’istruzione condizionale e `c` è l’espressione finale.

L’istruzione di inizializzazione viene eseguita una sola volta prima che il loop inizi. Di solito serve a definire e impostare la variabile del loop.

L’istruzione condizionale viene valutata all’inizio di ogni iterazione del loop e continua finché risulta `true`. Quando la condizione è `false` all’inizio dell’iterazione, il loop smette di eseguire. Questo significa che se la condizione è falsa all’inizio, il loop non verrà mai eseguito.

L’espressione finale viene eseguita alla fine di ogni iterazione del loop, prima del controllo della condizione successiva, e di solito serve a incrementare o decrementare il contatore del loop.

Nell’esempio seguente inizializziamo con `i = 0` e iteriamo finché la nostra condizione `i < 5` è vera. Incrementeremo `i` di `1` in ogni iterazione con `i++` come espressione finale.

```js
const ourArray = [];

for (let i = 0; i < 5; i++) {
  ourArray.push(i);
}
```

`ourArray` avrà ora il valore `[0, 1, 2, 3, 4]`.

# --instructions--

Usa un loop `for` per inserire i valori da 1 a 5 in `myArray`.

# --hints--

Dovresti usare un loop `for` per questo.

```js
assert(/for\s*\([^)]+?\)/.test(__helpers.removeJSComments(code)));
```

`myArray` dovrebbe essere uguale a `[1, 2, 3, 4, 5]`.

```js
assert.deepEqual(myArray, [1, 2, 3, 4, 5]);
```

# --seed--

## --seed-contents--

```js
// Setup
const myArray = [];

// Only change code below this line

```

# --solutions--

```js
const myArray = [];
for (let i = 1; i < 6; i++) {
  myArray.push(i);
}
```
