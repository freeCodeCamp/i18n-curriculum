---
id: bd7123c9c441eddfaeb4bdef
title: Commenta il tuo codice JavaScript
challengeType: 1
forumTopicId: 16783
dashedName: comment-your-javascript-code
---

# --description--

I commenti sono righe di codice che JavaScript ignorerà intenzionalmente. I commenti sono un ottimo modo per lasciare note a te stesso e ad altre persone che in seguito dovranno capire cosa fa quel codice.

Ci sono due modi per scrivere commenti in JavaScript:

Usare `//` dice a JavaScript di ignorare il resto del testo sulla riga corrente. Questo è un commento in linea:

```js
// This is an in-line comment.
```

Puoi fare un commento su più righe iniziando con `/*` e terminando con `*/`. Questo è un commento multilinea:

```js
/* This is a
multi-line comment */
```

**NOTA:** Mentre scrivi codice, dovresti aggiungere regolarmente commenti per chiarire la funzione delle parti del tuo codice. Un buon commento può aiutare a comunicare l’intento del tuo codice — sia agli altri *che* a te stesso in futuro.

# --instructions--

Prova a creare uno di ciascun tipo di commento.

# --hints--

Dovresti creare un commento in stile `//` che contenga almeno cinque lettere.

```js
assert(code.match(/(\/\/)...../g));
```

Dovresti creare un commento in stile `/* */` che contenga almeno cinque lettere.

```js
assert(code.match(/(\/\*)([^\/]{5,})(?=\*\/)/gm));
```

# --seed--

## --seed-contents--

```js

```

# --solutions--

```js
// Fake Comment
/* Another Comment */
```
