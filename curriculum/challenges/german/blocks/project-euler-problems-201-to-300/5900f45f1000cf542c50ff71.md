---
id: 5900f45f1000cf542c50ff71
title: 'Problem 242: Ungerade Drillinge'
challengeType: 1
forumTopicId: 301889
dashedName: problem-242-odd-triplets
---

# --description--

Für die Menge {1,2,..., $n$} definieren wir $f(n, k)$ als die Anzahl ihrer $k$-Element-Untermengen mit einer ungeraden Summe von Elementen. Zum Beispiel ist $f(5,3) = 4$, da die Menge {1,2,3,4,5} vier Teilmengen mit 3 Elementen hat, die eine ungerade Summe von Elementen haben, nämlich: {1,2,4}, {1,3,5}, {2,3,4} und {2,4,5}.

Wenn alle drei Werte $n$, $k$ und $f(n, k)$ ungerade sind, sagt man, dass sie ein ungeraden Drilling $[n, k, f(n, k)]$ bilden.

Es gibt genau fünf ungerade Drillinge mit $n ≤ 10$, nämlich: $[1, 1, f(1, 1) = 1]$, $[5, 1, f(5, 1) = 3]$, $[5, 5, f(5, 5) = 1]$, $[9, 1, f(9, 1) = 5]$ und $[9, 9, f(9, 9) = 1]$.

Wie viele ungerade Drillinge gibt es mit $n ≤ {10}^{12}$?

# --hints--

`oddTriplets()` sollte `997104142249036700` zurückgeben.

```js
assert.strictEqual(oddTriplets(), 997104142249036700);
```

# --seed--

## --seed-contents--

```js
function oddTriplets() {

  return true;
}

oddTriplets();
```

# --solutions--

```js
// solution required
```
