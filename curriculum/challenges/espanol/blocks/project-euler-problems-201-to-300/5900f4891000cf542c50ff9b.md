---
id: 5900f4891000cf542c50ff9b
title: 'Problema 284: Cuadrados estables'
challengeType: 1
forumTopicId: 301935
dashedName: problem-284-steady-squares
---

# --description--

El número 376 de 3 dígitos en el sistema de numeración decimal es un ejemplo de números con la propiedad especial que su cuadrado termina con los mismos dígitos: ${376}^2 = 141376$. Llamemos a un número con esta propiedad un cuadrado constante.

Los cuadrados constantes también se pueden observar en otros sistemas de numeración. En el sistema de numeración base 14, el número de 3 dígitos $c37$ también es un cuadrado constante: $c37^2=aa0c37, y la suma de sus dígitos es $c+3+7=18$ en el mismo sistema de numeración. Las letras $a$, $b$, $c$ y $d$ se utilizan para los 10, 11, 12 y 13 dígitos respectivamente, de una manera similar al sistema de numeración hexadecimal.

Para $1 ► n ► 9$, la suma de los dígitos de todos los cuadrados constantes de $n$en el sistema base de numeración 14 es $2d8$ (582 decimal). No se permiten cuadrados estables con 0 iniciales.

Encuentra la suma de los dígitos de todos los cuadrados estables de dígitos $n$en el sistema de numeración base 14 para $1 n. 10000$ (decimal) y da tu respuesta como una cadena en el sistema base 14 con letras minúsculas cuando sea necesario.

# --hints--

`steadySquares()` debería devolver una cadena.

```js
assert.isString(steadySquares());
```

`steadySquares()` debería devolver la cadena `5a411d7b`.

```js
assert.strictEqual(steadySquares(), '5a411d7b');
```

# --seed--

## --seed-contents--

```js
function steadySquares() {

  return true;
}

steadySquares();
```

# --solutions--

```js
// solution required
```
