---
id: 56533eb9ac21ba0edf2244c3
title: Assegnazione con un valore restituito
challengeType: 1
forumTopicId: 16658
dashedName: assignment-with-a-returned-value
---

# --description--

If you'll recall from our discussion about <a href="/learn/javascript-algorithms-and-data-structures/basic-javascript/storing-values-with-the-assignment-operator" target="_blank" rel="noopener noreferrer nofollow">Storing Values with the Assignment Operator</a>, everything to the right of the equal sign is resolved before the value is assigned. This means we can take the return value of a function and assign it to a variable.

Supponiamo di avere definito una funzione `sum` che somma due numeri.

```js
ourSum = sum(5, 12);
```

Chiamare la funzione `sum` con gli argomenti `5` e `12` produce un valore di ritorno di `17`. Questo valore di ritorno è assegnato alla variabile `ourSum`.

# --instructions--

Chiama la funzione `processArg` con un argomento di `7` e assegna il valore che restituisce alla variabile `processed`.

# --hints--

`b` dovrebbe avere un valore di `2`

```js
assert(processed === 2);
```

Dovresti assegnare `processArg` a `processed`

```js
assert(/processed\s*=\s*processArg\(\s*7\s*\)/.test(__helpers.removeJSComments(code)));
```

# --seed--

## --after-user-code--

```js
(function(){return "processed = " + processed})();
```

## --seed-contents--

```js
// Setup
let processed = 0;

function processArg(num) {
  return (num + 3) / 5;
}

// Only change code below this line

```

# --solutions--

```js
var processed = 0;

function processArg(num) {
  return (num + 3) / 5;
}

processed = processArg(7);
```
