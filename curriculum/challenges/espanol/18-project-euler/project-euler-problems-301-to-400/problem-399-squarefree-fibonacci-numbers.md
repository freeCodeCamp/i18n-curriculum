---
id: 5900f4fc1000cf542c51000e
title: 'Problema 399: Números pares en la sucesión de Fibonacci'
challengeType: 1
forumTopicId: 302064
dashedName: problem-399-squarefree-fibonacci-numbers
---

# --description--

Los primeros 15 números de fibonacci son:

$$1,1,2,3,5,8,13,21,34,55,89,144,233,377,610.$$

Se puede observar que 8 y 144 no son números sin cuadrados: 8 es divisible por 4 y 144 es divisible por 4 y por 9.

Entonces, los primeros 13 números de Fibonacci libres de cuadrados son:

$$1,1,2,3,5,13,21,34,55,89,233,377 \texto{ and } 610.$$

El número $200$th de Fibonacci libre de cuadrados es: 971183874599339129547649988289594072811608739584170445. Los últimos dieciséis dígitos de este número son: 1608739584170445, y en notación científica, este número puede escribirse como `9.7e53`.

Encuentra el $100\,000\,000$th número de Fibonacci libre de cuadrados. Da como respuesta una cadena con sus últimos dieciséis dígitos seguidos por una coma seguida del número en notación científica (redondeado a un decimal). Para el número libre de cuadrados $200$th, la respuesta habría sido: `1608739584170445,9.7e53`

**Nota:** Para este problema, suponga que para cada primo $p$, el primer número de Fibonacci divisible por $p$ no es divisible por $p^2$ (esto es parte de la conjetura de Wall). Esto ha sido verificado para primos $≤ 3 \times {10}^{15}$, pero no ha sido probado en general.

Si resulta que la conjetura es falsa, entonces la respuesta aceptada para este problema no está garantizada como el $100,000,000$th número de Fibonacci libre de cuadrados, sino que representa solo un límite inferior para ese número.

# --hints--

`squarefreeFibonacciNumbers()` debe devolver una cadena.

```js
asset.isString(squarefreeFibonacciNumbers());
```

`squarefreeFibonacciNumbers()` debe devolver la cadena `1508395636674243,6.5e27330467`.

```js
assert.strictEqual(squarefreeFibonacciNumbers(), '1508395636674243,6.5e27330467');
```

# --seed--

## --seed-contents--

```js
function squarefreeFibonacciNumbers() {

  return true;
}

squarefreeFibonacciNumbers();
```

# --solutions--

```js
// solution required
```
