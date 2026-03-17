---
id: bd7123c9c444eddfaeb5bdef
title: Dichiarare variabili stringa
challengeType: 1
forumTopicId: 17557
dashedName: declare-string-variables
---

# --description--

In precedenza hai usato il seguente codice per dichiarare una variabile:

```js
var myName;
```

Ma puoi anche dichiarare una variabile stringa in questo modo:

```js
var myName = "your name";
```

`"your name"` è chiamato un <dfn>letterale</dfn> <dfn>stringa</dfn>. Un letterale stringa, o stringa, è una serie di zero o più caratteri racchiusi tra virgolette singole o virgolette doppie.

# --instructions--

Crea due nuove variabili stringa: `myFirstName` e `myLastName` e assegna loro i valori del tuo nome e cognome, rispettivamente.

# --hints--

`myFirstName` dovrebbe essere una stringa con almeno un carattere.

```js
assert(
  (function () {
    if (
      typeof myFirstName !== 'undefined' &&
      typeof myFirstName === 'string' &&
      myFirstName.length > 0
    ) {
      return true;
    } else {
      return false;
    }
  })()
);
```

`myLastName` dovrebbe essere una stringa con almeno un carattere.

```js
assert(
  (function () {
    if (
      typeof myLastName !== 'undefined' &&
      typeof myLastName === 'string' &&
      myLastName.length > 0
    ) {
      return true;
    } else {
      return false;
    }
  })()
);
```

# --seed--

## --seed-contents--

```js

```

# --solutions--

```js
var myFirstName = "Alan";
var myLastName = "Turing";
```
