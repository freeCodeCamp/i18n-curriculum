---
id: 5900f4861000cf542c50ff98
title: 'Problem 281: Pizza-Beläge'
challengeType: 1
forumTopicId: 301932
dashedName: problem-281-pizza-toppings
---

# --description--

Du erhältst eine Pizza (perfekter Kreis), die in $m·n$ gleich große Stücke geschnitten wurde, und du wolltest auf jedem Stück genau einen Belag haben.

Bezeichne $f(m,n)$ die Anzahl der Möglichkeiten, wie man die Pizza mit $m$ verschiedenen Belägen ($m ≥ 2$) belegen kann, wobei jeder Belag in genau $n$ Scheiben ($n ≥ 1$) verwendet wird. Spiegelungen werden als eindeutig betrachtet, Drehungen nicht.

So ist z. B. $f(2,1) = 1$, $f(2,2) = f(3,1) = 2$ und $f(3,2) = 16$. $f(3,2)$ ist unten dargestellt:

<img alt="Animation mit 16 Möglichkeiten, 3 verschiedene Toppings auf je 2 Scheiben zu haben" src="https://cdn.freecodecamp.org/curriculum/project-euler/pizza-toppings.gif" style="background-color: white; padding: 10px; display: block; margin-right: auto; margin-left: auto; margin-bottom: 1.2rem;" />

Finde die Summe aller $f(m,n)$, so dass $f(m,n) ≤ {10}^{15}$.

# --hints--

`pizzaToppings()` sollte `1485776387445623` zurückgeben.

```js
assert.strictEqual(pizzaToppings(), 1485776387445623);
```

# --seed--

## --seed-contents--

```js
function pizzaToppings() {

  return true;
}

pizzaToppings();
```

# --solutions--

```js
// solution required
```
