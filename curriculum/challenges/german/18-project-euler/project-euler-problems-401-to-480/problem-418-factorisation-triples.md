---
id: 5900f50f1000cf542c510021
title: 'Problem 418: Faktorisierungs-Tripel'
challengeType: 1
forumTopicId: 302087
dashedName: problem-418-factorisation-triples
---

# --description--

Sei $n$ ein positiver Integer. Ein integeresTripel ($a$, $b$, $c$) heißt ein Faktorisierungs-Tripel von $n$, wenn:

- $1 ≤ a ≤ b ≤ c$
- $a \times b \times c = n$.

Definiere $f(n)$ als $a + b + c$ für das Faktorisierungs-Tripel ($a$, $b$, $c$) von $n$, welches $\frac{c}{a} $ minimiert. Man kann nachweisen, dass dieses Tripel einzigartig ist.

Zum Beispiel, $f(165) = 19$, $f(100\\,100) = 142$ und $f(20!) = 4\\,034\\,872$.

Finde $f(43!)$.

# --hints--

`factorisationTriples()` sollte `1177163565297340400` zurückgeben.

```js
assert.strictEqual(factorisationTriples(), 1177163565297340400);
```

# --seed--

## --seed-contents--

```js
function factorisationTriples() {

  return true;
}

factorisationTriples();
```

# --solutions--

```js
// solution required
```
