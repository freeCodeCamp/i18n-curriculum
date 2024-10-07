---
id: 5cdafbc32913098997531680
title: Concluir uma promessa com resolve e reject
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

O exemplo acima usa strings como argumento desses métodos, mas você pode passar qualquer outro tipo de dado. Geralmente, é passado um objeto para esses métodos. Assim você pode acessar as propriedades deste objeto e usá-las em seu site ou em qualquer outro lugar.

# --instructions--

Adapte a promessa para ambas as situações de sucesso e fracasso. Se `responseFromServer` for `true`, chame o método `resolve` para completar a promessa com sucesso. Passe a string `We got the data` como argumento para o método `resolve`. Se `responseFromServer` for `false`, passe a string `Data not received` como argumento para o método `reject`.

# --hints--

O método `resolve` deve ser chamado com a string informada anteriormente quando a condição do `if` for `true`.

```js
assert(
  __helpers.removeJSComments(code).match(/if\s*\(\s*responseFromServer\s*\)\s*{\s*resolve\s*\(\s*('|"|`)We got the data\1\s*\)(\s*|\s*;\s*)}/g)
);
```

O método `reject` deve ser chamado com a string informada anteriormente quando a condição do `if` for `false`.

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
