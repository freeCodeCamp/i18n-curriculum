---
id: 5900f5041000cf542c510016
title: 'Problem 407: Idempotente'
challengeType: 1
forumTopicId: 302075
dashedName: problem-407-idempotents
---

# --description--

Wenn wir $a^2\bmod 6$ für $0 ≤ a ≤ 5$ berechnen, erhalten wir: 0, 1, 4, 3, 4, 1.

Der größte Wert von a, für den $a^2 ≡ a\bmod 6$ gilt, ist $4$.

Nennen wir $M(n)$ den größten Wert von $a &lt; n$, so dass $a^2 ≡ a (\text{mod } n)$. Somit ist $M(6) = 4$.

Finde $\sum M(n)$ für $1 ≤ n ≤ {10}^7$.

# --hints--

`idempotents()` sollte `39782849136421` zurückgeben.

```js
assert.strictEqual(idempotents(), 39782849136421);
```

# --seed--

## --seed-contents--

```js
function idempotents() {

  return true;
}

idempotents();
```

# --solutions--

```js
// solution required
```
