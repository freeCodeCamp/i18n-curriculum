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
| 13          | exponenciación  | **    |
| 12          | multiplicación  | *     |
| 12          | división        | /     |
| 11          | adición         | +     |
| 11          | sustracción     | -     |
| ...         | ...             | ...   |
| 2           | tarea           | =     |
| ...         | ...             | ...   |



# --questions--

## --text--

Cuando se trata de múltiples operadores en una expresión de JavaScript, ¿qué afirmación es verdadera respecto al orden de ejecución?

## --answers--

Los operadores se ejecutan de derecha a izquierda, independientemente de su precedencia.

---

Los operadores con mayor precedencia se ejecutan primero, y los paréntesis pueden anular la precedencia predefinida.

---

La precedencia del operador está determinada por la velocidad de ejecución del operador.

---

La multiplicación siempre tiene precedencia sobre la adición, y los operadores unarios se ejecutan después de los binarios.


## --video-solution--

2
