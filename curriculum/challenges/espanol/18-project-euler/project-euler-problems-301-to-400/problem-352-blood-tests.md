---
id: 5900f4cd1000cf542c50ffdf
title: 'Problema 352: Pruebas de sangre'
challengeType: 1
forumTopicId: 302012
dashedName: problem-352-blood-tests
---

# --description--

Cada uno de los 25 ovejas en un rebaño debe ser probado para un virus raro, conocido por afectar al 2% de la población de ovejas.

Existe un análisis PCR preciso y extremadamente sensible para muestras de sangre, que produce un claro resultado positivo / negativo, pero es muy lento y costoso.

Debido al alto costo, el veterinario a cargo sugiere que en lugar de realizar 25 pruebas separadas, se puede utilizar el siguiente procedimiento:

Las ovejas se dividen en 5 grupos de 5 ovejas en cada grupo. Para cada grupo, las 5 muestras se mezclan juntas y se realiza una sola prueba. Luego,

- Si el resultado es negativo, todas las ovejas de ese grupo se consideran libres de virus.
- Si el resultado es positivo, se realizarán 5 pruebas adicionales (una prueba separada para cada animal) para determinar el/los individuo(s) afectado(s).

Dado que la probabilidad de infección para cualquier animal específico es solo 0.02, la primer prueba (en las muestras agrupadas) para cada grupo será:

- Negativa (y no se necesitan más pruebas) con probabilidad ${0.98}^5 = 0.9039207968$.
- Positiva (se necesitan 5 pruebas adicionales) con probabilidad $1 - 0.9039207968 = 0.0960792032$.

Así, el número esperado de pruebas para cada grupo es $1 + 0.0960792032 × 5 = 1.480396016$.

En consecuencia, los 5 grupos se pueden examinar usando un promedio de solo $1.480396016 × 5 = \mathbf{7.40198008}$ pruebas, lo que representa un ahorro enorme de más del 70%!

Aunque el esquema que acabamos de describir parece ser muy eficiente, todavía se puede mejorar considerablemente (siempre suponiendo que la prueba sea lo suficientemente sensible y no se produzcan efectos adversos por mezclar diferentes muestras). P. ej.:

- Podemos comenzar realizando una prueba en una mezcla de las 25 muestras. Se puede verificar que en aproximadamente el 60.35% de los casos esta prueba será negativa, por lo que no se necesitarán más pruebas. Se requerirán más pruebas solo para el 39.65% restante de los casos.
- Si sabemos que al menos un animal en un grupo de 5 está infectado y las primeras 4 pruebas individuales son negativas, no hay necesidad de realizar una prueba en el quinto animal (sabemos que debe estar infectado).
- Podemos intentar un número diferente de grupos / diferente número de animales en cada grupo, ajustando esos números en cada nivel para que el número total estimado de pruebas sea minimizado.

Para simplificar la amplia gama de posibilidades, hay una restricción que establecemos al idear el esquema de prueba más rentable: siempre que comencemos con una muestra mezclada, todas las ovejas que contribuyan a esa muestra deben ser completamente evaluadas (es decir, se debe llegar a un veredicto de infectado / libre de virus para todas ellas) antes de comenzar a examinar a otros animales.

Para el ejemplo actual, resulta que el esquema de prueba más rentable (lo llamaremos la estrategia óptima) requiere un promedio de solo <strong>4.155452</strong> pruebas!

Usando la estrategia óptima, sea $T(s, p)$ representar el número promedio de pruebas necesarias para examinar un rebaño de $s$ ovejas para un virus con probabilidad $p$ de estar presente en cualquier individuo. Por lo tanto, redondeado a seis lugares decimales, $T(25, 0.02) = 4.155452$ y $T(25, 0.10) = 12.702124$.

Find $\sum T(10\\,000, p)$ for $p = 0.01, 0.02, 0.03, \ldots 0.50$. Give your answer rounded to six decimal places.

# --hints--

`bloodTests()` should return `378563.260589`.

```js
assert.strictEqual(bloodTests(), 378563.260589);
```

# --seed--

## --seed-contents--

```js
function bloodTests() {

  return true;
}

bloodTests();
```

# --solutions--

```js
// solution required
```
