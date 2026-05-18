---
id: cf1111c1c11feddfaeb9bdef
title: Tengeneza sehemu za nambari za kihesabu za bahati nasibu kwa JavaScript
challengeType: 1
forumTopicId: 18185
dashedName: generate-random-fractions-with-javascript
---

# --description--

Nambari za bahati nasibu ni muhimu kwa kuunda tabia za bahati nasibu.

JavaScript ina kitendakazi cha `Math.random()` kinachozalisha nambari ya desimali ya bahati nasibu kati ya `0` (ikiwa ni pamoja na) na `1` (isipokuwa). Hivyo `Math.random()` inaweza kurudisha `0` lakini hawezi kurudisha `1`.

**Kumbuka:** Kama ilivyo katika <a href="/learn/javascript-algorithms-and-data-structures/basic-javascript/storing-values-with-the-assignment-operator" target="_blank" rel="noopener noreferrer nofollow">Kuhifadhi Thamani kwa Opereta ya Mgawo</a>, wito wote wa kitendakazi utatatuliwa kabla ya `return` kutekelezwa, hivyo tunaweza `return` thamani ya kitendakazi cha `Math.random()`.

# --instructions--

Badilisha `randomFraction` ili irudishe nambari ya bahati nasibu badala ya kurudisha `0`.

# --hints--

`randomFraction` inapaswa kurudisha nambari ya bahati nasibu.

```js
assert(typeof randomFraction() === 'number');
```

Nambari inayorudishwa na `randomFraction` inapaswa kuwa desimali.

```js
assert((randomFraction() + '').match(/\./g));
```

Unapaswa kutumia `Math.random` kuzalisha nambari ya desimali ya bahati nasibu.

```js
assert(__helpers.removeJSComments(code).match(/Math\.random/g).length >= 0);
```

# --seed--

## --seed-contents--

```js
function randomFraction() {

  // Only change code below this line

  return 0;

  // Only change code above this line
}
```

# --solutions--

```js
function randomFraction() {
  return Math.random();
}
```
