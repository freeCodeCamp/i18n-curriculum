---
id: bd7123c9c443eddfaeb5bdef
title: JavaScript-Variablen deklarieren
challengeType: 1
forumTopicId: 17556
dashedName: declare-javascript-variables
---

# --description--

In der Informatik sind <dfn>Daten</dfn> alles, was für den Computer eine Bedeutung hat. JavaScript bietet acht verschiedene <dfn>Datenarten</dfn>, die `undefined`, `null`, `boolean`, `string`, `symbol`, `bigint`, `number` und `object` sind.

Zum Beispiel unterscheiden Computer zwischen Zahlen, wie der Zahl `12`, und `strings`, wie `"12"`, `"dog"` oder `"123 cats"`, die Sammlungen von Zeichen sind. Computer können mathematische Operationen mit einer Zahl ausführen, aber nicht mit einem String.

<dfn>Variablen</dfn> ermöglichen es Computern, Daten dynamisch zu speichern und zu bearbeiten. Sie tun dies, indem sie eine „Bezeichnung“ verwenden, die auf die Daten zeigt, anstatt die Daten selbst zu verwenden. Jede der acht Datenarten kann in einer Variablen gespeichert werden.

Variablen sind ähnlich wie die x- und y-Variablen, die Sie in der Mathematik verwenden, das heißt, sie sind ein einfacher Name, um die Daten darzustellen, auf die wir verweisen möchten. Computer-Variablen unterscheiden sich von mathematischen Variablen dadurch, dass sie zu verschiedenen Zeiten unterschiedliche Werte speichern können.

Wir sagen JavaScript, dass es eine Variable erstellen oder <dfn>deklarieren</dfn> soll, indem wir das Schlüsselwort `var` davor setzen, so:

```js
var ourName;
```

erstellt eine Variable namens `ourName`. In JavaScript beenden wir Anweisungen mit Semikolons. Variablennamen können aus Zahlen, Buchstaben und `$` oder `_` bestehen, dürfen aber keine Leerzeichen enthalten oder mit einer Zahl beginnen.

# --instructions--

Verwenden Sie das Schlüsselwort `var`, um eine Variable namens `myName` zu erstellen.

**Hinweis**  
Sehen Sie sich das `ourName`-Beispiel oben an, wenn Sie nicht weiterkommen.

# --hints--

Sie sollten `myName` mit dem Schlüsselwort `var` deklarieren und mit einem Semikolon abschließen.

```js
assert(/var\s+myName\s*;/.test(__helpers.removeJSComments(code)));
```

# --seed--

## --seed-contents--

```js

```

# --solutions--

```js
var myName;
```
