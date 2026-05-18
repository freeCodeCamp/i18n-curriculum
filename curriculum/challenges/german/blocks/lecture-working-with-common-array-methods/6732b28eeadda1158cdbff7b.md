---
id: 6732b28eeadda1158cdbff7b
title: "Wie können Sie prüfen, ob ein Array einen bestimmten Wert enthält?"
challengeType: 19
dashedName: how-can-you-check-if-an-array-contains-a-certain-value
---

# --interactive--

In JavaScript ist die `includes()`-Methode eine einfache und effiziente Möglichkeit, zu prüfen, ob ein Array einen bestimmten Wert enthält. Diese Methode gibt einen Boolean zurück: `true`, wenn das Array das angegebene Element enthält, und `false` sonst.

Die `includes()`-Methode ist besonders nützlich, wenn Sie schnell überprüfen möchten, ob ein Element in einem Array vorhanden ist, ohne seine genaue Position zu kennen. Beginnen wir mit einem Beispiel, wie Sie die `includes()`-Methode verwenden:

:::interactive_editor

```js
let fruits = ["apple", "banana", "orange", "mango"];
console.log(fruits.includes("banana")); // true
console.log(fruits.includes("grape"));  // false
```

:::

In diesem Beispiel haben wir ein Array von Früchten. Wir verwenden die `includes()`-Methode, um zu prüfen, ob `banana` im Array ist. Sie gibt `true` zurück, weil `banana` tatsächlich vorhanden ist. Dann prüfen wir auf `grape`, was `false` zurückgibt, weil es nicht im Array ist.

Die `includes()`-Methode ist bei Strings groß-/klein­schreibungssensitiv. Das bedeutet, dass `Banana` mit großem B und `banana` mit Kleinbuchstaben als unterschiedliche Werte betrachtet werden. Hier ist ein Beispiel, das das veranschaulicht:

:::interactive_editor

```js
let fruits = ["apple", "banana", "orange"];
console.log(fruits.includes("banana")); // true
console.log(fruits.includes("Banana")); // false
```

:::

In diesem Fall wird `banana` (alles in Kleinbuchstaben) im Array gefunden, aber `Banana` (mit erstem Großbuchstaben) nicht, sodass der zweite `includes()`-Aufruf `false` zurückgibt.

Die `includes()`-Methode kann auch einen optionalen zweiten Parameter annehmen, der die Position im Array angibt, ab der die Suche beginnen soll. Das ist nützlich, wenn Sie die Anwesenheit eines Elements in einem bestimmten Teil des Arrays prüfen möchten. So können Sie diese Funktion verwenden:

:::interactive_editor

```js
let numbers = [10, 20, 30, 40, 50, 30, 60];
console.log(numbers.includes(30, 3)); // true
console.log(numbers.includes(30, 4)); // true
```

:::

Beim ersten `console.log` suchen wir die Zahl `30` beginnend ab Index `3`. In diesem Fall gibt es eine Zahl `30`, die nach Index `3` erscheint, also gibt die `includes()`-Methode `true` zurück.

Dasselbe gilt für den zweiten `console.log`. Wir suchen die Zahl `30` beginnend ab Index `4`. Da die Zahl `30` nach diesem Index erscheint, wird `true` zurückgegeben.

Es ist wichtig zu wissen, dass `includes()` den strikten Gleichheitsvergleich (`===`) verwendet, was bedeutet, dass es zwischen verschiedenen Typen unterscheiden kann. Zum Beispiel:

:::interactive_editor

```js
let mixedArray = [1, "2", 3, "4", 5];
console.log(mixedArray.includes(2));  // false
console.log(mixedArray.includes("2")); // true
```

:::

In diesem Fall werden die Zahl `2` und der String `"2"` als unterschiedliche Datentypen betrachtet. Daher gibt der erste `console.log` `false` zurück, während der zweite `console.log` `true` zurückgibt.

Die `includes()`-Methode ist ein leistungsfähiges Werkzeug, um die Anwesenheit von Elementen in Arrays zu prüfen. Sie ist einfach zu verwenden, effizient und erspart Ihnen das Schreiben komplexerer Schleifen oder Bedingungen, um Arrays zu durchsuchen. Egal, ob Sie mit Strings, Zahlen oder gemischten Datentypen arbeiten, `includes()` bietet eine unkomplizierte Möglichkeit, zu überprüfen, ob ein Wert in Ihrem Array existiert.

# --questions--

## --text--

Was wird die Ausgabe des folgenden Codes sein?

```js
let arr = [1, 2, 3, 4, 5];
console.log(arr.includes(3, 3));
```

## --answers--

`true`

### --feedback--

Der zweite Parameter von `includes()` gibt die Startposition für die Suche an.

---

`false`

---

`undefined`

### --feedback--

Der zweite Parameter von `includes()` gibt die Startposition für die Suche an.

---

Dies wird einen Fehler werfen.

### --feedback--

Der zweite Parameter von `includes()` gibt die Startposition für die Suche an.

## --video-solution--

2

## --text--

Was wird die Ausgabe des folgenden Codes sein?

```js
let arr = ["a", "b", "c", "d", "e"];
console.log(arr.includes("C"));
```

## --answers--

`true`

### --feedback--

Denken Sie daran, dass `includes()` bei Strings groß-/klein­schreibungssensitiv ist.

---

`false`

---

`undefined`

### --feedback--

Denken Sie daran, dass `includes()` bei Strings groß-/klein­schreibungssensitiv ist.

---

Dies wird einen Fehler werfen.

### --feedback--

Denken Sie daran, dass `includes()` bei Strings groß-/klein­schreibungssensitiv ist.

## --video-solution--

2

## --text--

Was wird die Ausgabe des folgenden Codes sein?

```js
let arr = [1, "2", 3, "4", 5];
console.log(arr.includes("3"));
```

## --answers--

`true`

### --feedback--

Die `includes()`-Methode verwendet für den Vergleich strikte Gleichheit (`===`).

---

`false`

---

`undefined`

### --feedback--

Die `includes()`-Methode verwendet für den Vergleich strikte Gleichheit (`===`).

---

Dies wird einen Fehler werfen.

### --feedback--

Die `includes()`-Methode verwendet für den Vergleich strikte Gleichheit (`===`).

## --video-solution--

2
