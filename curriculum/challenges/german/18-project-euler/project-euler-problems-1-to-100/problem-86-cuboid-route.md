---
id: 5900f3c31000cf542c50fed5
title: 'Problem 86: Quadratische Strecke'
challengeType: 1
forumTopicId: 302200
dashedName: problem-86-cuboid-route
---

# --description--

Eine Spinne, S, sitzt in einer Ecke eines quaderförmigen Raums mit den Maßen 6 x 5 x 3, und eine Fliege, F, sitzt in der gegenüberliegenden Ecke. Wenn man auf den Oberflächen des Raumes reist, ist die kürzeste "gerade" Entfernung von S nach F 10 und der Weg ist auf dem Diagramm dargestellt.

<img alt="ein Diagramm des Weges einer Spinne und einer Fliege von einer Ecke eines quaderförmigen Raumes zur gegenüberliegenden Ecke" src="https://cdn-media-1.freecodecamp.org/project-euler/cuboid-route.png" style="background-color: white; padding: 10px; display: block; margin-right: auto; margin-left: auto; margin-bottom: 1.2rem;" />

Allerdings gibt es für jeden beliebigen Quader bis zu drei Kandidaten für den "kürzesten" Weg, und der kürzeste Weg hat nicht immer eine ganzzahlige Länge.

Es kann gezeigt werden, dass es genau `2060` verschiedene Quader mit ganzzahligen Dimensionen gibt, ohne Berücksichtigung von Drehungen, bis zu einer maximalen Größe von M x M x M, für die der kürzeste Weg eine ganzzahlige Länge hat, wenn M = 100. Dies ist der geringste Wert von M, für den die Anzahl der Lösungen zuerst mehr als zweitausend ist; die Anzahl der Lösungen, wenn M = 99 `1975` ist.

Finde den kleinsten Wert von M, sodass die Anzahl der Lösungen zunächst `n` übersteigt.

# --hints--

`cuboidRoute(2000)` sollte eine Zahl zurückgeben.

```js
assert(typeof cuboidRoute(2000) === 'number');
```

`cuboidRoute(2000)` sollte `100` zurückgeben.

```js
assert.strictEqual(cuboidRoute(2000), 100);
```

`cuboidRoute(25000)` sollte `320` zurückgeben.

```js
assert.strictEqual(cuboidRoute(25000), 320);
```

`cuboidRoute(500000)` sollte `1309` zurückgeben.

```js
assert.strictEqual(cuboidRoute(500000), 1309);
```

`cuboidRoute(1000000)` sollte `1818` zurückgeben.

```js
assert.strictEqual(cuboidRoute(1000000), 1818);
```

# --seed--

## --seed-contents--

```js
function cuboidRoute(n) {

  return true;
}

cuboidRoute(2000);
```

# --solutions--

```js
function cuboidRoute(n) {
  // Based on https://www.mathblog.dk/project-euler-86-shortest-path-cuboid/
  function getLength(a, b) {
    return Math.sqrt(a ** 2 + b ** 2);
  }

  let M = 2;
  let counter = 0;

  while (counter < n) {
    M++;
    for (let baseHeightWidth = 3; baseHeightWidth <= 2 * M; baseHeightWidth++) {
      const pathLength = getLength(M, baseHeightWidth);
      if (Number.isInteger(pathLength)) {
        if (baseHeightWidth <= M) {
          counter += Math.floor(baseHeightWidth / 2);
        } else {
          counter += 1 + M - Math.floor((baseHeightWidth + 1) / 2);
        }
      }
    }
  }

  return M;
}
```
