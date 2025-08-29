---
id: 5900f5081000cf542c510019
title: 'Problem 411: Bergaufwärts führende Pfade'
challengeType: 1
forumTopicId: 302080
dashedName: problem-411-uphill-paths
---

# --description--

Sei $n$ ein positiver Integer. Angenommen, es gibt Stationen bei den Koordinaten $(x, y) = (2^i\bmod n, 3^i\bmod n)$ für $0 ≤ i ≤ 2n$. Wir werden Stationen mit denselben Koordinaten wie dieselbe Station berücksichtigen.

Wir wollen einen Pfad von (0, 0) nach ($n$, $n$) bilden, sodass die Koordinaten $x$ und $y$ niemals abnehmen.

Sei $S(n)$ die maximale Anzahl von Stationen, die ein solcher Weg durchlaufen kann.

Wenn beispielsweise $n = 22$ ist, gibt es 11 verschiedene Stationen und ein gültiger Pfad kann durch höchstens 5 Stationen führen. Daher ist $S(22) = 5$. Der Fall wird im Folgenden anhand eines Beispiels für einen optimalen Weg dargestellt:

<img alt="gültiger Pfad, der durch 5 Stationen führt, für n = 22, mit 11 verschiedenen Stationen" src="https://cdn.freecodecamp.org/curriculum/project-euler/uphill-paths.png" style="background-color: white; padding: 10px; display: block; margin-right: auto; margin-left: auto; margin-bottom: 1.2rem;" />

Es kann auch nachgewiesen werden, dass $S(123) = 14$ und $S(10\\,000) = 48$.

Finde $\sum S(k^5)$ für $1 ≤ k ≤ 30$.

# --hints--

`uphillPaths()` sollte `9936352` zurückgeben.

```js
assert.strictEqual(uphillPaths(), 9936352);
```

# --seed--

## --seed-contents--

```js
function uphillPaths() {

  return true;
}

uphillPaths();
```

# --solutions--

```js
// solution required
```
