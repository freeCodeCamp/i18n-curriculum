---
id: 5900f4951000cf542c50ffa8
title: 'Problema 297: Representación de Zeckendorf'
challengeType: 1
forumTopicId: 301949
dashedName: problem-297-zeckendorf-representation
---

# --description--

Cada nuevo número en la sucesión de Fibonacci se genera al agregar los dos números anteriores.

Comenzando con 1 y 2, los primeros 10 números serán: 1, 2, 3, 5, 8, 13, 21, 34, 55, 89.

Cada entero positivo se puede escribir de manera única como una suma de números no consecutivos de la sucesión de Fibonacci. Por ejemplo, 100 = 3 + 8 + 89.

Tal suma se llama la representación de Zeckendorf del número.

Para cualquier entero $n>0$, sea $z(n)$ el número de términos en la representación de Zeckendorf de $n$.

Así: $z(5) = 1$, $z(14) = 2$, $z(100) = 3$ etc.

También, para $0 &lt; n &lt; {10}^6$, $\sum z(n) = 7\\,894\\,453$.

Encuentra $\sum z(n)$ para $0 &lt; n &lt; {10}^{17}$.

# --hints--

`zeckendorfRepresentation()` debe volver `2252639041804718000`.

```js
assert.strictEqual(zeckendorfRepresentation(), 2252639041804718000);
```

# --seed--

## --seed-contents--

```js
function zeckendorfRepresentation() {

  return true;
}

zeckendorfRepresentation();
```

# --solutions--

```js
// solution required
```
