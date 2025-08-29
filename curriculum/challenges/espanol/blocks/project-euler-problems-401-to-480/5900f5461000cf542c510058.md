---
id: 5900f5461000cf542c510058
title: 'Problema 473: Base de números Phigital'
challengeType: 1
forumTopicId: 302150
dashedName: problem-473-phigital-number-base
---

# --description--

Sea $\varphi$ la proporción áurea: $\varphi = \frac{1+\sqrt{5}}{2}.$

Es notable que es posible escribir cada entero positivo como una suma de potencias de $\varphi$ incluso si requerimos que cada potencia de $\varphi$ se use como máximo una vez en esta suma.

Incluso entonces, esta representación no es única.

Podemos hacerla única requiriendo que no se usen potencias con exponentes consecutivos y que la representación sea finita.

P. ej:

$2 = \varphi + \varphi^{-2}$ y $3 = \varphi^{2} + \varphi^{-2}$

Para representar esta suma de potencias de $\varphi$ usamos una cadena de 0's y 1's con un punto para indicar dónde comienzan los exponentes negativos. Llamamos a esto la representación en la base de números phigital.

Entonces $1 = 1_{\varphi}$, $2 = 10.01_{\varphi}$, $3 = 100.01_{\varphi}$ y $14 = 100100.001001_{\varphi}$. Las cadenas que representan 1, 2 y 14 en la base de números phigital son palindrómicas, mientras que la cadena que representa 3 no lo es (el punto phigital no es el carácter del medio).

La suma de los enteros positivos que no exceden 1000 cuya representación phigital es palindrómica es 4345.

Encuentra la suma de los enteros positivos que no exceden $10^{10}$ cuya representación phigital es palindrómica.

# --hints--

`phigitalNumberBase()` debe volver `35856681704365`.

```js
assert.strictEqual(phigitalNumberBase(), 35856681704365);
```

# --seed--

## --seed-contents--

```js
function phigitalNumberBase() {

  return true;
}

phigitalNumberBase();
```

# --solutions--

```js
// solution required
```
