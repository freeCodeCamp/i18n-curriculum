---
id: 594db4d0dedb4c06a2a4cefd
title: Problema di Babbage
challengeType: 1
forumTopicId: 302229
dashedName: babbage-problem
---

# --description--

Charles Babbage, prevedendo il tipo di problemi che la sua Analytical Engine sarebbe stata in grado di risolvere, propose questo esempio:

<blockquote>
  Qual è il più piccolo numero intero positivo il cui quadrato termina con le cifre 269.696?
  <footer style='margin-left: 2em;'>Babbage, lettera a Lord Bowden, 1837; vedi Hollingdale e Tootill, <i>Electronic Computers</i>, seconda edizione, 1970, p. 125.</footer>
</blockquote>

Pensava che la risposta potesse essere 99.736, il cui quadrato è 9.947.269.696; ma non ne era sicuro.

L'attività è trovare se Babbage aveva ragione.

# --instructions--

Implementa una funzione per restituire il numero intero più basso che soddisfa il problema di Babbage. Se Babbage aveva ragione, restituisci il suo numero.

# --hints--

`babbage` dovrebbe essere una funzione.

```js
assert(typeof babbage === 'function');
```

`babbage(99736, 269696)` non dovrebbe restituire 99736 (esiste una risposta più piccola).

```js
const babbageAns = 99736;
const endDigits = 269696;
const answer = 25264;
assert.equal(babbage(babbageAns, endDigits), answer);
```

# --seed--

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
