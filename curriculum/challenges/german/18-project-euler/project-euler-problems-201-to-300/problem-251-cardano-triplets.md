---
id: 5900f4671000cf542c50ff7a
title: 'Problem 251: Cardano-Drillinge'
challengeType: 1
forumTopicId: 301899
dashedName: problem-251-cardano-triplets
---

# --description--

Ein Drilling von positiven Integern ($a$,$b$,$c$) wird als Cardano-Drilling bezeichnet, wenn es die folgende Bedingung erfüllt:

$$\sqrt[3]{a + b \sqrt{c}} + \sqrt[3]{a - b \sqrt{c}} = 1$$

Zum Beispiel ist (2,1,5) ein Cardano-Drilling.

Es existieren 149 Cardano-Drillinge, für die $a + b + c ≤ 1000$ gilt.

Finde heraus, wie viele Cardano-Drillinge existieren, bei denen $a + b + c ≤ 110\\,000\\,000$ gilt.

# --hints--

`cardanoTriplets()` sollte `18946051` zurückgeben.

```js
assert.strictEqual(cardanoTriplets(), 18946051);
```

# --seed--

## --seed-contents--

```js
function cardanoTriplets() {

  return true;
}

cardanoTriplets();
```

# --solutions--

```js
// solution required
```
