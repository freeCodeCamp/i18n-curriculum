---
id: 56533eb9ac21ba0edf2244b3
title: Convertire i gradi Celsius in Fahrenheit
challengeType: 1
forumTopicId: 16806
dashedName: convert-celsius-to-fahrenheit
---

# --description--

The formula to convert from Celsius to Fahrenheit is the temperature in Celsius times `9/5`, plus `32`.

Ti viene data una variabile `celsius` che rappresenta una temperatura in Celsius. Usa la variabile `fahrenheit` già definita e assegnale la temperatura Fahrenheit equivalente alla temperatura Celsius specificata. Usa la formula mernzionata qui sopra per aiutare a convertire la temperatura da gradi Celsius a Fahrenheit.

# --hints--

`convertCtoF(0)` dovrebbe restituire un numero

```js
assert(typeof convertCtoF(0) === 'number');
```

`convertCtoF(-30)` dovrebbe restituire un valore di `-22`

```js
assert(convertCtoF(-30) === -22);
```

`convertCtoF(-10)` dovrebbe restituire un valore di `14`

```js
assert(convertCtoF(-10) === 14);
```

`convertCtoF(0)` dovrebbe restituire un valore di `32`

```js
assert(convertCtoF(0) === 32);
```

`convertCtoF(20)` dovrebbe restituire un valore di `68`

```js
assert(convertCtoF(20) === 68);
```

`convertCtoF(30)` dovrebbe restituire un valore di `86`

```js
assert(convertCtoF(30) === 86);
```

# --seed--

## --seed-contents--

```js
function convertCtoF(celsius) {
  let fahrenheit;
  return fahrenheit;
}

convertCtoF(30);
```

# --solutions--

```js
function convertCtoF(celsius) {
  let fahrenheit = celsius * 9/5 + 32;
  return fahrenheit;
}

convertCtoF(30);
```
