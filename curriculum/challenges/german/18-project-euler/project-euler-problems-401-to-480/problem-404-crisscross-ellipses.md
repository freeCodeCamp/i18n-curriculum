---
id: 5900f5001000cf542c510012
title: 'Problem 404: Überkreuzte Ellipsen'
challengeType: 1
forumTopicId: 302072
dashedName: problem-404-crisscross-ellipses
---

# --description--

$E_a$ ist eine Ellipse mit einer Gleichung der Form $x^2 + 4y^2 = 4a^2$.

$E_a'$ ist das gedrehte Bild von $E_a$ um $θ$ Grad gegen den Uhrzeigersinn um den Ursprung $O(0, 0)$ herum für $0° &lt; θ &lt; 90°$.

<img alt="Ellipse E_a und Ellipse um θ Grad gedreht E_a'" src="https://cdn.freecodecamp.org/curriculum/project-euler/crisscross-ellipses.gif" style="background-color: white; padding: 10px; display: block; margin-right: auto; margin-left: auto; margin-bottom: 1.2rem;" />

$b$ ist die Distanz zum Ursprung von den beiden Schnittpunkten, die dem Ursprung am nächsten sind, und $c$ ist die Distanz der anderen beiden Schnittpunkte.

Wir nennen einen geordneten Drilling ($a$, $b$, $c$) einen kanonischen ellipsoidischen Drilling, wenn $a$, $b$ und $c$ positive Integer sind.

Zum Beispiel ist (209, 247, 286) ein kanonischer ellipsoidischer Drilling.

Lasse $C(N)$ die Anzahl der eindeutigen kanonischen ellipsoidischen Drillinge ($a$, $b$, $c$) für $a ≤ N$ sein.

Es kann bestätigt werden, $C({10}^3) = 7$, $C({10}^4) = 106$ und $C({10}^6) = 11\\,845$.

Finde $C({10}^{17})$.

# --hints--

`crisscrossEllipses()` sollte `1199215615081353` zurückgeben.

```js
assert.strictEqual(crisscrossEllipses(), 1199215615081353);
```

# --seed--

## --seed-contents--

```js
function crisscrossEllipses() {

  return true;
}

crisscrossEllipses();
```

# --solutions--

```js
// solution required
```
