---
id: bd7123c9c448eddfaeb5bdef
title: Trovare la lunghezza di una stringa
challengeType: 1
forumTopicId: 18182
dashedName: find-the-length-of-a-string
---

# --description--

Puoi trovare la lunghezza di un valore `String` scrivendo `.length` dopo la variabile stringa o la stringa letterale.

```js
console.log("Alan Peter".length);
```

Il valore `10` verrebbe mostrato nella console. Nota che anche il carattere spazio tra "Alan" e "Peter" viene contato.

Per esempio, se creassimo una variabile `const firstName = "Ada"`, potremmo scoprire quanto è lunga la stringa `Ada` usando la proprietà `firstName.length`.

# --instructions--

Usa la proprietà `.length` per impostare `lastNameLength` al numero di caratteri in `lastName`.

# --hints--

Non dovresti modificare le dichiarazioni delle variabili nella sezione `// Setup`.

```js
assert(
  __helpers.removeJSComments(code).match(/let lastNameLength = 0;/) &&
    __helpers.removeJSComments(code).match(/const lastName = "Lovelace";/)
);
```

`lastNameLength` dovrebbe essere uguale a otto.

```js
assert(typeof lastNameLength !== 'undefined' && lastNameLength === 8);
```

Dovresti ottenere la lunghezza di `lastName` usando `.length` in questo modo: `lastName.length`.

```js
assert(__helpers.removeJSComments(code).match(/=\s*lastName\.length/g) && !__helpers.removeJSComments(code).match(/lastName\s*=\s*8/));
```

# --seed--

## --seed-contents--

```js
// Setup
let lastNameLength = 0;
const lastName = "Lovelace";

// Only change code below this line
lastNameLength = lastName;
```

# --solutions--

```js
let lastNameLength = 0;
const lastName = "Lovelace";
lastNameLength = lastName.length;
```
