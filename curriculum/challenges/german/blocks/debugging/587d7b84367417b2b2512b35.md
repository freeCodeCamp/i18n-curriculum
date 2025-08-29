---
id: 587d7b84367417b2b2512b35
title: Falsch geschriebene Variablen- und Funktionsnamen abfangen
challengeType: 1
forumTopicId: 301186
dashedName: catch-misspelled-variable-and-function-names
---

# --description--

The `console.log()` and `typeof` methods are the two primary ways to check intermediate values and types of program output. Now it's time to get into the common forms that bugs take. One syntax-level issue that fast typers can commiserate with is the humble spelling error.

Vertauschte, fehlende oder falsch großgeschriebene Zeichen in einem Variablen- oder Funktionsnamen führen dazu, dass der Browser nach einem Objekt sucht, das nicht existiert – und sich in Form eines Referenzfehlers beschwert. Bei JavaScript-Variablen- und Funktionsnamen wird zwischen Groß- und Kleinschreibung unterschieden.

# --instructions--

Korrigiere die beiden Rechtschreibfehler im Code, damit die Berechnung des `netWorkingCapital` funktioniert.

# --hints--

Überprüfe die Schreibweise der beiden Variablen, die in der Berechnung des NetWorkingCapitals verwendet werden. Die Konsolenausgabe sollte Folgendes anzeigen: " Net working capital is: 2".

```js
assert(netWorkingCapital === 2);
```

Es sollten keine falsch geschriebenen Variablen im Code vorkommen.

```js
assert(!__helpers.removeJSComments(code).match(/recievables/g));
```

Die Variable `receivables` sollte im Code richtig deklariert und verwendet werden.

```js
assert(__helpers.removeJSComments(code).match(/receivables/g).length == 2);
```

Es sollten keine falsch geschriebenen Variablen im Code vorkommen.

```js
assert(!__helpers.removeJSComments(code).match(/payable;/g));
```

Die Variable `payables` sollte im Code richtig deklariert und verwendet werden.

```js
assert(__helpers.removeJSComments(code).match(/payables/g).length == 2);
```

# --seed--

## --seed-contents--

```js
let receivables = 10;
let payables = 8;
let netWorkingCapital = recievables - payable;
console.log(`Net working capital is: ${netWorkingCapital}`);
```

# --solutions--

```js
let receivables = 10;
let payables = 8;
let netWorkingCapital = receivables - payables;
console.log(`Net working capital is: ${netWorkingCapital}`);
```
