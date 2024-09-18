---
id: 5900f3c11000cf542c50fed4
title: 'Problema 85: Contando rectángulos'
challengeType: 1
forumTopicId: 302199
dashedName: problem-85-counting-rectangles
---

# --description--

Contando cuidadosamente, se puede ver que una cuadrícula rectangular de 3 por 2 contiene dieciocho rectángulos:

<img alt="un diagrama de los diferentes rectángulos encontrados dentro de una cuadrícula rectangular de 3 por 2" src="https://cdn-media-1.freecodecamp.org/project-euler/counting-rectangles.png" style="background-color: white; padding: 10px; display: block; margin-right: auto; margin-left: auto; margin-bottom: 1.2rem;" />

Aunque puede que no exista una cuadrícula rectangular que contenga exactamente `n` rectángulos, encuentra el área de la cuadrícula con la solución más cercana.

# --hints--

`countingRectangles(18)` debe devolver un número.

```js
assert(typeof countingRectangles(18) === 'number');
```

`countingRectangles(18)` debe devolver `6`.

```js
assert.strictEqual(countingRectangles(18), 6);
```

`countingRectangles(250)` debe devolver `22`.

```js
assert.strictEqual(countingRectangles(250), 22);
```

`countingRectangles(50000)` debe devolver `364`.

```js
assert.strictEqual(countingRectangles(50000), 364);
```

`countingRectangles(1000000)` debe devolver `1632`.

```js
assert.strictEqual(countingRectangles(1000000), 1632);
```

`countingRectangles(2000000)` debe devolver `2772`.

```js
assert.strictEqual(countingRectangles(2000000), 2772);
```

# --seed--

## --seed-contents--

```js
function countingRectangles(n) {

  return true;
}

countingRectangles(18);
```

# --solutions--

```js
function countingRectangles(n) {
  function numberOfRectangles(h, w) {
    return (h * (h + 1) * w * (w + 1)) / 4;
  }

  function rectangleArea(h, w) {
    return h * w;
  }

  let rectanglesCount = 1;
  let maxSide = 1;
  while (rectanglesCount < n) {
    maxSide++;
    rectanglesCount = numberOfRectangles(maxSide, 1);
  }

  let bestDiff = Math.abs(rectanglesCount - n);
  let bestSize = [maxSide, 1];

  let curHeight = maxSide - 1;
  let curWidth = 1;

  for (curWidth; curWidth < curHeight; curWidth++) {
    for (curHeight; curHeight > curWidth; curHeight--) {
      rectanglesCount = numberOfRectangles(curHeight, curWidth);
      const curDiff = Math.abs(rectanglesCount - n);
      if (curDiff < bestDiff) {
        bestDiff = curDiff;
        bestSize = [curHeight, curWidth];
      }

      if (rectanglesCount < n) {
        break;
      }
    }
  }
  return rectangleArea(...bestSize);
}
```
