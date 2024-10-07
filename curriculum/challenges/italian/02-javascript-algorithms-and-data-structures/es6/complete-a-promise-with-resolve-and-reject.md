---
id: 5cdafbc32913098997531680
title: Completare una promise con resolve e reject
challengeType: 1
forumTopicId: 301196
dashedName: complete-a-promise-with-resolve-and-reject
---

# --description--

A promise has three states: `pending`, `fulfilled`, and `rejected`. The promise you created in the last challenge is forever stuck in the `pending` state because you did not add a way to complete the promise. The `resolve` and `reject` parameters given to the promise argument are used to do this. `resolve` is used when you want your promise to succeed, and `reject` is used when you want it to fail. These are methods that take an argument, as seen below.

```js
const myPromise = new Promise((resolve, reject) => {
  if(condition here) {
    resolve("Promise was fulfilled");
  } else {
    reject("Promise was rejected");
  }
});
```

L'esempio qui sopra utilizza stringhe come argomento di queste funzioni, ma può essere utilizzata davvero qualsiasi cosa. Spesso potrebbe essere un oggetto, di cui potresti voler utilizzare i dati per metterli sul tuo sito web o altrove.

# --instructions--

Fai sì che la promise gestisca il successo e il fallimento. Se `responseFromServer` è `true`, chiama il metodo `resolve` per completare con successo la promise. Passa a `resolve` una stringa di valore `We got the data`. Se invece `responseFromServer` è `false`, utilizza il metodo `reject` e passagli la stringa: `Data not received`.

# --hints--

`resolve` dovrebbe essere chiamato con la stringa prevista quando la condizione dell'`if` è `true`.

```js
assert(
  __helpers.removeJSComments(code).match(/if\s*\(\s*responseFromServer\s*\)\s*{\s*resolve\s*\(\s*('|"|`)We got the data\1\s*\)(\s*|\s*;\s*)}/g)
);
```

`reject` dovrebbe essere chiamato con la stringa prevista quando la condizione dell'`if` è `false`.

```js
assert(
  __helpers.removeJSComments(code).match(/}\s*else\s*{\s*reject\s*\(\s*('|"|`)Data not received\1\s*\)(\s*|\s*;\s*)}/g)
);
```

# --seed--

## --seed-contents--

```js
const makeServerRequest = new Promise((resolve, reject) => {
  // responseFromServer represents a response from a server
  let responseFromServer;

  if(responseFromServer) {
    // Change this line
  } else {  
    // Change this line
  }
});
```

# --solutions--

```js
const makeServerRequest = new Promise((resolve, reject) => {
  // responseFromServer represents a response from a server
  let responseFromServer;

  if(responseFromServer) {
    resolve("We got the data");
  } else {  
    reject("Data not received");
  }
});
```
