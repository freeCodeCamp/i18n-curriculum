---
id: 587d7b84367417b2b2512b36
title: 'Scovare parentesi tonde, quadre, graffe e virgolette rimaste aperte'
challengeType: 1
forumTopicId: 301190
dashedName: catch-unclosed-parentheses-brackets-braces-and-quotes
---

# --description--

Another syntax error to be aware of is that all opening parentheses, brackets, curly braces, and quotes have a closing pair. Forgetting a piece tends to happen when you're editing existing code and inserting items with one of the pair types. Also, take care when nesting code blocks into others, such as adding a callback function as an argument to a method.

Un modo per evitare questo errore è, non appena viene digitato il carattere di apertura, inserire immediatamente la chiusura corrispondente, quindi spostare il cursore indietro tra di esse e continuare a scrivere. Fortunatamente, la maggior parte degli editor di codice moderni generano automaticamente la seconda metà della coppia.

# --instructions--

Correggi gli errori delle due coppie nel codice.

# --hints--

Il tuo codice dovrebbe aggiungere la parte mancante dell'array.

```js
assert(__helpers.removeJSComments(code).match(/myArray\s*?=\s*?\[\s*?1\s*?,\s*?2\s*?,\s*?3\s*?\];/g));
```

Il tuo codice dovrebbe correggere la parte mancante del metodo `.reduce()`. L'output su console dovrebbe mostrare che `Sum of array values is: 6`.

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
