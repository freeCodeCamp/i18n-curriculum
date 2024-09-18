---
id: 5900f5001000cf542c510012
title: 'Problema 404: Entrecruzado Elipses'
challengeType: 1
forumTopicId: 302072
dashedName: problem-404-crisscross-ellipses
---

# --description--

$E_a$ es una elipse con una ecuación de la forma $x^2 + 4y^2 = 4a^2$.

$E_a'$ es la imagen rotada de $E_a$ por $θ$ grados en sentido antihorario alrededor del origen $O(0, 0)$ para $0° &lt; θ &lt; 90°$.

<img alt="elipse E_a y elipse rotada por θ grados E_a'" src="https://cdn.freecodecamp.org/curriculum/project-euler/crisscross-ellipses.gif" style="background-color: white; padding: 10px; display: block; margin-right: auto; margin-left: auto; margin-bottom: 1.2rem;" />

$b$ es la distancia al origen de los dos puntos de intersección más cercanos al origen y $c$ es la distancia de los otros dos puntos de intersección.

Llamamos a un triplete ordenado ($a$, $b$, $c$) un triplete elipsoidal canónico si $a$, $b$ y $c$ son enteros positivos.

Por ejemplo, (209, 247, 286) es un triplete elipsoidal canónico.

Sea $C(N)$ el número de tripletes elipsoidales canónicos distintos ($a$, $b$, $c$) para $a ≤ N$.

Se puede verificar que $C({10}^3) = 7$, $C({10}^4) = 106$ y $C({10}^6) = 11\\,845$.

Encuentra $C({10}^{17})$.

# --hints--

`crisscrossEllipses()` debería volver `1199215615081353`.

```js
assert.strictEqual(crisscrossEllipses(), 1199215615081353);
```

# --seed--

## --seed-contents--

```js
function crisscrossEllipses() {

  return true;
}

crisscrossEllipses();
```

# --solutions--

```js
// solution required
```
