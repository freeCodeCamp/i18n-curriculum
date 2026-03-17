---
id: 6551eebe6cbb2e6cadf9b468
title: Passaggio 2
challengeType: 20
dashedName: step-2
---

# --description--

Le variabili possono archiviare valori di tipi di dati diversi. Hai appena assegnato un valore intero, ma se vuoi rappresentare del testo, devi assegnare una stringa. Le stringhe sono sequenze di caratteri racchiuse tra virgolette singole o doppie, ma non puoi iniziare una stringa con una virgoletta singola e finirla con una virgoletta doppia o viceversa:

```py
string_1 = "I am a string"
string_2 = 'I am also a string'
string_3 = 'This is not valid"
```

Elimina la tua variabile `number` e il suo valore. Poi, dichiara un’altra variabile chiamata `text` e assegna a questa variabile la stringa `'Hello World'`.

# --hints--

Non dovresti avere `number = 5` nel tuo codice.

```js
const commentless_code = __helpers.python.removeComments(code);
assert.isFalse(/number\s*=\s*5/.test(commentless_code))
```

Dovresti dichiarare una variabile chiamata `text`. Fai attenzione a mettere il nome della variabile all’inizio della riga.

```js
assert.match(code, /^text\s*=/m)
```

Dovresti assegnare la stringa `'Hello World'` alla tua variabile `text`. Ricorda di usare virgolette singole o doppie per racchiudere la stringa e fai attenzione alle maiuscole e minuscole.

```js
assert.match(code, /^text\s*=\s*("|')Hello World\1\s*(#.*)?$/m)
```

Il tuo codice contiene sintassi e/o indentazione non valide.

```js
({test: () => assert(true) })
```

# --seed--

## --seed-contents--

```py
--fcc-editable-region--
number = 5
--fcc-editable-region--
```
