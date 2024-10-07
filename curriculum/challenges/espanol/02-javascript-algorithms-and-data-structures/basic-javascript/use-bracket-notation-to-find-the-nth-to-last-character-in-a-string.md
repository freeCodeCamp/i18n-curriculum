---
id: bd7123c9c452eddfaeb5bdef
title: Utiliza la notación de corchetes para encontrar el carácter enésimo final en una cadena
challengeType: 1
videoUrl: 'https://scrimba.com/c/cw4vkh9'
forumTopicId: 18344
dashedName: use-bracket-notation-to-find-the-nth-to-last-character-in-a-string
---

# --description--

You can use the same principle we just used to retrieve the last character in a string to retrieve the Nth-to-last character.

Por ejemplo, puedes obtener el valor de la antepenúltima letra de la cadena `const firstName = "Augusta"` usando `firstName[firstName.length - 3]`

Ejemplo:

```js
const firstName = "Augusta";
const thirdToLastLetter = firstName[firstName.length - 3];
```

`thirdToLastLetter` tendrá una cadena con valor `s`.

# --instructions--

Usa <dfn>notación de corchetes</dfn> para encontrar el penúltimo carácter en la cadena `lastName`.

**Sugerencia:** Intenta mirar el ejemplo de arriba si te quedas atascado.

# --hints--

`secondToLastLetterOfLastName` debe ser la letra `c`.

```js
assert(secondToLastLetterOfLastName === 'c');
```

Debes usar `.length` para obtener la penúltima letra.

```js
assert(__helpers.removeJSComments(code).match(/\.length/g).length > 0);
```

# --seed--

## --after-user-code--

```js
(function(v){return v;})(secondToLastLetterOfLastName);
```

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
