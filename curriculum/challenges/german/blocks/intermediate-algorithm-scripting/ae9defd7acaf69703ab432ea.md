---
id: ae9defd7acaf69703ab432ea
title: Kleinster gemeinsamer Vielfacher
challengeType: 1
forumTopicId: 16075
dashedName: smallest-common-multiple
---

# --description--

Finden Sie das kleinste gemeinsame Vielfache der angegebenen Parameter, das sowohl durch beide als auch durch alle aufeinanderfolgenden Zahlen im Bereich zwischen diesen Parametern ohne Rest teilbar ist.

Der Bereich wird als Array von zwei Zahlen angegeben, die nicht unbedingt in numerischer Reihenfolge sind.

Wenn zum Beispiel 1 und 3 angegeben sind, finden Sie das kleinste gemeinsame Vielfache von 1 und 3, das auch durch alle Zahlen *zwischen* 1 und 3 ohne Rest teilbar ist. Die Antwort wäre hier 6.

# --hints--

`smallestCommons([1, 5])` sollte eine Zahl zurückgeben.

```js
assert.deepEqual(typeof smallestCommons([1, 5]), 'number');
```

`smallestCommons([1, 5])` sollte 60 zurückgeben.

```js
assert.deepEqual(smallestCommons([1, 5]), 60);
```

`smallestCommons([5, 1])` sollte 60 zurückgeben.

```js
assert.deepEqual(smallestCommons([5, 1]), 60);
```

`smallestCommons([2, 10])` sollte 2520 zurückgeben.

```js
assert.deepEqual(smallestCommons([2, 10]), 2520);
```

`smallestCommons([1, 13])` sollte 360360 zurückgeben.

```js
assert.deepEqual(smallestCommons([1, 13]), 360360);
```

`smallestCommons([23, 18])` sollte 6056820 zurückgeben.

```js
assert.deepEqual(smallestCommons([23, 18]), 6056820);
```

# --seed--

## --seed-contents--

```js
function smallestCommons(arr) {
  return arr;
}

smallestCommons([1,5]);
```

# --solutions--

```js
function gcd(a, b) {
    while (b !== 0) {
        a = [b, b = a % b][0];
    }
    return a;
}

function lcm(a, b) {
    return (a * b) / gcd(a, b);
}

function smallestCommons(arr) {
  arr.sort(function(a,b) {return a-b;});
  var rng = [];
  for (var i = arr[0]; i <= arr[1]; i++) {
    rng.push(i);
  }
  return rng.reduce(lcm);
}
```
