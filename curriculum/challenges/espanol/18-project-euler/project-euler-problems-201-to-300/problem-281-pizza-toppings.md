---
id: 5900f4861000cf542c50ff98
title: 'Problema 281: Ingredientes de pizza'
challengeType: 1
forumTopicId: 301932
dashedName: problem-281-pizza-toppings
---

# --description--

Se le da una pizza (círculo perfecto) que ha sido cortada en $m·n$ partes iguales y quiere tener exactamente un ingrediente en cada rebanada.

Sea $f(m,n)$ la cantidad de formas en que puede tener ingredientes en la pizza con $m$ ingredientes diferentes ($m ≥ 2$), usando cada ingrediente en exactamente $n$ rebanadas ($n ≥ 1$). Las reflexiones se consideran distintas, las rotaciones no.

Así, por ejemplo, $f(2,1) = 1$, $f(2,2) = f(3,1) = 2$ y $f(3,2) = 16$. $f(3,2)$ se muestra a continuación:

<img alt="animación con 16 formas de tener 3 ingredientes diferentes en 2 rebanadas cada uno" src="https://cdn.freecodecamp.org/curriculum/project-euler/pizza-toppings.gif" style="background-color: white; padding: 10px; display: block; margin-right: auto; margin-left: auto; margin-bottom: 1.2rem;" />

Encuentre la suma de todos los $f(m,n)$ tal que $f(m,n) ≤ {10}^{15}$.

# --hints--

`pizzaToppings()` debería volver `1485776387445623`.

```js
assert.strictEqual(pizzaToppings(), 1485776387445623);
```

# --seed--

## --seed-contents--

```js
function pizzaToppings() {

  return true;
}

pizzaToppings();
```

# --solutions--

```js
// solution required
```
