---
id: 5900f3fc1000cf542c50ff0e
title: 'Problema 143: Investigando el punto de Torricelli de un triángulo'
challengeType: 1
forumTopicId: 301772
dashedName: problem-143-investigating-the-torricelli-point-of-a-triangle
---

# --description--

Sea ABC un triángulo con todos los ángulos interiores menores que 120 grados. Sea X un punto cualquiera dentro del triángulo y sean $XA = p$, $XC = q$, y $XB = r$.

Fermat desafió a Torricelli a encontrar la posición de X tal que p + q + r fuera minimizada.

Torricelli pudo demostrar que si se construyen triángulos equiláteros AOB, BNC y AMC en cada lado del triángulo ABC, los círculos circunscritos de AOB, BNC y AMC se intersecarán en un único punto, T, dentro del triángulo. Además, demostró que T, llamado punto de Torricelli/Fermat, minimiza $p + q + r$. Y lo que es aún más notable, se puede demostrar que cuando se minimiza la suma, $AN = BM = CO = p + q + r$ y que AN, BM y CO también se intersecan en T.

<img alt="triángulos equiláteros AOB, BNC y AMC construidos en cada lado del triángulo ABC; con los círculos circunscritos de AOB, BNC y AMC intersecándose en un único punto, T, dentro del triángulo" src="https://cdn.freecodecamp.org/curriculum/project-euler/investigating-the-torricelli-point-of-a-triangle.png" style="background-color: white; padding: 10px; display: block; margin-right: auto; margin-left: auto; margin-bottom: 1.2rem;" />

Si la suma se minimiza y a, b, c, p, q y r son enteros positivos, llamaremos triángulo de Torricelli al triángulo ABC. Por ejemplo, $a = 399$, $b = 455$, $c = 511$ es un ejemplo de triángulo de Torricelli, con $p + q + r = 784$. Halla la suma de todos los valores distintos de $p + q + r ≤ 120000$ para triángulos de Torricelli.

# --hints--

`sumTorricelliTriangles()` debería devolver `30758397`.

```js
assert.strictEqual(sumTorricelliTriangles(), 30758397);
```

# --seed--

## --seed-contents--

```js
function sumTorricelliTriangles() {

  return true;
}

sumTorricelliTriangles();
```

# --solutions--

```js
// solution required
```
