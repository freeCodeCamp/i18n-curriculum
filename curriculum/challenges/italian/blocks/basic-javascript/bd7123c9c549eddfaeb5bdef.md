---
id: bd7123c9c549eddfaeb5bdef
title: Usa la notazione a parentesi per trovare il primo carattere di una stringa
challengeType: 1
forumTopicId: 18341
dashedName: use-bracket-notation-to-find-the-first-character-in-a-string
---

# --description--

La <dfn>notazione a parentesi</dfn> è un modo per ottenere un carattere a un indice specifico all'interno di una stringa.

La maggior parte dei linguaggi di programmazione moderni, come JavaScript, non inizia a contare da 1 come fanno gli esseri umani. Iniziano da 0. Questo si chiama indicizzazione <dfn>a base zero</dfn>.

Per esempio, il carattere all'indice 0 nella parola `Charles` è `C`. Quindi se `const firstName = "Charles"`, puoi ottenere il valore della prima lettera della stringa usando `firstName[0]`.

Esempio:

```js
const firstName = "Charles";
const firstLetter = firstName[0];
```

`firstLetter` avrebbe il valore della stringa `C`.

# --instructions--

Usa la notazione a parentesi per trovare il primo carattere nella variabile `lastName` e assegnalo a `firstLetterOfLastName`.

**Suggerimento:** Prova a guardare l'esempio sopra se ti blocchi.

# --hints--

La variabile `firstLetterOfLastName` dovrebbe avere il valore di `L`.

```js
assert(firstLetterOfLastName === 'L');
```

Dovresti usare la notazione a parentesi.

```js
assert(__helpers.removeJSComments(code).match(/firstLetterOfLastName\s*=\s*lastName\s*\[\s*\d\s*\]/));
```

# --seed--

## --seed-contents--

```js
// Setup
let firstLetterOfLastName = "";
const lastName = "Lovelace";

// Only change code below this line
firstLetterOfLastName = lastName; // Change this line
```

# --solutions--

```js
let firstLetterOfLastName = "";
const lastName = "Lovelace";

// Only change code below this line
firstLetterOfLastName = lastName[0];
```
