---
id: ae9defd7acaf69703ab432ea
title: implementare un calcolatore di mcm basato su un intervallo
challengeType: 26
dashedName: implement-a-range-based-lcm-calculator
---

# --description--

In questo laboratorio, creerai una funzione che prende un array di due numeri e restituisce il minimo comune multiplo (mcm) di quei due numeri e di tutti i numeri compresi tra loro.

**Obiettivo**: soddisfa le storie utente qui sotto e fai superare tutti i test per completare il laboratorio.

**Storie utente**

1. Dovresti avere una funzione `smallestCommons` che accetta un array di due numeri come argomento.
1. La funzione `smallestCommons` dovrebbe restituire il minimo comune multiplo che è divisibile senza resto sia per i due numeri sia per tutti i numeri sequenziali nell’intervallo tra di essi.
1. La funzione dovrebbe gestire input in cui i due numeri non sono in ordine numerico.

# --hints--

Dovresti avere una funzione `smallestCommons`.

```js
assert.isFunction(smallestCommons);
```

`smallestCommons([1, 5])` dovrebbe restituire un numero.

```js
assert.isNumber(smallestCommons([1, 5]));
```

`smallestCommons([1, 5])` dovrebbe restituire `60`.

```js
assert.strictEqual(smallestCommons([1, 5]), 60);
```

`smallestCommons([5, 1])` dovrebbe restituire `60`.

```js
assert.strictEqual(smallestCommons([5, 1]), 60);
```

`smallestCommons([2, 10])` dovrebbe restituire `2520`.

```js
assert.strictEqual(smallestCommons([2, 10]), 2520);
```

`smallestCommons([1, 13])` dovrebbe restituire `360360`.

```js
assert.strictEqual(smallestCommons([1, 13]), 360360);
```

`smallestCommons([23, 18])` dovrebbe restituire `6056820`.

```js
assert.strictEqual(smallestCommons([23, 18]), 6056820);
```

# --seed--

## --seed-contents--

```js

```

# --solutions--

```js
function smallestCommons(arr) {
  let [min, max] = arr.sort((a, b) => a - b);

  function gcd(a, b) {
    return b === 0 ? a : gcd(b, a % b);
  }

  function lcm(a, b) {
    return (a * b) / gcd(a, b);
  }

  let multiple = min;

  for (let i = min + 1; i <= max; i++) {
    multiple = lcm(multiple, i);
  }

  return multiple;
}
```
