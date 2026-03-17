---
id: bd7123c9c450eddfaeb5bdef
title: usa la notazione a parentesi per trovare il carattere n-esimo in una stringa
challengeType: 1
forumTopicId: 18343
dashedName: use-bracket-notation-to-find-the-nth-character-in-a-string
---

# --description--

Puoi anche usare la <dfn>notazione a parentesi</dfn> per ottenere il carattere in altre posizioni all'interno di una stringa.

Ricorda che i computer iniziano a contare da `0`, quindi il primo carattere è in realtà il carattere zero.

Esempio:

```js
const firstName = "Ada";
const secondLetterOfFirstName = firstName[1];
```

`secondLetterOfFirstName` avrebbe il valore della stringa `d`.

# --instructions--

Proviamo a impostare `thirdLetterOfLastName` uguale alla terza lettera della variabile `lastName` usando la notazione a parentesi.

**Suggerimento:** Dai un'occhiata all'esempio sopra se ti blocchi.

# --hints--

La variabile `thirdLetterOfLastName` dovrebbe avere il valore di `v`.

```js
assert(thirdLetterOfLastName === 'v');
```

Dovresti usare la notazione a parentesi.

```js
assert(__helpers.removeJSComments(code).match(/thirdLetterOfLastName\s*=\s*lastName\s*\[\s*\d\s*\]/));
```

# --seed--

## --seed-contents--

```js
// Setup
const lastName = "Lovelace";

// Only change code below this line
const thirdLetterOfLastName = lastName; // Change this line
```

# --solutions--

```js
const lastName = "Lovelace";
const thirdLetterOfLastName = lastName[2];
```
