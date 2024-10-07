---
id: 5a23c84252665b21eecc8036
title: Steuerzeichen und erweiterte Zeichen aus einer Zeichenfolge entfernen
challengeType: 1
forumTopicId: 302327
dashedName: strip-control-codes-and-extended-characters-from-a-string
---

# --description--

Die Aufgabe besteht darin, Steuerzeichen und erweiterte Zeichen aus einer Zeichenkette zu entfernen. Die Lösung sollte zeigen, wie jedes der folgenden Ergebnisse erreicht werden kann: Eine Zeichenfolge, bei der Steuerzeichen und erweiterten Zeichen entfernt wurden. Bei ASCII haben die Steuercodes Dezimalzeichen von 0 bis 31 und 127. In einem ASCII-basierten System würde, wenn die Steuercodes entfernt wurden, die resultierende Zeichenfolge all ihre Zeichen im Bereich von 32 bis 125 Dezimalstellen in der ASCII-Tabelle haben. In einem nicht ASCII-basierten System betrachten wir für den Zweck dieser Aufgabe Zeichen ohne entsprechende Glyphe in der ASCII-Tabelle (innerhalb des ASCII-Bereichs von 32 bis 126 Dezimalstellen) als erweitertes Zeichen.

# --hints--

`strip` sollte eine Funktion sein.

```js
assert(typeof strip == 'function');
```

`strip("abc")` sollte einen String zurückgeben.

```js
assert(typeof strip('abc') == 'string');
```

`strip("\ba\x00b\n\rc\fd\xc3")` sollte `"abcd"` zurückgeben.

```js
assert.equal(strip('\ba\x00b\n\rc\fd\xc3'), 'abcd');
```

`strip("\u0000\n abc\u00E9def\u007F")` sollte `" abcdef"` zurückgeben.

```js
assert.equal(strip('\u0000\n abc\u00E9def\u007F'), ' abcdef');
```

`strip("a\n\tb\u2102d\u2147f")` sollte `"abdf"` zurückgeben.

```js
assert.equal(strip('a\n\tb\u2102d\u2147f'), 'abdf');
```

`strip("Français.")` sollte `"Franais."` zurückgeben.

```js
assert.equal(strip('Français.'), 'Franais.');
```

`strip("123\tabc\u0007DEF\u007F+-*/€æŧðłþ")` sollte `"123abcDEF+-*/"` zurückgeben.

```js
assert.equal(strip('123\tabc\u0007DEF\u007F+-*/€æŧðłþ'), '123abcDEF+-*/');
```

# --seed--

## --seed-contents--

```js
function strip(s) {

}
```

# --solutions--

```js
function strip(s) {
  return s
    .split('')
    .filter(function(x) {
      var n = x.charCodeAt(0);

      return 31 < n && 127 > n;
    })
    .join('');
}
```
