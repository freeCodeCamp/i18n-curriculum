---
id: 5900f4a11000cf542c50ffb3
title: 'Problema 308: Un asombroso autómata generador de primos'
challengeType: 1
forumTopicId: 301962
dashedName: problem-308-an-amazing-prime-generating-automaton
---

# --description--

Un programa escrito en el lenguaje de programación Fractran consiste en una lista de fracciones.

El estado interno de la Máquina Virtual de Fractran es un entero positivo, que inicialmente se establece a un valor semilla. Cada iteración de un programa de Fractran multiplica el entero del estado por la primer fracción en la lista que lo dejará como un entero.

Por ejemplo, uno de los programas de Fractran que John Horton Conway escribió para la generación de primos consiste en las siguientes 14 fracciones:

$$\frac{17}{91}, \frac{78}{85}, \frac{19}{51}, \frac{23}{38}, \frac{29}{33}, \frac{77}{29}, \frac{95}{23}, \frac{77}{19}, \frac{1}{17}, \frac{11}{13}, \frac{13}{11}, \frac{15}{2}, \frac{1}{7}, \frac{55}{1}$$

Comenzando con el entero semilla 2, iteraciones sucesivas del programa producen la secuencia:

$$15, 825, 725, 1925, 2275, 425, \ldots, 68, \mathbf{4}, 30, \ldots, 136, \mathbf{8}, 60, \ldots, 544, \mathbf{32}, 240, \ldots$$

Las potencias de 2 que aparecen en esta secuencia son $2^2, 2^3, 2^5, \ldots$.

Se puede demostrar que todas las potencias de 2 en esta secuencia tienen exponentes primos y que todos los primos aparecen como exponentes de potencias de 2, ¡en el orden correcto!

Si alguien utiliza el programa Fractran anterior para resolver el Problema 7 de Project Euler (encontrar el ${10001}^{\text{er}}$ primo), ¿cuántas iteraciones serían necesarias hasta que el programa produzca $2^{10001^{\text{er}}\text{ primo}}$?

# --hints--

`primeGeneratingAutomation()` debe volver `1539669807660924`.

```js
assert.strictEqual(primeGeneratingAutomation(), 1539669807660924);
```

# --seed--

## --seed-contents--

```js
function primeGeneratingAutomation() {

  return true;
}

primeGeneratingAutomation();
```

# --solutions--

```js
// solution required
```
