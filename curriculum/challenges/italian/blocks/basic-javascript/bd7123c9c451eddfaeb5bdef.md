---
id: bd7123c9c451eddfaeb5bdef
title: Usa la notazione a parentesi per trovare l'ultimo carattere di una stringa
challengeType: 1
forumTopicId: 18342
dashedName: use-bracket-notation-to-find-the-last-character-in-a-string
---

# --description--

Per ottenere l'ultima lettera di una stringa, puoi sottrarre uno dalla lunghezza della stringa.

Per esempio, se `const firstName = "Ada"`, puoi ottenere il valore dell'ultima lettera della stringa usando `firstName[firstName.length - 1]`.

Esempio:

```js
const firstName = "Ada";
const lastLetter = firstName[firstName.length - 1];
```

`lastLetter` avrebbe un valore pari alla stringa `a`.

# --instructions--

Usa la <dfn>notazione a parentesi</dfn> per trovare l'ultimo carattere nella variabile `lastName`.

**Suggerimento:** Prova a guardare l'esempio sopra se ti blocchi.

# --hints--

`lastLetterOfLastName` dovrebbe essere la lettera `e`.

```js
assert(lastLetterOfLastName === 'e');
```

Dovresti usare `.length` per ottenere l'ultima lettera.

```js
assert(__helpers.removeJSComments(code).match(/\.length/g).length > 0);
```

# --seed--

## --seed-contents--

```js
// Setup
const lastName = "Lovelace";

// Only change code below this line
const lastLetterOfLastName = lastName; // Change this line
```

# --solutions--

```js
const lastName = "Lovelace";
const lastLetterOfLastName = lastName[lastName.length - 1];
```
