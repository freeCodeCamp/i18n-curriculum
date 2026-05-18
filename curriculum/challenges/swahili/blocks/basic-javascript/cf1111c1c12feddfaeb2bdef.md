---
id: cf1111c1c12feddfaeb2bdef
title: Tengeneza nambari kamili za bahati nasibu ndani ya anuwai
challengeType: 1
forumTopicId: 18187
dashedName: generate-random-whole-numbers-within-a-range
---

# --description--

Unaweza kutengeneza nambari kamili ya bahati nasibu katika anuwai kutoka sifuri hadi nambari fulani. Pia unaweza kuchagua nambari ya chini tofauti kwa anuwai hii.

Utaweka nambari yako ya kiwango cha chini `min` na nambari yako ya kiwango cha juu `max`.

Fomula hii inatoa nambari kamili ya bahati nasibu katika anuwai kutoka `min` hadi `max`. Chukua muda kusoma na jaribu kuelewa msimbo huu unafanya nini:

```js
Math.floor(Math.random() * (max - min + 1)) + min
```

# --instructions--

Tengeneza kitendakazi kinachoitwa `randomRange` kinachopokea anuwai `myMin` na `myMax` na kurudisha nambari kamili ya bahati nasibu ambayo ni kubwa au sawa na `myMin` na ndogo au sawa na `myMax`.

# --hints--

Nambari ya chini kabisa ya bahati nasibu inayoweza kutengenezwa na `randomRange` inapaswa kuwa sawa na nambari yako ya kiwango cha chini, `myMin`.

```js
assert(
  (function () {
    if (typeof randomRange !== 'function') {
      return false;
    }

    var calcMin = 100;
    for (var i = 0; i < 100; i++) {
      var result = randomRange(5, 15);
      calcMin = Math.min(calcMin, result);
    }

    return calcMin === 5;
  })()
);
```

Nambari ya juu kabisa ya bahati nasibu inayoweza kutengenezwa na `randomRange` inapaswa kuwa sawa na nambari yako ya kiwango cha juu, `myMax`.

```js
assert(
  (function () {
    if (typeof randomRange !== 'function') {
      return false;
    }

    var calcMax = -100;
    for (var i = 0; i < 100; i++) {
      var result = randomRange(5, 15);
      calcMax = Math.max(calcMax, result);
    }

    return calcMax === 15;
  })()
);
```

Nambari ya bahati nasibu inayotengenezwa na `randomRange` inapaswa kuwa nambari kamili, si desimali.

```js
assert(randomRange(0, 1) % 1 === 0);
```

`randomRange` inapaswa kutumia `myMax` na `myMin` na kurudisha nambari ya bahati nasibu katika anuwai yako.

```js
assert(
  (function () {
    if (
      __helpers.removeJSComments(code).match(/myMax/g).length > 1 &&
      __helpers.removeJSComments(code).match(/myMin/g).length > 2 &&
      __helpers.removeJSComments(code).match(/Math.floor/g) &&
      __helpers.removeJSComments(code).match(/Math.random/g)
    ) {
      return true;
    } else {
      return false;
    }
  })()
);
```

# --seed--

## --seed-contents--

```js
function randomRange(myMin, myMax) {
  return 0;
}
```

# --solutions--

```js
function randomRange(myMin, myMax) {
  return Math.floor(Math.random() * (myMax - myMin + 1)) + myMin;
}
```
