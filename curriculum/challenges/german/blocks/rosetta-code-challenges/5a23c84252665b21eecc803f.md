---
id: 5a23c84252665b21eecc803f
title: Summe der Ziffern einer Ganzzahl
challengeType: 1
forumTopicId: 302331
dashedName: sum-digits-of-an-integer
---

# --description--

Schreib eine Funktion, die eine Zeichenkette als Parameter annimmt. Diese Zeichenkette steht für eine Zahl, die eine beliebige Basis (kleiner als 37) haben kann, und gibt die Summe ihrer Ziffern zurück.

<ul>
  <li><b>1</b><sub>10</sub> ergibt <b>1</b></li>
  <li><b>1234</b><sub>10</sub> ergibt <b>10</b></li>
  <li><b>fe</b><sub>16</sub> ergibt <b>29</b></li>
  <li><b>f0e</b><sub>16</sub> ergibt <b>29</b></li>
</ul>

# --hints--

`sumDigits` sollte eine Funktion sein.

```js
assert(typeof sumDigits == 'function');
```

`sumDigits("1")` sollte eine Zahl zurückgeben.

```js
assert(typeof sumDigits('1') == 'number');
```

`sumDigits("1")` sollte `1` zurückgeben.

```js
assert.equal(sumDigits('1'), 1);
```

`sumDigits("12345")` sollte `15` zurückgeben.

```js
assert.equal(sumDigits('12345'), 15);
```

`sumDigits("254")` sollte `11` zurückgeben.

```js
assert.equal(sumDigits('254'), 11);
```

`sumDigits("fe")` sollte `29` zurückgeben.

```js
assert.equal(sumDigits('fe'), 29);
```

`sumDigits("f0e")` sollte `29` zurückgeben.

```js
assert.equal(sumDigits('f0e'), 29);
```

`sumDigits("999ABCXYZ")` sollte `162` zurückgeben.

```js
assert.equal(sumDigits('999ABCXYZ'), 162);
```

# --seed--

## --seed-contents--

```js
function sumDigits(n) {

}
```

# --solutions--

```js
function sumDigits(n) {
  n += '';
  for (var s = 0, i = 0, e = n.length; i < e; i += 1)
    s += parseInt(n.charAt(i), 36);
  return s;
}
```
