---
id: 5900f4ca1000cf542c50ffdc
title: 'Problem 349: Langton''s Ameise'
challengeType: 1
forumTopicId: 302008
dashedName: problem-349-langtons-ant
---

# --description--

An ant moves on a regular grid of squares that are colored either black or white.

Die Ameise ist immer in eine der Kardinalrichtungen (links, rechts, oben oder unten) ausgerichtet und bewegt sich nach den folgenden Regeln von Feld zu Feld:

- wenn sie auf einem schwarzen Feld steht, wechselt sie die Farbe des Feldes zu weiß, dreht sich um 90° gegen den Uhrzeigersinn und rückt ein Feld vor.
- befindet sie sich auf einem schwarzen Feld, ändert sie die Farbe des Feldes in weiß, dreht sich um 90° gegen den Uhrzeigersinn und rückt ein Feld vor.

Wie viele Quadrate sind nach ${10}^{18}$ Zügen der Ameise schwarz, wenn man von einem komplett weißen Gitter ausgeht?

# --hints--

`langtonsAnt()` sollte `115384615384614940` zurückgeben.

```js
assert.strictEqual(langtonsAnt(), 115384615384614940);
```

# --seed--

## --seed-contents--

```js
function langtonsAnt() {

  return true;
}

langtonsAnt();
```

# --solutions--

```js
// solution required
```
