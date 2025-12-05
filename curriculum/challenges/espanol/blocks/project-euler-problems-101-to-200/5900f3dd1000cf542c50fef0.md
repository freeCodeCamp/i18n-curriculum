---
id: 5900f3dd1000cf542c50fef0
title: 'Problema 113: Números no fluctuantes'
challengeType: 1
forumTopicId: 301739
dashedName: problem-113-non-bouncy-numbers
---

# --description--

Trabajando de izquierda a derecha si no excede ningún dígito por el dígito a su izquierda es llamado un número de incremento, por ejemplo, 134468.

Similarmente si no hay dígito que exceda por el dígito a su derecha, se le llama un número decreciente; por ejemplo, 66420.

Llamaremos a un entero positivo que no este incrementando ni decrementando un número que "rebote"; por ejemplo, 155349.

Mientras n aumenta, la proporción de números que rebotan por debajo de n aumenta de tal manera que solo hay 12951 números por debajo de un millón que no rebotan y solo 277032 números que no rebotan por debajo de ${10}^{10}$.

¿Cuántos números por debajo de un googol (${10}^{100}$) no rebotan?

# --hints--

`nonBouncyNumbers()` debe volver `51161058134250`.

```js
assert.strictEqual(nonBouncyNumbers(), 51161058134250);
```

# --seed--

## --seed-contents--

```js
function nonBouncyNumbers() {

  return true;
}

nonBouncyNumbers();
```

# --solutions--

```js
// solution required
```
