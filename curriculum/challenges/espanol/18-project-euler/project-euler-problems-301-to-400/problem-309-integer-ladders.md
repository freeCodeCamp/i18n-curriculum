---
id: 5900f4a11000cf542c50ffb4
title: 'Problema 309: Escaleras Enteras'
challengeType: 1
forumTopicId: 301963
dashedName: problem-309-integer-ladders
---

# --description--

En el clásico problema de "Cruce de Escaleras", se nos dan las longitudes $x$ y $y$ de dos escaleras que descansan en las paredes opuestas de una calle estrecha y nivelada. También se nos da la altura $h$ sobre la calle donde se cruzan las dos escaleras y se nos pide encontrar el ancho de la calle ($w$).

<img alt="escaleras x y y, cruzándose a la altura h, y descansando en paredes opuestas de la calle de ancho w" src="https://cdn.freecodecamp.org/curriculum/project-euler/integer-ladders.gif" style="background-color: white; padding: 10px; display: block; margin-right: auto; margin-left: auto; margin-bottom: 1.2rem;" />

Aquí, solo nos preocupamos por los casos donde las cuatro variables son enteros positivos. Por ejemplo, si $x = 70$, $y = 119$ y $h = 30$, podemos calcular que $w = 56$.

De hecho, para valores enteros $x$, $y$, $h$ y $0 &lt; x &lt; y &lt; 200$, solo hay cinco tríos ($x$, $y$, $h$) que producen soluciones enteras para $w$: (70, 119, 30), (74, 182, 21), (87, 105, 35), (100, 116, 35) y (119, 175, 40).

Para valores enteros $x$, $y$, $h$ y $0 &lt; x &lt; y &lt; 1\\,000\\,000$, ¿cuántos tríos ($x$, $y$, $h$) producen soluciones enteras para $w$?

# --hints--

`integerLadders()` debería volver `210139`.

```js
assert.strictEqual(integerLadders(), 210139);
```

# --seed--

## --seed-contents--

```js
function integerLadders() {

  return true;
}

integerLadders();
```

# --solutions--

```js
// solution required
```
