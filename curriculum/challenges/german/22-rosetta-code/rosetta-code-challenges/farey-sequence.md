---
id: 59c3ec9f15068017c96eb8a3
title: Farey Sequenz
challengeType: 1
forumTopicId: 302266
dashedName: farey-sequence
---

# --description--

Die Farey-Folge <code>F<sub>n</sub></code> der Reihenfolge `n` ist die Folge von komplett reduzierten Bruchteilen zwischen `0` und `1`, die in niedrigsten Bedingungen Nenner haben, die kleiner oder gleich `n` sind, geordnet nach aufsteigender Größe.

Die *Farey-sequenz * wird manchmal fälschlicherweise als *Farey-Reihe bezeichnet*.

Jede Farey-Sequenz:

<ul>
  <li>beginnt mit dem Wert 0, gekennzeichnet durch den Bruch $ frac{0}{1} $</li>
  <li>endet mit dem Wert 1, gekennzeichnet durch den Bruchteil $ frac{1}{1}$.</li>
</ul>

Die Farey-Sequenzen der Ordnung `1` bis `5` sind:

<ul>
  <li style='list-style: none;'>${\bf\it{F}}_1 = \frac{0}{1}, \frac{1}{1}$</li>
  <li style='list-style: none;'>${\bf\it{F}}_2 = \frac{0}{1}, \frac{1}{2}, \frac{1}{1}$</li>
  <li style='list-style: none;'>${\bf\it{F}}_3 = \frac{0}{1}, \frac{1}{3}, \frac{1}{2}, \frac{2}{3}, \frac{1}{1}$</li>
  <li style='list-style: none;'>${\bf\it{F}}_4 = \frac{0}{1}, \frac{1}{4}, \frac{1}{3}, \frac{1}{2}, \frac{2}{3}, \frac{3}{4}, \frac{1}{1}$</li>
  <li style='list-style: none;'>${\bf\it{F}}_5 = \frac{0}{1}, \frac{1}{5}, \frac{1}{4}, \frac{1}{3}, \frac{2}{5}, \frac{1}{2}, \frac{3}{5}, \frac{2}{3}, \frac{3}{4}, \frac{4}{5}, \frac{1}{1}$</li>
</ul>

# --instructions--

Schreibe eine Funktion, die die Farey-sequenz der Ordnung `n` zurückgibt. Die Funktion sollte einen Parameter haben, der `n` ist. Es sollte die Sequenz als Array zurückgeben.

# --hints--

`Farey` sollte eine Funktion sein.

```js
assert(typeof farey === 'function');
```

`Farey(3)` sollte ein Array zurückgeben

```js
assert(Array.isArray(farey(3)));
```

`farey(3)` sollte `['0/1','1/3','1/2','2/3','1/1']` zurückgeben

```js
assert.deepEqual(farey(3),['0/1', '1/3', '1/2', '2/3', '1/1']);
```

`farey(4)` sollte `['0/1','1/4','1/3','1/2','2/3','3/4','1/1']` zurückgeben

```js
assert.deepEqual(farey(4), ['0/1', '1/4', '1/3', '1/2', '2/3', '3/4', '1/1']);
```

`farey(5)` sollte `['0/1','1/5','1/4','1/3','2/5','1/2','3/5','2/3','3/4','4/5','1/1']` zurückgeben

```js
assert.deepEqual(farey(5), [
  '0/1',
  '1/5',
  '1/4',
  '1/3',
  '2/5',
  '1/2',
  '3/5',
  '2/3',
  '3/4',
  '4/5',
  '1/1'
]);
```

# --seed--

## --seed-contents--

```js
function farey(n) {

}
```

# --solutions--

```js
function farey(n) {
  const sequence = [{ string: "0/1", float: 0.0 }];
  for (let i = 1; i < n; i++) {
    for (let j = n; j >= i; j--) {
      if (i === 1 || j % i > 0) {
        sequence.push({ string: `${i}/${j}`, float: i / j });
      }
    }
  }
  return sequence
    .sort((a, b) => a.float - b.float)
    .map(e => e.string)
}
```
