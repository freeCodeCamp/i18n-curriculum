---
id: 5900f50a1000cf542c51001c
title: 'Problema 413: Números de un solo hijo'
challengeType: 1
forumTopicId: 302082
dashedName: problem-413-one-child-numbers
---

# --description--

Decimos que un número positivo de $d$ dígitos (sin ceros a la izquierda) es un número de un solo hijo si exactamente una de sus subcadenas es divisible por $d$.

Por ejemplo, 5671 es un número de un solo hijo de 4 dígitos. Entre todas sus subcadenas 5, 6, 7, 1, 56, 67, 71, 567, 671 y 5671, solo 56 es divisible por 4.

De manera similar, 104 es un número de un solo hijo de 3 dígitos porque solo 0 es divisible por 3. 1132451 es un número de un solo hijo de 7 dígitos porque solo 245 es divisible por 7.

Sea $F(N)$ el número de los números de un solo hijo menores que $N$. Podemos verificar que $F(10) = 9$, $F({10}^3) = 389$ y $F({10}^7) = 277\,674$.

Encuentra $F({10}^{19})$.

# --hints--

`oneChildNumbers()` debe volver `3079418648040719`.

```js
assert.strictEqual(oneChildNumbers(), 3079418648040719);
```

# --seed--

## --seed-contents--

```js
function oneChildNumbers() {

  return true;
}

oneChildNumbers();
```

# --solutions--

```js
// solution required
```
