---
id: ae9defd7acaf69703ab432ea
title: Implementieren Sie einen auf einem Bereich basierenden LCM-Rechner
challengeType: 26
dashedName: implement-a-range-based-lcm-calculator
---

# --description--

In diesem Labor erstellen Sie eine Funktion, die ein Array mit zwei Zahlen entgegennimmt und das kleinste gemeinsame Vielfache (LCM) dieser beiden Zahlen sowie aller Zahlen dazwischen zurückgibt.

**Ziel**: Erfüllen Sie die untenstehenden User Stories und bestehen Sie alle Tests, um das Labor abzuschließen.

**User Stories:**

1. Sie sollten eine `smallestCommons`-Funktion haben, die ein Array mit zwei Zahlen als Argument akzeptiert.
1. Die `smallestCommons`-Funktion sollte das kleinste gemeinsame Vielfache zurückgeben, das sowohl durch beide Zahlen als auch durch alle aufeinanderfolgenden Zahlen im Bereich zwischen ihnen ohne Rest teilbar ist.
1. Die Funktion sollte Eingaben verarbeiten können, bei denen die beiden Zahlen nicht in numerischer Reihenfolge sind.

# --hints--

Sie sollten eine `smallestCommons`-Funktion haben.

```js
assert.isFunction(smallestCommons);
```

`smallestCommons([1, 5])` sollte eine Zahl zurückgeben.

```js
assert.isNumber(smallestCommons([1, 5]));
```

`smallestCommons([1, 5])` sollte `60` zurückgeben.

```js
assert.strictEqual(smallestCommons([1, 5]), 60);
```

`smallestCommons([5, 1])` sollte `60` zurückgeben.

```js
assert.strictEqual(smallestCommons([5, 1]), 60);
```

`smallestCommons([2, 10])` sollte `2520` zurückgeben.

```js
assert.strictEqual(smallestCommons([2, 10]), 2520);
```

`smallestCommons([1, 13])` sollte `360360` zurückgeben.

```js
assert.strictEqual(smallestCommons([1, 13]), 360360);
```

`smallestCommons([23, 18])` sollte `6056820` zurückgeben.

```js
assert.strictEqual(smallestCommons([23, 18]), 6056820);
```

# --seed--

## --seed-contents--

```js

```

# --solutions--

```js
function smallestCommons(arr) {
  let [min, max] = arr.sort((a, b) => a - b);

  function gcd(a, b) {
    return b === 0 ? a : gcd(b, a % b);
  }

  function lcm(a, b) {
    return (a * b) / gcd(a, b);
  }

  let multiple = min;

  for (let i = min + 1; i <= max; i++) {
    multiple = lcm(multiple, i);
  }

  return multiple;
}
```
