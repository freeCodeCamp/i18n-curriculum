---
id: cf1111c1c12feddfaeb1bdef
title: Tengeneza nambari kamili za bahati nasibu kwa JavaScript
challengeType: 1
forumTopicId: 18186
dashedName: generate-random-whole-numbers-with-javascript
---

# --description--

Unaweza kutengeneza nambari za desimali za bahati nasibu kwa `Math.random()`, lakini wakati mwingine unahitaji kutengeneza nambari kamili za bahati nasibu. Mchakato ufuatao utakupa nambari kamili ya bahati nasibu isiyozidi `20`:

1. Tumia `Math.random()` kutengeneza nambari ya desimali ya bahati nasibu.
2. Zidisha nambari hiyo ya desimali ya bahati nasibu kwa `20`.
3. Tumia `Math.floor()` kuzungusha nambari hii chini hadi nambari kamili iliyo karibu nayo.

Kumbuka kwamba `Math.random()` haiwezi kamwe kurudisha `1`, kwa hivyo haiwezekani kupata `20` kwa sababu unazungusha chini kwa `Math.floor()`. Mchakato huu utakupa nambari kamili ya bahati nasibu katika anuwai kutoka `0` hadi `19`.

Ukichanganya yote pamoja, msimbo wako utaonekana hivi:

```js
Math.floor(Math.random() * 20);
```

Unafanya wito wa `Math.random()`, ukizidisha matokeo kwa 20, kisha kupitisha thamani kwa `Math.floor()` kuzungusha thamani chini hadi nambari kamili iliyo karibu.

# --instructions--

Tumia mbinu hii kutengeneza na kurudisha nambari kamili ya bahati nasibu katika anuwai kutoka `0` hadi `9`.

# --hints--

Matokeo ya `randomWholeNum` yanapaswa kuwa nambari kamili.

```js
assert(
  typeof randomWholeNum() === 'number' &&
    (function () {
      var r = randomWholeNum();
      return Math.floor(r) === r;
    })()
);
```

Unapaswa kutumia `Math.random` kutengeneza nambari ya bahati nasibu.

```js
assert(__helpers.removeJSComments(code).match(/Math.random/g).length >= 1);
```

Unapaswa kuwa umezidisha matokeo ya `Math.random` kwa 10 ili kuifanya kuwa nambari katika anuwai kutoka sifuri hadi tisa.

```js
assert(
  __helpers.removeJSComments(code).match(/\s*?Math.random\s*?\(\s*?\)\s*?\*\s*?10[\D]\s*?/g) ||
    __helpers.removeJSComments(code).match(/\s*?10\s*?\*\s*?Math.random\s*?\(\s*?\)\s*?/g)
);
```

Unapaswa kutumia `Math.floor` kuondoa sehemu ya desimali ya nambari.

```js
assert(__helpers.removeJSComments(code).match(/Math.floor/g).length >= 1);
```

# --seed--

## --seed-contents--

```js
function randomWholeNum() {
  return Math.random();
}
```

# --solutions--

```js
function randomWholeNum() {
  return Math.floor(Math.random() * 10);
}
```
