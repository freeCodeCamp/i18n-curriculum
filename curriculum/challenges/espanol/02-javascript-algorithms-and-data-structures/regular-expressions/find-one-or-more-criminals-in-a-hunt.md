---
id: 587d7db7367417b2b2512b9c
title: Encuentra uno o más criminales en una cacería
challengeType: 1
forumTopicId: 301343
dashedName: find-one-or-more-criminals-in-a-hunt
---

# --description--

Time to pause and test your new regex writing skills. A group of criminals escaped from jail and ran away, but you don't know how many. However, you do know that they stay close together when they are around other people. You are responsible for finding all of the criminals at once.

Este es un ejemplo para revisar cómo hacer esto:

La expresión regular `/z+/` coincide con la letra `z` cuando aparece una o más veces seguidas. Encontrará coincidencias en las siguientes cadenas:

```js
"z"
"zzzzzz"
"ABCzzzz"
"zzzzABC"
"abczzzzzzzzzzzzzzzzzzzzzabc"
```

Pero no encuentra coincidencias en las siguientes cadenas, ya que no hay letras `z`:

```js
""
"ABC"
"abcabc"
```

# --instructions--

Escribe una expresión regular codiciosa que encuentre uno o más criminales dentro de un grupo de personas. Un criminal está representado por la letra mayúscula `C`.

# --hints--

Tu expresión regular debe coincidir con un criminal (`C`) en la cadena `C`

```js
assert('C'.match(reCriminals) && 'C'.match(reCriminals)[0] == 'C');
```

Tu expresión regular debe coincidir con dos criminales (`CC`) en la cadena `CC`

```js
assert('CC'.match(reCriminals) && 'CC'.match(reCriminals)[0] == 'CC');
```

Tu expresión regular debe coincidir con tres criminales (`CCC`) en la cadena `P1P5P4CCCcP2P6P3`.

```js
assert(
  'P1P5P4CCCcP2P6P3'.match(reCriminals) &&
    'P1P5P4CCCcP2P6P3'.match(reCriminals)[0] == 'CCC'
);
```

Tu expresión regular debe coincidir con cinco criminales (`CCCCC`) en la cadena `P6P2P7P4P5CCCCCP3P1`

```js
assert(
  'P6P2P7P4P5CCCCCP3P1'.match(reCriminals) &&
    'P6P2P7P4P5CCCCCP3P1'.match(reCriminals)[0] == 'CCCCC'
);
```

Tu expresión regular no debe coincidir con ningún criminal en la cadena vacía `""`

```js
reCriminals.lastIndex = 0;
assert(!reCriminals.test(''));
```

Tu regex no debe coincidir con ningún criminal en la cadena `P1P2P3`

```js
reCriminals.lastIndex = 0;
assert(!reCriminals.test('P1P2P3'));
```

Tu expresión regular debe coincidir con cincuenta criminales (`CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC`) en la cadena `P2P1P5P4CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCP3`.

```js
assert(
  'P2P1P5P4CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCP3'.match(
    reCriminals
  ) &&
    'P2P1P5P4CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCP3'.match(
      reCriminals
    )[0] == 'CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC'
);
```

# --seed--

## --seed-contents--

```js
let reCriminals = /./; // Change this line
```

# --solutions--

```js
let reCriminals = /C+/; // Change this line
```
