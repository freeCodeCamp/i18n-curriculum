---
id: 5900f3b71000cf542c50feca
title: 'Problema 75: Triángulos rectángulos enteros singulares'
challengeType: 1
forumTopicId: 302188
dashedName: problem-75-singular-integer-right-triangles
---

# --description--

Resulta que 12 cm es la longitud más pequeña de alambre que se puede doblar para formar un triángulo rectángulo con lados enteros de exactamente una manera, pero hay muchos más ejemplos.

<div style='margin-left: 4em;'>
  <strong>12 cm:</strong> (3,4,5)<br>
  <strong>24 cm:</strong> (6,8,10)<br>
  <strong>30 cm:</strong> (5,12,13)<br>
  <strong>36 cm:</strong> (9,12,15)<br>
  <strong>40 cm:</strong> (8,15,17)<br>
  <strong>48 cm:</strong> (12,16,20)<br><br>
</div>

En cambio, algunas longitudes de alambre, como 20 cm, no se pueden doblar para formar un triángulo rectángulo con lados enteros, y otras longitudes permiten encontrar más de una solución; por ejemplo, usando 120 cm es posible formar exactamente tres triángulos rectángulos con lados enteros diferentes.

<div style='margin-left: 4em;'>
  <strong>120 cm:</strong> (30,40,50), (20,48,52), (24,45,51)<br><br>
</div>

Dado que L es la longitud del alambre, ¿para cuántos valores de L ≤ `n` se puede formar exactamente un triángulo rectángulo con lados enteros?

# --hints--

`singularIntRightTriangles(48)` debe devolver un número.

```js
assert(typeof singularIntRightTriangles(48) === 'number');
```

`singularIntRightTriangles(48)` debe devolver `6`.

```js
assert.strictEqual(singularIntRightTriangles(48), 6);
```

`singularIntRightTriangles(700000)` debe devolver `75783`.

```js
assert.strictEqual(singularIntRightTriangles(700000), 75783);
```

`singularIntRightTriangles(1000000)` debe devolver `107876`.

```js
assert.strictEqual(singularIntRightTriangles(1000000), 107876);
```

`singularIntRightTriangles(1500000)` debe devolver `161667`.

```js
assert.strictEqual(singularIntRightTriangles(1500000), 161667);
```

# --seed--

## --seed-contents--

```js
function singularIntRightTriangles(n) {

  return true;
}

singularIntRightTriangles(48);
```

# --solutions--

```js
function singularIntRightTriangles(limit) {
  function euclidFormula(m, n) {
    return [m ** 2 - n ** 2, 2 * m * n, m ** 2 + n ** 2];
  }

  function gcd(numberA, numberB) {
    if (numberB === 0) {
      return numberA;
    }
    return gcd(numberB, numberA % numberB);
  }

  function notBothOdd(numberA, numberB) {
    return (numberA + numberB) % 2 === 1;
  }

  function areCoprime(numberA, numberB) {
    return gcd(numberA, numberB) === 1;
  }

  const trianglesWithPerimeter = new Array(limit + 1).fill(0);
  const mLimit = Math.sqrt(limit / 2);

  for (let m = 2; m < mLimit; m++) {
    for (let n = 1; n < m; n++) {
      if (notBothOdd(m, n) && areCoprime(m, n)) {
        const [sideA, sideB, sideC] = euclidFormula(m, n);
        const perimeter = sideA + sideB + sideC;
        let curPerimeter = perimeter;
        while (curPerimeter <= limit) {
          trianglesWithPerimeter[curPerimeter]++;
          curPerimeter += perimeter;
        }
      }
    }
  }
  return trianglesWithPerimeter.filter(trianglesCount => trianglesCount === 1)
    .length;
}
```
