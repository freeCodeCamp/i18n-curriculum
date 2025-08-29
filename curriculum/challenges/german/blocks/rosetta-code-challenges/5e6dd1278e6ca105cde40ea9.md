---
id: 5e6dd1278e6ca105cde40ea9
title: Längste gemeinsame Teilsequenz
challengeType: 1
forumTopicId: 385271
dashedName: longest-common-subsequence
---

# --description--

Die **längste gemeinsame Teilsequenz** (or **LCS**) der Gruppen A und B ist die längste Gruppe der Elemente aus A und B, die zwischen den beiden Gruppen und in der gleichen Reihenfolge in jeder Gruppe üblich sind. Zum Beispiel haben die Sequenzen `1234` und `1224533324` einen LCS von `1234`:

<u>1234</u>

<u>12</u>245<u>3</u>332<u>4</u>

Für ein Beispiel der Zeichenfolge, beachte die Sequenzen `thisisatest` und `testing123testing`. Ein LCS wäre der `tsitest`:

<u>t</u>hi<u>si</u>sa<u>test</u>

<u>t</u>e<u>s</u>t<u>i</u>ng123<u>test</u>ing.

Dein Code muss sich nur mit Zeichenketten befassen.

# --instructions--

Schreibe eine Funktion, die zwischen Groß- und Kleinschreibung unterscheidet und die LCS von zwei Zeichenketten zurückgibt. Du musst nicht mehrere LCS's angeben.

# --hints--

`lcs` sollte eine Funktion sein.

```js
assert(typeof lcs == 'function');
```

`lcs("thisisatest", "testing123testing")` sollte einen String zurückgeben.

```js
assert(typeof lcs('thisisatest', 'testing123testing') == 'string');
```

`lcs("thisisatest", "testing123testing")` sollte `"tsitest"` zurückgeben.

```js
assert.equal(lcs('thisisatest', 'testing123testing'), 'tsitest');
```

`lcs("ABCDGH", "AEDFHR")` sollte `"ADH"` zurückgeben.

```js
assert.equal(lcs('ABCDGH', 'AEDFHR'), 'ADH');
```

`lcs("AGGTAB", "GXTXAYB")` sollte `"GTAB"` zurückgeben.

```js
assert.equal(lcs('AGGTAB', 'GXTXAYB'), 'GTAB');
```

`lcs("BDACDB", "BDCB")` sollte `"BDCB"` zurückgeben.

```js
assert.equal(lcs('BDACDB', 'BDCB'), 'BDCB');
```

`lcs("ABAZDC", "BACBAD")` sollte `"ABAD"` zurückgeben.

```js
assert.equal(lcs('ABAZDC', 'BACBAD'), 'ABAD');
```

# --seed--

## --seed-contents--

```js
function lcs(a, b) {

}
```

# --solutions--

```js
function lcs(a, b) {
  var aSub = a.substring(0, a.length - 1);
  var bSub = b.substring(0, b.length - 1);

  if (a.length === 0 || b.length === 0) {
    return '';
  } else if (a.charAt(a.length - 1) === b.charAt(b.length - 1)) {
    return lcs(aSub, bSub) + a.charAt(a.length - 1);
  } else {
    var x = lcs(a, bSub);
    var y = lcs(aSub, b);
    return (x.length > y.length) ? x : y;
  }
}
```
