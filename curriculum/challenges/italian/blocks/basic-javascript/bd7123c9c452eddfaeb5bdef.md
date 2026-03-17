---
id: bd7123c9c452eddfaeb5bdef
title: Usa la notazione a parentesi per trovare il carattere n-esimo dalla fine di una stringa
challengeType: 1
forumTopicId: 18344
dashedName: use-bracket-notation-to-find-the-nth-to-last-character-in-a-string
---

# --description--

Puoi usare lo stesso principio che abbiamo appena usato per recuperare l'ultimo carattere di una stringa per trovare il carattere n-esimo dalla fine.

Ad esempio, puoi ottenere il valore della terzultima lettera della stringa `const firstName = "Augusta"` usando `firstName[firstName.length - 3]`

Esempio:

```js
const firstName = "Augusta";
const thirdToLastLetter = firstName[firstName.length - 3];
```

`thirdToLastLetter` avrebbe il valore della stringa `s`.

# --instructions--

Usa la <dfn>notazione a parentesi</dfn> per trovare il penultimo carattere nella stringa `lastName`.

**Suggerimento:** Prova a guardare l'esempio sopra se ti blocchi.

# --hints--

`secondToLastLetterOfLastName` dovrebbe essere la lettera `c`.

```js
assert(secondToLastLetterOfLastName === 'c');
```

Dovresti usare `.length` per ottenere la penultima lettera.

```js
assert(__helpers.removeJSComments(code).match(/\.length/g).length > 0);
```

# --seed--

## --seed-contents--

```js
// Setup
const lastName = "Lovelace";

// Only change code below this line
const secondToLastLetterOfLastName = lastName; // Change this line
```

# --solutions--

```js
const lastName = "Lovelace";
const secondToLastLetterOfLastName = lastName[lastName.length - 2];
```
