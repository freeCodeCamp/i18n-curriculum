---
id: 587d78b2367417b2b2512b0e
title: Aggiungere elementi ad un array con push() e unshift()
challengeType: 1
forumTopicId: 301151
dashedName: add-items-to-an-array-with-push-and-unshift
---

# --description--

An array's length, like the data types it can contain, is not fixed. Arrays can be defined with a length of any number of elements, and elements can be added or removed over time; in other words, arrays are <dfn>mutable</dfn>. In this challenge, we will look at two methods with which we can programmatically modify an array: `Array.push()` and `Array.unshift()`.

Entrambi i metodi prendono uno o più elementi come parametri e aggiungono questi elementi all'array su cui il metodo è stato chiamato; il metodo `push()` aggiunge elementi alla fine di un array, e `unshift()` aggiunge elementi all'inizio. Considera quanto segue:

```js
let twentyThree = 'XXIII';
let romanNumerals = ['XXI', 'XXII'];

romanNumerals.unshift('XIX', 'XX');
```

`romanNumerals` avrà i valori `['XIX', 'XX', 'XXI', 'XXII']`.

```js
romanNumerals.push(twentyThree);
```

`romanNumerals` avrà i valori `['XIX', 'XX', 'XXI', 'XXII', 'XXIII']`. Nota che possiamo anche passare variabili, il che ci permette una flessibilità ancora maggiore nel modificare dinamicamente i dati del nostro array.

# --instructions--

Abbiamo definito una funzione, `mixedNumbers`, a cui stiamo passando un array come argomento. Modifica la funzione usando `push()` e `unshift()` per aggiungere `'I', 2, 'three'` all'inizio dell'array e `7, 'VIII', 9` alla fine, in modo che l'array restituito contenga le rappresentazioni dei numeri da 1 a 9 in ordine.

# --hints--

`mixedNumbers(["IV", 5, "six"])` adesso dovrebbe restituire `["I", 2, "three", "IV", 5, "six", 7, "VIII", 9]`

```js
assert.deepEqual(mixedNumbers(['IV', 5, 'six']), [
  'I',
  2,
  'three',
  'IV',
  5,
  'six',
  7,
  'VIII',
  9
]);
```

La funzione `mixedNumbers` dovrebbe utilizzare il metodo `push()`

```js
assert(mixedNumbers.toString().match(/\.push/));
```

La funzione `mixedNumbers` dovrebbe utilizzare il metodo `unshift()`

```js
assert(mixedNumbers.toString().match(/\.unshift/));
```

# --seed--

## --seed-contents--

```js
function mixedNumbers(arr) {
  // Only change code below this line

  // Only change code above this line
  return arr;
}

console.log(mixedNumbers(['IV', 5, 'six']));
```

# --solutions--

```js
function mixedNumbers(arr) {
  arr.push(7,'VIII',9);
  arr.unshift('I',2,'three');
  return arr;
}
```
