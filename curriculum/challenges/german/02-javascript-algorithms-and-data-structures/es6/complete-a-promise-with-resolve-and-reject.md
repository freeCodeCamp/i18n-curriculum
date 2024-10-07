---
id: 5cdafbc32913098997531680
title: Vervollständige ein Promise mit resolve und reject
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

Das obige Beispiel verwendet Strings als Argument für diese Funktionen, aber es kann wirklich alles sein. Oft handelt es sich dabei um ein Objekt, dessen Daten du auf deiner Website oder an anderer Stelle verwendest.

# --instructions--

Sorge dafür, dass das Promise mit Erfolg und Misserfolg umgeht. Wenn `responseFromServer`  wahr (`true`) ist, rufe die Methode `resolve` auf, um das Promise erfolgreich abzuschließen. Übergib `resolve` einen String mit dem Wert `We got the data`. Wenn `responseFromServer` falsch (`false`) ist, verwende stattdessen die Methode `reject` und übergebe ihr den String: `Data not received`.

# --hints--

`resolve` sollte mit dem erwarteten String aufgerufen werden, wenn die `if`-Bedingung `true` ist.

```js
assert(
  __helpers.removeJSComments(code).match(/if\s*\(\s*responseFromServer\s*\)\s*{\s*resolve\s*\(\s*('|"|`)We got the data\1\s*\)(\s*|\s*;\s*)}/g)
);
```

`reject` sollte mit dem erwarteten String aufgerufen werden, wenn die `if`-Bedingung `false` ist.

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
