---
id: 594db4d0dedb4c06a2a4cefd
title: Tatizo la Babbage
challengeType: 1
forumTopicId: 302229
dashedName: babbage-problem
---

# --description--

Charles Babbage, akitazama mbele kwa aina za matatizo ambayo Mashine yake ya Uchambuzi (Analytical Engine) ingekuwa na uwezo wa kuyatatua, alitoa mfano huu:

<blockquote>
  Ni nambari kamili chanya ndogo kabisa ambayo mraba wake unaishia na tarakimu 269,696?
  <footer style='margin-left: 2em;'>Babbage, barua kwa Lord Bowden, 1837; angalia Hollingdale na Tootill, <i>Electronic Computers</i>, toleo la pili, 1970, uk. 125.</footer>
</blockquote>

Alidhani jibu linaweza kuwa 99,736, ambalo mraba wake ni 9,947,269,696; lakini hakuweza kuwa na uhakika.

Zoezi ni kugundua kama Babbage alikuwa na jibu sahihi.

# --instructions--

Tekeleza kitendakazi kurudisha nambari kamili ndogo kabisa inayokidhi tatizo la Babbage. Ikiwa Babbage alikuwa sahihi, rudisha nambari ya Babbage.

# --hints--

`babbage` inapaswa kuwa kitendakazi.

```js
assert(typeof babbage === 'function');
```

`babbage(99736, 269696)` haipaswi kurudisha 99736 (kuna jibu ndogo zaidi).

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
