---
id: 597089c87eec450c68aa1643
title: Definiere einen primitiven Datentyp
challengeType: 1
forumTopicId: 302248
dashedName: define-a-primitive-data-type
---

# --description--

Definiere einen Typ, der sich wie eine Ganzzahl verhält, aber einen niedrigsten gültigen Wert von 1 und einen höchsten gültigen Wert von 10 hat.

Fehlerbehandlung:

<ul>
  <li>Wenn du versuchst, eine <code>Num</code> mit einem Wert außerhalb von 1-10 zu instanziieren, sollte ein <code>TypeError</code> mit einer Fehlermeldung von <code>'Out of range'</code> gemeldet werden.</li>
  <li>Wenn du versuchst eine <code>Num</code> mit einem Wert zu instanziieren, der keine Zahl ist, sollte ein <code>TypeError</code> mit einer Fehlermeldung von <code>'Not a Number'</code> gemeldet werden.</li>
</ul>

# --hints--

`Num` sollte eine Funktion sein.

```js
assert(typeof Num === 'function');
```

`new Num(4)` sollte ein Objekt zurückgeben.

```js
assert(typeof new Num(4) === 'object');
```

`new Num('test')` sollte einen TypeError mit der Meldung 'Not a Number' auslösen.

```js
assert.throws(() => new Num('test'), TypeError);
```

`new Num(0)` sollte einen TypeError mit der Meldung 'Out of range' auslösen.

```js
assert.throws(() => new Num(0), TypeError);
```

`new Num(-5)` sollte einen TypeError mit der Nachricht 'Out of range' melden.

```js
assert.throws(() => new Num(-5), TypeError);
```

`new Num(10)` sollte einen TypeError mit der Meldung 'Out of range' auslösen.

```js
assert.throws(() => new Num(11), TypeError);
```

`new Num(20)` sollte einen TypeError mit der Meldung 'Out of range' auslösen.

```js
assert.throws(() => new Num(20), TypeError);
```

`new Num(3) + new Num(4)` sollte 7 ergeben.

```js
assert.equal(new Num(3) + new Num(4), 7);
```

`new Num(3) - new Num(4)` sollte -1 sein.

```js
assert.equal(new Num(3) - new Num(4), -1);
```

`new Num(3) * new Num(4)` sollte 12 ergeben.

```js
assert.equal(new Num(3) * new Num(4), 12);
```

`new Num(3) / new Num(4)` sollte 0,75 betragen.

```js
assert.equal(new Num(3) / new Num(4), 0.75);
```

`new Num(3) < new Num(4)` should be true.

```js
assert(new Num(3) < new Num(4));
```

`new Num(3) > new Num(4)` should be false.

```js
assert(!(new Num(3) > new Num(4)));
```

`(new Num(5)).toString()` sollte '5' zurückgeben

```js
assert.equal(new Num(5).toString(), '5');
```

# --seed--

## --seed-contents--

```js
function Num(n) {

  return n;
}
```

# --solutions--

```js
function Num(n) {
  if (isNaN(n)) {
    throw new TypeError('Not a Number');
  }
  if (n < 1 || n > 10) {
    throw new TypeError('Out of range');
  }

  this._value = +n;
}
Num.prototype.valueOf = function() { return this._value; };
Num.prototype.toString = function () { return this._value.toString(); };
```
