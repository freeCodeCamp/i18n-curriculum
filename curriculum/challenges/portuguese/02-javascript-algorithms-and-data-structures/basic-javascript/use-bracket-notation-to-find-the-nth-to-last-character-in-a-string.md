---
id: bd7123c9c452eddfaeb5bdef
title: Usar notação de colchetes para descobrir o enésimo caractere antes do último em uma string
challengeType: 1
videoUrl: 'https://scrimba.com/c/cw4vkh9'
forumTopicId: 18344
dashedName: use-bracket-notation-to-find-the-nth-to-last-character-in-a-string
---

# --description--

You can use the same principle we just used to retrieve the last character in a string to retrieve the Nth-to-last character.

Por exemplo, você pode pegar o valor da antepenúltima letra da string `const firstName = "Augusta"` usando `firstName[firstName.length - 3]`

Exemplo:

```js
const firstName = "Augusta";
const thirdToLastLetter = firstName[firstName.length - 3];
```

`thirdToLastLetter` teria o valor da string `s`.

# --instructions--

Use <dfn>notação de colchetes</dfn> para descobrir o penúltimo caractere na string `lastName`.

**Dica:** Tente olhar o exemplo acima se você ficar travado.

# --hints--

`secondToLastLetterOfLastName` deve ser a letra `c`.

```js
assert(secondToLastLetterOfLastName === 'c');
```

Você deve usar `.length` para pegar a penúltima letra.

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
