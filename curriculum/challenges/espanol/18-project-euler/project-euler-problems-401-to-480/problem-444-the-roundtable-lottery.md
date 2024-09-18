---
id: 5900f52a1000cf542c51003b
title: 'Problema 444: La Lotería de la Mesa Redonda'
challengeType: 1
forumTopicId: 302116
dashedName: problem-444-the-roundtable-lottery
---

# --description--

Un grupo de $p$ personas decide sentarse en una mesa redonda y jugar un juego de intercambio de boletos de lotería. Cada persona comienza con un boleto de lotería asignado al azar y sin raspar. Cada boleto, al ser raspado, revela un premio entero en libras que varía entre £1 y £$p$, sin que haya dos boletos iguales. El objetivo del juego es que cada persona maximice sus ganancias de boletos al dejar el juego.

Se elige una persona arbitraria para ser el primer jugador. Alrededor de la mesa, cada jugador tiene solo una de dos opciones:

1.  El jugador puede raspar su boleto y revelar su valor a todos en la mesa.
2.  El jugador puede intercambiar su boleto sin raspar por el boleto raspado de un jugador anterior, y luego salir del juego con ese boleto. El jugador anterior luego raspa su boleto recién adquirido y revela su valor a todos en la mesa.

El juego termina una vez que todos los boletos han sido raspados. Todos los jugadores que aún permanecen en la mesa deben irse con los boletos que tengan actualmente.

Suponga que cada jugador usa la estrategia óptima para maximizar el valor esperado de sus ganancias de boletos.

Sea $E(p)$ el número esperado de jugadores que quedan en la mesa cuando el juego termina en un juego de $p$ jugadores (por ejemplo, $E(111) = 5.2912$ cuando se redondea a 5 cifras significativas).

Sea $S_1(N) = \displaystyle\sum_{p = 1}^N E(p)$.

Sea $S_k(N) = \displaystyle\sum_{p = 1}^N S_{k - 1}(p)$ para $k > 1$.

Encuentre $S_{20}({10}^{14})$ y escriba la respuesta como una cadena en notación científica redondeada a 10 dígitos significativos. Usa una minúscula `e` para separar mantissa y exponente. Por ejemplo, la respuesta para $S_3(100)$ sería `5.983679014e5`.

# --hints--

`roundtableLottery()` debe devolver una cadena.

```js
assert(typeof roundtableLottery() === 'string');
```

`roundtableLottery()` debe devolver la cadena `1.200856722e263`.

```js
assert.strictEqual(roundtableLottery(), '1.200856722e263');
```

# --seed--

## --seed-contents--

```js
function roundtableLottery() {

  return true;
}

roundtableLottery();
```

# --solutions--

```js
// solution required
```
