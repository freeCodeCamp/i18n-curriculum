---
id: 594db4d0dedb4c06a2a4cefd
title: Babbage problem
challengeType: 1
forumTopicId: 302229
dashedName: babbage-problem
---

# --description--

Charles Babbage, der vorausblickte auf die Arten von Problemen, die seine Analytical Engine lösen könnte, gab dieses Beispiel:

<blockquote>
Was ist die kleinste positive ganze Zahl, deren Quadrat mit den Ziffern 269.696 endet?
  <footer style='margin-left: 2em;'>Babbage, Brief an Lord Bowden, 1837; siehe Hollingdale und Tootill, <i>Electronic Computers</i>, zweite Auflage, 1970, S. 125.</footer>
</blockquote>

Er dachte, die Antwort könnte 99.736 sein, dessen Quadrat 9.947.269.696 ist; aber er konnte sich nicht sicher sein.

Die Aufgabe besteht darin herauszufinden, ob Babbage mit seiner Antwort richtig lag.

# --instructions--

Implementieren Sie eine Funktion, die die kleinste ganze Zahl zurückgibt, die das Babbage-Problem erfüllt. Wenn Babbage richtig lag, geben Sie seine Zahl zurück.

# --hints--

`babbage` sollte eine Funktion sein.

```js
assert(typeof babbage === 'function');
```

`babbage(99736, 269696)` sollte nicht 99736 zurückgeben (es gibt eine kleinere Antwort).

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
