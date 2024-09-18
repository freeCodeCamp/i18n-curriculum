---
id: 5900f5381000cf542c51004b
title: 'Problema 460: Una hormiga en movimiento'
challengeType: 1
forumTopicId: 302135
dashedName: problem-460-an-ant-on-the-move
---

# --description--

En el plano euclidiano, una hormiga viaja desde el punto $A(0, 1)$ al punto $B(d, 1)$ para un número entero $d$.

En cada paso, la hormiga en el punto ($x_0$, $y_0$) elige uno de los puntos de red ($x_1$, $y_1$) que satisface $x_1 ≥ 0$ y $y_1 ≥ 1$ y va directamente a ($x_1$, $y_1$) a una velocidad constante $v$. El valor de $v$ depende de $y_0$ y $y_1$ de la siguiente manera:

- Si $y_0 = y_1$, el valor de $v$ es igual a $y_0$.
- Si $y_0 ≠ y_1$, el valor de $v$ es igual a $\frac{y_1 - y_0}{\ln y_1 - \ln y_0}$.

La imagen izquierda es una de las posibles rutas para $d = 4$. Primer, la hormiga va de $A(0, 1)$ a $P_1(1, 3)$ a una velocidad de $\frac{3 - 1}{\ln 3 - \ln 1} ≈ 1.8205$. Entonces el tiempo requerido es $\frac{\sqrt{5}}{1.820} ≈ 1.2283$.

Desde $P_1(1, 3)$ a $P_2(3, 3)$ la hormiga viaja a una velocidad de 3, por lo que el tiempo requerido es $\frac{2}{3} ≈ 0.6667$. Desde $P_2(3, 3)$ a $B(4, 1)$ la hormiga viaja a una velocidad de $\frac{1 - 3}{\ln 1 - \ln 3} ≈ 1.8205$, por lo que el tiempo requerido es $\frac{\sqrt{5}}{1.8205} ≈ 1.2283$.

Así, el tiempo total requerido es $1.2283 + 0.6667 + 1.2283 = 3.1233$.

La imagen derecha es otro camino. El tiempo total requerido se calcula como $0.98026 + 1 + 0.98026 = 2.96052$. Se puede demostrar que este es el camino más rápido para $d = 4$.

<img alt="dos posibles caminos para d = 4" src="https://cdn.freecodecamp.org/curriculum/project-euler/an-ant-on-the-move.jpg" style="background-color: white; padding: 10px; display: block; margin-right: auto; margin-left: auto; margin-bottom: 1.2rem;" />

Sea $F(d)$ el tiempo total requerido si la hormiga elige el camino más rápido. Por ejemplo, $F(4) ≈ 2.960\\,516\\,287$. Podemos verificar que $F(10) ≈ 4.668\\,187\\,834$ y $F(100) ≈ 9.217\\,221\\,972$.

Encuentra $F(10\\,000)$. Da tu respuesta redondeada a nueve lugares decimales.

# --hints--

`antOnTheMove()` debe volver `18.420738199`.

```js
assert.strictEqual(antOnTheMove(), 18.420738199);
```

# --seed--

## --seed-contents--

```js
function antOnTheMove() {

  return true;
}

antOnTheMove();
```

# --solutions--

```js
// solution required
```
