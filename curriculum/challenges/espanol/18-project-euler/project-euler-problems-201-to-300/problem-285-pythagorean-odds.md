---
id: 5900f48a1000cf542c50ff9c
title: 'Problema 285: Probabilidades Pitagóricas'
challengeType: 1
forumTopicId: 301936
dashedName: problem-285-pythagorean-odds
---

# --description--

Albert elige un número entero positivo $k$, luego se eligen aleatoriamente dos números reales $a$, $b$ en el intervalo [0,1] con distribución uniforme.

La raíz cuadrada de la suma ${(ka + 1)}^2 + {(kb + 1)}^2$ se calcula y se redondea al número entero más cercano. Si el resultado es igual a $k$, él obtiene $k$ puntos; de lo contrario, no obtiene nada.

Por ejemplo, si $k = 6$, $a = 0.2$ y $b = 0.85$, entonces ${(ka + 1)}^2 + {(kb + 1)}^2 = 42.05$. La raíz cuadrada de 42.05 es 6.484... y cuando se redondea al número entero más cercano, se convierte en 6. Esto es igual a $k$, así que él obtiene 6 puntos.

Se puede demostrar que si él juega 10 turnos con $k = 1, k = 2, \ldots, k = 10$, el valor esperado de su puntaje total, redondeado a cinco decimales, es 10.20914.

Si él juega ${10}^5$ turnos con $k = 1, k = 2, k = 3, \ldots, k = {10}^5$, ¿cuál es el valor esperado de su puntaje total, redondeado a cinco decimales?

# --hints--

`pythagoreanOdds()` debe volver `157055.80999`.

```js
assert.strictEqual(pythagoreanOdds(), 157055.80999);
```

# --seed--

## --seed-contents--

```js
function pythagoreanOdds() {

  return true;
}

pythagoreanOdds();
```

# --solutions--

```js
// solution required
```
