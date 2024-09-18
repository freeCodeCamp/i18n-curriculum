---
id: 5900f4971000cf542c50ffa9
title: 'Problem 298: Selective Amnesia'
challengeType: 1
forumTopicId: 301950
dashedName: problem-298-selective-amnesia
---

# --description--

Larry and Robin play a memory game involving of a sequence of random numbers between 1 and 10, inclusive, that are called out one at a time. Each player can remember up to 5 previous numbers. When the called number is in a player's memory, that player is awarded a point. If it's not, the player adds the called number to his memory, removing another number if his memory is full.

Both players start with empty memories. Both players always add new missed numbers to their memory but use a different strategy in deciding which number to remove: Larry's strategy is to remove the number that hasn't been called in the longest time. Robin's strategy is to remove the number that's been in the memory the longest time.

Example game:

| Turn | Número llamado | Memoria de Larry | Puntuación de Larry | Memoria de Robin | Puntuación de Robin |
| ---- | -------------- | ----------------:| ------------------- | ---------------- | ------------------- |
| 1    | 1              |                1 | 0                   | 1                | 0                   |
| 2    | 2              |              1,2 | 0                   | 1,2              | 0                   |
| 3    | 4              |            1,2,4 | 0                   | 1,2,4            | 0                   |
| 4    | 6              |          1,2,4,6 | 0                   | 1,2,4,6          | 0                   |
| 5    | 1              |          1,2,4,6 | 1                   | 1,2,4,6          | 1                   |
| 6    | 8              |        1,2,4,6,8 | 1                   | 1,2,4,6,8        | 1                   |
| 7    | 10             |       1,4,6,8,10 | 1                   | 2,4,6,8,10       | 1                   |
| 8    | 2              |       1,2,6,8,10 | 1                   | 2,4,6,8,10       | 2                   |
| 9    | 4              |       1,2,4,8,10 | 1                   | 2,4,6,8,10       | 3                   |
| 10   | 1              |       1,2,4,8,10 | 2                   | 1,4,6,8,10       | 3                   |

Denotando la puntuación de Larry por $L$ y la puntuación de Robin por $R$, ¿cuál es el valor esperado de $|L - R|$ después de 50 turnos? Da tu respuesta redondeada a ocho lugares decimales usando el formato x.xxxxxxxx.

# --hints--

`selectiveAmnesia()` debe volver `1.76882294`.

```js
assert.strictEqual(selectiveAmnesia(), 1.76882294);
```

# --seed--

## --seed-contents--

```js
function selectiveAmnesia() {

  return true;
}

selectiveAmnesia();
```

# --solutions--

```js
// solution required
```
