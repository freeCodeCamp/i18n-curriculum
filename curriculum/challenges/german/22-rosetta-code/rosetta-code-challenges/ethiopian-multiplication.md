---
id: 599d1566a02b571412643b84
title: Äthiopische Multiplikation
challengeType: 1
forumTopicId: 302257
dashedName: ethiopian-multiplication
---

# --description--

Die äthiopische Multiplikation ist eine Methode zur Multiplikation ganzer Zahlen, indem nur Addition, Verdopplung und Halbierung angewandt wird.

**Methode:**

<ol>
  <li>Nimm zwei zu multiplizierende Zahlen und schreibe sie oben in zwei Spalten auf</li>
  <li>Halbiere in der linken Spalte wiederholt die letzte Zahl, wobei du alle Reste verwirfst, und schreibe das Ergebnis unter die letzte Zahl in derselben Spalte, bis du den Wert <code>1</code> schreibst</li>
  <li>Verdopple in der rechten Spalte wiederholt die letzte Zahl und schreibe das Ergebnis darunter. stoppe, wenn du ein Ergebnis in der gleichen Zeile hinzufügst, in der die linke Spalte <code>1</code> anzeigt</li>
  <li>Prüfe die erzeugte Tabelle und verwerfe jede Zeile, bei der der Wert in der linken Spalte gerade ist</li>
  <li>Addieren die verbleibenden Werte in der rechten Spalte, um das Ergebnis der Multiplikation der beiden ursprünglichen Zahlen zu erhalten</li>
</ol>

**Zum Beispiel:** `17 × 34`

<pre>17   34
</pre>

Halbierung der ersten Spalte:

<pre>17   34
8
4
2
1
</pre>

Verdoppelung der zweiten Spalte:

<pre>17   34
8    68
4   136
2   272
1   544
</pre>

Zeilen, deren erste Zelle gerade ist, werden durchgestrichen:

<pre>17   34
8    <strike>68</strike>
4   <strike>136</strike>
2   <strike>272</strike>
1   544
</pre>

Addiere die verbleibenden Zahlen in der rechten Spalte:

<!-- markdownlint-disable MD003 -->

<pre>17   34
8    --
4   ---
2   ---
1   544
   ====
    578
</pre>

<!-- markdownlint-enable MD003 -->

Das heißt, `17` multipliziert mit `34`, ist nach der äthiopischen Methode `578`.

# --instructions--

Die Aufgabe besteht darin, drei benannte Funktionen/Methoden/Prozeduren/Unterprogramme zu definieren:

<ol>
  <li>eins, um eine ganze Zahl zu halbieren,</li>
  <li>eine, um eine ganze Zahl zu verdoppeln, und</li>
  <li>eine, um festzustellen, ob eine ganze Zahl gerade ist</li>
</ol>

Verwende diese Funktionen, um eine Funktion für die äthiopische Multiplikation zu erstellen.

<!-- markdownlint-disable MD046-->

# --hints--

`eth_mult` sollte eine Funktion sein.

```js
assert(typeof eth_mult === 'function');
```

`eth_mult(17,34)` sollte `578` zurückgeben.

```js
assert.equal(eth_mult(17, 34), 578);
```

`eth_mult(23,46)` sollte `1058` zurückgeben.

```js
assert.equal(eth_mult(23, 46), 1058);
```

`eth_mult(12,27)` sollte `324` zurückgeben.

```js
assert.equal(eth_mult(12, 27), 324);
```

`eth_mult(56,98)` sollte `5488` zurückgeben.

```js
assert.equal(eth_mult(56, 98), 5488);
```

`eth_mult(63,74)` sollte `4662` zurückgeben.

```js
assert.equal(eth_mult(63, 74), 4662);
```

# --seed--

## --seed-contents--

```js
function eth_mult(a, b) {

}
```

# --solutions--

```js
function eth_mult(a, b) {
  let sum = 0; a = [a]; b = [b];

  let half = a => a / 2,
    double = a => a * 2,
    is_even = a => a % 2 == 0;

  while (a[0] !== 1) {
    a.unshift(Math.floor(half(a[0])));
    b.unshift(double(b[0]));
  }

  for (let i = a.length - 1; i > 0; i -= 1) {
    if (!is_even(a[i])) {
      sum += b[i];
    }
  }
  return sum + b[0];
}
```
