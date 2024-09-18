---
id: 65e1aedc500d930ce8ed90ac
title: Aprende variables y operadores lección H
challengeType: 15
dashedName: learn-variables-and-operators-lesson-h
---

# --description--

Si una expresión tiene más de un operador, el orden de ejecución está definido por su precedencia, o, en otras palabras, el orden de prioridad predeterminado de los operadores.

Desde la escuela, sabes que la multiplicación en la expresión `1 + 2 * 2` debe ser calculada antes de la suma. Eso es precisamente la cuestión de la precedencia. Se dice que la multiplicación tiene una precedencia más alta que la suma.

Los paréntesis anulan cualquier precedencia, así que si no estás satisfecho con el orden predeterminado, puedes usarlos para cambiarlo. Por ejemplo, escribe `(1 + 2) * 2`.

Hay muchos operadores en JavaScript. Cada operador tiene un número de precedencia correspondiente. El que tiene el número más grande se ejecuta primero. Si la precedencia es la misma, el orden de ejecución es de izquierda a derecha.

Aquí hay un extracto de la tabla de precedencia (no necesitas recordar esto, pero observa que los operadores unarios tienen una precedencia más alta que los binarios correspondientes):

| Precedencia | Nombre          | Signo |
| ----------- | --------------- | ----- |
| ...         | ...             | ...   |
| 14          | unario más      | +     |
| 14          | negación unaria | -     |
| 13          | exponentiation  | **    |
| 12          | multiplication  | *     |
| 12          | division        | /     |
| 11          | addition        | +     |
| 11          | subtraction     | -     |
| ...         | ...             | ...   |
| 2           | assignment      | =     |
| ...         | ...             | ...   |



# --question--

## --text--

When dealing with multiple operators in a JavaScript expression, which statement is true regarding the order of execution?

## --answers--

Operators are executed from right to left, regardless of their precedence.

---

Operators with higher precedence are executed first, and parentheses can override the predefined precedence.

---

The operator precedence is determined by the operator's speed of execution.

---

Multiplication always takes precedence over addition, and unary operators are executed after binary ones.


## --video-solution--

2
