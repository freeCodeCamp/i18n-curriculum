---
id: 56533eb9ac21ba0edf2244ac
title: Incrementare un numero con JavaScript
challengeType: 1
videoUrl: 'https://scrimba.com/c/ca8GLT9'
forumTopicId: 18201
dashedName: increment-a-number-with-javascript
---

# --description--

You can easily <dfn>increment</dfn> or add one to a variable with the `++` operator.

```js
i++;
```

è equivalente a

```js
i = i + 1;
```

**Nota:** L'intera linea diventa `i++;`, eliminando la necessità di un segno uguale.

# --instructions--

Cambia il codice per utilizzare l'operatore `++` su `myVar`.

# --hints--

`myVar` dovrebbe essere uguale a `88`.

```js
assert(myVar === 88);
```

Non dovresti utilizzare l'operatore di assegnazione.

```js
assert(
  /let\s*myVar\s*=\s*87;\s*\/*.*\s*([+]{2}\s*myVar|myVar\s*[+]{2})/.test(__helpers.removeJSComments(code))
);
```

Dovresti usare l'operatore `++`.

```js
assert(/[+]{2}\s*myVar|myVar\s*[+]{2}/.test(__helpers.removeJSComments(code)));
```

Non dovresti modificare il codice sopra il commento specificato.

```js
assert(/let myVar = 87;/.test(__helpers.removeJSComments(code)));
```

# --seed--

## --after-user-code--

```js
(function(z){return 'myVar = ' + z;})(myVar);
```

## --seed-contents--

```js
let myVar = 87;

// Only change code below this line
myVar = myVar + 1;
```

# --solutions--

```js
let myVar = 87;
myVar++;
```
