---
id: 5900f4d91000cf542c50ffea
title: 'Problema 364: Distancia cómoda'
challengeType: 1
forumTopicId: 302025
dashedName: problem-364-comfortable-distance
---

# --description--

Hay $N$ asientos en una fila. $N$ personas vienen después una de otra para llenar los asientos según las siguientes reglas:

1. Si hay algún asiento cuyos asientos adyacentes no están ocupados, toma dicho asiento.
2. Si no hay tal asiento y hay algún asiento para el cual solo un asiento adyacente está ocupado, toma tal asiento.
3. De lo contrario, toma uno de los asientos disponibles restantes.

Deja que $T(N)$ sea el número de posibilidades que $N$ asientos sean ocupados por $N$ personas con las reglas dadas. La figura siguiente muestra $T(4) = 8$.

<img alt="ocho maneras de que $N$ asientos sean ocupados por $N$ personas" src="https://cdn.freecodecamp.org/curriculum/project-euler/comfortable-distance.gif" style="background-color: white; padding: 10px; display: block; margin-right: auto; margin-left: auto; margin-bottom: 1.2rem;" />

Podemos verificar que $T(10) = 61\\,632$ y $T(1\\,000)\bmod 100\\,000\\,007 = 47\\,255\\,094$.

Encuentra $T(1\\,000\\,000)\bmod 100\\,000\\,007$.

# --hints--

`comfortableDistance()` debe volver `44855254`.

```js
assert.strictEqual(comfortableDistance(), 44855254);
```

# --seed--

## --seed-contents--

```js
function comfortableDistance() {

  return true;
}

comfortableDistance();
```

# --solutions--

```js
// solution required
```
