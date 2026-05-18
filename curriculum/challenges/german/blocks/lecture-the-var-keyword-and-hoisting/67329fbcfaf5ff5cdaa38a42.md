---
id: 67329fbcfaf5ff5cdaa38a42
title: Was ist das Schlüsselwort var und warum wird seine Verwendung nicht mehr empfohlen?
challengeType: 19
dashedName: what-is-the-var-keyword-and-why-is-it-no-longer-suggested-to-use-it
---

# --interactive--

Das `var`-Schlüsselwort in JavaScript ist eine der ursprünglichen Methoden, um Variablen zu deklarieren. Es ist seit Beginn Teil der Sprache und viele Jahre lang die Hauptmethode zur Erstellung von Variablen. Mit der Weiterentwicklung von JavaScript und zunehmender Erfahrung der Entwickler mit der Sprache wurden jedoch bestimmte Nachteile bei der Verwendung von `var` offensichtlich, was 2015 zur Einführung von `let` und `const` führte.

Wenn Sie eine Variable mit `var` deklarieren, erhält sie einen Funktions-Gültigkeitsbereich oder einen globalen Gültigkeitsbereich. Das bedeutet, wenn Sie eine Variable innerhalb einer Funktion mit `var` deklarieren, ist sie nur innerhalb dieser Funktion zugreifbar. Wenn Sie sie jedoch außerhalb einer Funktion deklarieren, wird sie zu einer globalen Variable, die im gesamten Skript zugänglich ist. Dieses Verhalten kann manchmal zu unerwarteten Ergebnissen führen und Ihren Code schwerer verständlich machen.

Ein Problem bei `var` ist, dass es erlaubt, dieselbe Variable mehrfach zu deklarieren, ohne einen Fehler zu werfen. Das kann zu unbeabsichtigtem Überschreiben führen und das Debugging erschweren.

:::interactive_editor

```js
var num = 5;
console.log(num); // 5

// This is allowed and doesn't throw an error
var num = 10;
console.log(num); // 10
```

:::

Das größte Problem bei `var` ist das Fehlen eines Block-Gültigkeitsbereichs. Variablen, die mit `var` innerhalb eines Blocks wie einer `if`-Anweisung oder einer `for`-Schleife deklariert werden, sind auch außerhalb dieses Blocks zugreifbar.

:::interactive_editor

```js
if (true) {
  var num = 5;
}
console.log(num); // 5
```

:::

Dieses Verhalten kann zu unbeabsichtigtem Variablen-Leak führen und macht Ihren Code anfälliger für Bugs.

Aufgrund dieser Probleme hat sich die moderne JavaScript-Entwicklung weitgehend von `var` zugunsten von `let` und `const` entfernt. Diese Schlüsselwörter bieten Block-Gültigkeitsbereiche, die besser mit dem Gültigkeitsbereich in vielen anderen Programmiersprachen übereinstimmen.

Sie erlauben außerdem keine Mehrfachdeklaration im selben Gültigkeitsbereich, was unbeabsichtigte Überschreibungen verhindert.

Obwohl `var` weiterhin Teil von JavaScript ist und in allen Browsern funktioniert, wird allgemein empfohlen, in der modernen JavaScript-Entwicklung `let` und `const` zu verwenden. Sie bieten klare Gültigkeitsbereichsregeln, helfen, häufige Fallstricke zu vermeiden, und machen das Verhalten Ihres Codes vorhersehbarer.

# --questions--

## --text--

Welchen Gültigkeitsbereich hat eine mit `var` außerhalb einer Funktion deklarierte Variable?

## --answers--

Block-Gültigkeitsbereich.

### --feedback--

Überlegen Sie, wo eine mit `var` außerhalb einer Funktion deklarierte Variable zugreifbar ist.

---

Funktions-Gültigkeitsbereich.

### --feedback--

Überlegen Sie, wo eine mit `var` außerhalb einer Funktion deklarierte Variable zugreifbar ist.

---

Globaler Gültigkeitsbereich.

---

Modul-Gültigkeitsbereich.

### --feedback--

Überlegen Sie, wo eine mit `var` außerhalb einer Funktion deklarierte Variable zugreifbar ist.

## --video-solution--

3

## --text--

Was wird die Ausgabe des folgenden Codes sein?

```js
var x = 10;

if (true) {
  var x = 20;
  console.log(x);
}

console.log(x);
```

## --answers--

```js
10
10
```

### --feedback--

Denken Sie daran, dass `var` einen Funktions- oder globalen Gültigkeitsbereich hat und Mehrfachdeklarationen im selben Gültigkeitsbereich erlaubt.

---

```js
20
20
```

---

```js
10
20
```

### --feedback--

Denken Sie daran, dass `var` einen Funktions- oder globalen Gültigkeitsbereich hat und Mehrfachdeklarationen im selben Gültigkeitsbereich erlaubt.

---

```js
20
10
```

### --feedback--

Denken Sie daran, dass `var` einen Funktions- oder globalen Gültigkeitsbereich hat und Mehrfachdeklarationen im selben Gültigkeitsbereich erlaubt.

## --video-solution--

2

## --text--

Welches der folgenden Argumente ist KEIN Grund, `var` in modernem JavaScript zu vermeiden?

## --answers--

`var` erlaubt Mehrfachdeklarationen von Variablen im selben Gültigkeitsbereich.

### --feedback--

Überlegen Sie, welche Aussage über das Verhalten oder die Unterstützung von `var` falsch ist.

---

`var` wird in modernen Browsern nicht unterstützt.

---

`var`-Variablen haben einen Funktions-Gültigkeitsbereich, keinen Block-Gültigkeitsbereich.

### --feedback--

Überlegen Sie, welche Aussage über das Verhalten oder die Unterstützung von `var` falsch ist.

---

`var`-Variablen werden gehoben.

### --feedback--

Überlegen Sie, welche Aussage über das Verhalten oder die Unterstützung von `var` falsch ist.

## --video-solution--

2
