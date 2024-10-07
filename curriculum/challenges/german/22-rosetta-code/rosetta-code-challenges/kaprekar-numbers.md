---
id: 5a23c84252665b21eecc7eca
title: Kaprekar-Zahlen
challengeType: 1
forumTopicId: 302296
dashedName: kaprekar-numbers
---

# --description--

Ein positiver Integer ist eine Kaprekar-Zahl, wenn:

<ul>
  <li>Es 1 ist, oder</li>
  <li>Die Dezimaldarstellung ihres Quadrats einmal in zwei Teile aufgeteilt werden kann, die aus positiven Integern bestehen und deren Summe die ursprüngliche Zahl ergibt. </li>
</ul>

Beachte, dass eine Teilung, die in ein Teil resultiert, dass nur aus 0en besteht, ungültig ist, da 0 nicht als positiv angesehen wird.

Beispiel Kaprekar-Zahlen:

<ul>
  <li><code>2223</code> ist eine Kaprekar-Zahl, da <code>2223 * 2223 = 4941729</code>, <code>4941729</code> in <code>494</code> und <code>1729</code>, und <code>494 + 1729 = 2223</code> geteilt werden kann</li>
  <li>Die Reihe von Kaprekar-Zahlen ist bekannt als A006886, und beginnt als <code>1, 9, 45, 55, ...</code></li>
</ul>

# --instructions--

Schreibe eine Funktion, die eine Zahl $n$, eine Basis $bs$, nimmt und true zurückgibt, wenn die Zahl eine Kaprekar-Zahl für eine gegebene Basis ist. Andernfalls gibt die Funktion false zurück.

# --hints--

`isKaprekar` sollte eine Funktion sein.

```js
assert(typeof isKaprekar == 'function');
```

`isKaprekar(1, 10)` sollte einen Boolean zurückgeben.

```js
assert(typeof isKaprekar(1, 10) == 'boolean');
```

`isKaprekar(1, 10)` sollte `true` zurückgeben.

```js
assert.equal(isKaprekar(1, 10), true);
```

`isKaprekar(9, 10)` sollte `true` zurückgeben.

```js
assert.equal(isKaprekar(9, 10), true);
```

`isKaprekar(2223, 10)` sollte `true` zurückgeben.

```js
assert.equal(isKaprekar(2223, 10), true);
```

`isKaprekar(22823, 10)` sollte `false` zurückgeben.

```js
assert.equal(isKaprekar(22823, 10), false);
```

`isKaprekar(9, 17)` sollte `false` zurückgeben.

```js
assert.equal(isKaprekar(9, 17), false);
```

`isKaprekar(225, 17)` sollte `true` zurückgeben.

```js
assert.equal(isKaprekar(225, 17), true);
```

`isKaprekar(999, 17)` sollte `false` zurückgeben.

```js
assert.equal(isKaprekar(999, 17), false);
```

# --seed--

## --seed-contents--

```js
function isKaprekar(n, bs) {

}
```

# --solutions--

```js
function isKaprekar(n, bs) {
  if (n < 1) return false;
  if (n == 1) return true;
  for (var a = n * n, b = 0, s = 1; a; s *= bs) {
    b += (a % bs) * s;
    a = Math.floor(a / bs);
    if (b && a + b == n) return true;
  }
  return false;
}
```
