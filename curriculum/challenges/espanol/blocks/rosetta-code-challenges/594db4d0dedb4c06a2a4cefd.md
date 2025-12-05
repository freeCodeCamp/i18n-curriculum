---
id: 594db4d0dedb4c06a2a4cefd
title: Problema Babbage
challengeType: 1
forumTopicId: 302229
dashedName: babbage-problem
---

# --description--

Charles Babbage, anticipándose a los tipos de problemas que su Analytical Engine podría resolver, dio este ejemplo:

<blockquote>
  What is the smallest positive integer whose square ends in the digits 269,696?
  <footer style='margin-left: 2em;'>Babbage, letter to Lord Bowden, 1837; see Hollingdale and Tootill, <i>Electronic Computers</i>, second edition, 1970, p. 125.</footer>
</blockquote>

Pensó que la respuesta podría ser 99,736, cuyo cuadrado es 9,947,269,696; pero no podía estar seguro.

La tarea es descubrir si Babbage tenía la respuesta correcta.

# --instructions--

Implementa una función para devolver el entero más bajo que satisfaga el problema de Babbage. Si Babbage tenía razón, devuelve el número de Babbage.

# --hints--

`babbage` debería ser una función.

```js
assert(typeof babbage === 'function');
```

`babbage(99736, 269696)` no debería devolver 99736 (hay una respuesta más pequeña).

```js
assert.equal(babbage(babbageAns, endDigits), answer);
```

# --seed--

## --after-user-code--

```js
const babbageAns = 99736;
const endDigits = 269696;
const answer = 25264;
```

## --seed-contents--

```js
function babbage(babbageNum, endDigits) {

  return true;
}
```

# --solutions--

```js
function babbage(babbageAns, endDigits) {
  const babbageNum = Math.pow(babbageAns, 2);
  const babbageStartDigits = parseInt(babbageNum.toString().replace('269696', ''));
  let answer = 99736;

  // count down from this answer and save any sqrt int result. return lowest one
  for (let i = babbageStartDigits; i >= 0; i--) {
    const num = parseInt(i.toString().concat('269696'));
    const result = Math.sqrt(num);
    if (result === Math.floor(Math.sqrt(num))) {
      answer = result;
    }
  }

  return answer;
}
```
