---
id: 587d7b86367417b2b2512b3d
title: Impedire cicli infiniti con una condizione di chiusura valida
challengeType: 1
forumTopicId: 301192
dashedName: prevent-infinite-loops-with-a-valid-terminal-condition
---

# --description--

The final topic is the dreaded infinite loop. Loops are great tools when you need your program to run a code block a certain number of times or until a condition is met, but they need a terminal condition that ends the looping. Infinite loops are likely to freeze or crash the browser, and cause general program execution mayhem, which no one wants.

C'era l'esempio di un ciclo infinito nell'introduzione di questa sezione - non aveva alcuna condizione di chiusura per uscire dal ciclo `while` dentro `loopy()`. NON chiamare questa funzione!

```js
function loopy() {
  while(true) {
    console.log("Hello, world!");
  }
}
```

È compito del programmatore garantire che la condizione di uscita, che dice al programma quando uscire dal ciclo, venga raggiunta. Un errore sta nell'incrementare o decrementare una variabile contatore nella direzione sbagliata rispetto alla condizione di uscita. Un altro è il ripristino accidentale di una variabile contatore o indice all'interno del codice del ciclo, invece di incrementarla o diminuirla.

# --instructions--

La funzione `myFunc()` contiene un ciclo infinito perché la condizione terminale `i != 4` non sarà mai valutata come `false` (interrompendo così il ciclo) - `i` incrementerà di 2 ad ogni passo, e salterà al di là di 4, dal momento che `i` parte con un numero dispari. Correggi l'operatore di confronto nella condizione di uscita in modo che il ciclo funzioni solo per `i` minore o uguale a 4.

# --hints--

Il tuo codice dovrebbe cambiare l'operatore di confronto nella condizione di chiusura (la parte centrale) del ciclo `for`.

```js
assert(__helpers.removeJSComments(code).match(/i\s*?<=\s*?4;/g).length == 1);
```

Il tuo codice dovrebbe aggiustare l'operatore di confronto nella condizione di chiusura del ciclo.

```js
assert(!__helpers.removeJSComments(code).match(/i\s*?!=\s*?4;/g));
```

# --seed--

## --seed-contents--

```js
function myFunc() {
  for (let i = 1; i != 4; i += 2) {
    console.log("Still going!");
  }
}
```

# --solutions--

```js
function myFunc() {
 for (let i = 1; i <= 4; i += 2) {
   console.log("Still going!");
 }
}
```
