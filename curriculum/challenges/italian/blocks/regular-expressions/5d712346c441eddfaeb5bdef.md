---
id: 5d712346c441eddfaeb5bdef
title: trova tutti i numeri
challengeType: 1
forumTopicId: 18181
dashedName: match-all-numbers
---

# --description--

Hai imparato scorciatoie per pattern comuni nelle stringhe come quelli alfanumerici. Un altro pattern comune è cercare solo cifre o numeri.

La scorciatoia per cercare caratteri numerici è `\d`, con una `d` minuscola. Questo è uguale alla classe di caratteri `[0-9]`, che cerca un singolo carattere di qualsiasi numero tra zero e nove.

# --instructions--

Usa la classe di caratteri abbreviata `\d` per contare quante cifre ci sono nei titoli dei film. I numeri scritti per esteso ("six" invece di 6) non contano.

# --hints--

La tua espressione regolare dovrebbe usare la scorciatoia per i caratteri numerici

```js
assert(/\\d/.test(numRegex.source));
```

La tua espressione regolare dovrebbe usare la flag globale.

```js
assert(numRegex.global);
```

La tua espressione regolare dovrebbe trovare 1 cifra nella stringa `9`.

```js
assert('9'.match(numRegex).length == 1);
```

La tua espressione regolare dovrebbe trovare 2 cifre nella stringa `Catch 22`.

```js
assert('Catch 22'.match(numRegex).length == 2);
```

La tua espressione regolare dovrebbe trovare 3 cifre nella stringa `101 Dalmatians`.

```js
assert('101 Dalmatians'.match(numRegex).length == 3);
```

La tua espressione regolare non dovrebbe trovare cifre nella stringa `One, Two, Three`.

```js
assert('One, Two, Three'.match(numRegex) == null);
```

La tua espressione regolare dovrebbe trovare 2 cifre nella stringa `21 Jump Street`.

```js
assert('21 Jump Street'.match(numRegex).length == 2);
```

La tua espressione regolare dovrebbe trovare 4 cifre nella stringa `2001: A Space Odyssey`.

```js
assert('2001: A Space Odyssey'.match(numRegex).length == 4);
```

# --seed--

## --seed-contents--

```js
let movieName = "2001: A Space Odyssey";
let numRegex = /change/; // Change this line
let result = movieName.match(numRegex).length;
```

# --solutions--

```js
let movieName = "2001: A Space Odyssey";
let numRegex = /\d/g; // Change this line
let result = movieName.match(numRegex).length;
```
