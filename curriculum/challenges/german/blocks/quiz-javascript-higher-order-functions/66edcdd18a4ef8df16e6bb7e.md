---
id: 66edcdd18a4ef8df16e6bb7e
title: JavaScript-Quiz zu Funktionen höherer Ordnung
challengeType: 8
dashedName: quiz-javascript-higher-order-functions
---

# --description--

Um das Quiz zu bestehen, müssen Sie mindestens 18 der 20 untenstehenden Fragen richtig beantworten.

# --quizzes--

## --quiz--

### --question--

#### --text--

Welche der folgenden Aussagen über JavaScript-Funktionen höherer Ordnung ist NICHT wahr?

#### --distractors--

Funktionen höherer Ordnung können die Lesbarkeit und Wartbarkeit des Codes erheblich verbessern, indem sie Techniken der funktionalen Programmierung ermöglichen.

---

Funktionen höherer Ordnung wie map, filter und reduce sind leistungsstarke Werkzeuge zur Array-Manipulation, aber sie sind nicht ausschließlich für die funktionale Programmierung.

---

Funktionen höherer Ordnung können die Komplexität beim Verstehen des Codes erhöhen, aber sie können auch zu ausdrucksstärkeren und prägnanteren Lösungen führen.

#### --answer--

Alle Funktionen in JavaScript, einschließlich derjenigen, die keine anderen Funktionen als Argumente nehmen oder zurückgeben, können als Funktionen höherer Ordnung klassifiziert werden.

### --question--

#### --text--

Was ist eine Factory-Funktion im Kontext von Funktionen höherer Ordnung?

#### --distractors--

Eine Funktion, die neue Variablen erstellt.

---

Eine Funktion, die nur mit Strings arbeitet.

---

Eine Funktion, die automatisch Code-Kommentare generiert.

#### --answer--

Eine Funktion, die basierend auf bestimmten Parametern eine neue Funktion zurückgibt

### --question--

#### --text--

Welchen Wert haben `forEachRes` und `mapRes` nach der Codeausführung?

```js
const numbers = [1, 1, 1, 1, 1];
let sum = 0;
const forEachRes = numbers.forEach(num => {
  return (sum += num);
});
const mapRes = numbers.map(num => {
  return (sum += num);
});
```

#### --distractors--

`forEachRes` ist `undefined` und `mapRes` ist `[1,2,3,4,5]`

---

`forEachRes` ist `0` und `mapRes` ist `[1,2,3,4,5]`

---

`forEachRes` ist `5` und `mapRes` ist `[1,2,3,4,5]`

#### --answer--

`forEachRes` ist `undefined` und `mapRes` ist `[6,7,8,9,10]`

### --question--

#### --text--

Was ist das Ergebnis dieses Codes?

```js
[, undefined, 'a', 'b', { 20: 5 }].sort();
```

#### --distractors--

Nicht unterstützte Elemente für ein zu sortierendes Array, daher Fehler.

---

Callback nicht übergeben, daher Fehler.

---

```js
[empty, 'a', 'b', undefined, { '20': 5 }]
```

#### --answer--

```js
[{ '20': 5 }, 'a', 'b', undefined, empty]
```

### --question--

#### --text--

Welche der folgenden Beschreibungen trifft auf eine Callback-Funktion in JavaScript zu?

#### --distractors--

Eine Funktion, die sofort bei der Deklaration aufgerufen wird.

---

Eine Funktion, die mit einem bestimmten Kontext aufgerufen wird.

---

Eine Funktion, die eine andere Funktion zurückgibt.

#### --answer--

Eine Funktion, die als Argument an eine andere Funktion übergeben wird, um von deren Logik ausgeführt zu werden.

### --question--

#### --text--

Was ist das Ergebnis der Verwendung von `reduce()` auf ein Array?

#### --distractors--

Ein Boolean, der angibt, ob irgendwelche Elemente eine Bedingung erfüllen.

---

Ein Array, bei dem alle Elemente durch die angegebene Callback-Funktion reduziert wurden.

---

Ein Array von Booleans.

#### --answer--

Es variiert je nach dem Anfangswert des Akkumulators und der Callback-Funktion.

### --question--

#### --text--

Wie verhält sich die `sort()`-Methode bei numerischer Sortierung, wenn keine Vergleichsfunktion angegeben ist?

#### --distractors--

Sie füllt die leeren Plätze mit `null`.

---

Sie gibt ein Array von Sonderzeichen zurück.

---

Sie sortiert das Array in umgekehrter Reihenfolge.

#### --answer--

Sie sortiert das Array als Strings basierend auf UTF-16-Codeeinheiten.

### --question--

#### --text--

Was ist der Zweck der `some()`-Methode in JavaScript?

#### --distractors--

Ein neues Array zu erstellen mit den Ergebnissen einer auf jedes Element angewendeten Funktion.

---

Ein Array zu durchlaufen, ohne ein Ergebnis zu erzeugen.

---

Ein Array basierend auf einer Callback-Funktion auf einen einzelnen Wert zu reduzieren.

#### --answer--

Zu bestimmen, ob irgendwelche Elemente in einem Array einen bestimmten Test bestehen.

### --question--

#### --text--

Welches der folgenden Beispiele ist ein gültiges Beispiel für Method Chaining?

#### --distractors--

```js
Math.random();
```

---

```js
array.push(1).pop();
```

---

```js
console.log('Hello');
```

#### --answer--

```js
str.toLowerCase().trim().replace(' ', '_');
```

### --question--

#### --text--

Was ist die Ausgabe des folgenden Codes?

```js
let numbers = [2, 4, 8, 10];

numbers.forEach(function(number) {
    console.log(number % 2);
});
```

#### --distractors--

`2 4 8 10`

---

`null null null null`

---

`1 2 4 5`

#### --answer--

`0 0 0 0`

### --question--

#### --text--

Welcher Vorteil ergibt sich aus Method Chaining?

#### --distractors--

Es optimiert die Leistung automatisch, indem es die Ausführungszeit von Funktionen reduziert.

---

Es eliminiert die Notwendigkeit temporärer Variablen, kann aber in manchen Fällen den Speicherverbrauch erhöhen.

---

Es ermöglicht eine einfachere Fehlerbehandlung und Debugging.

#### --answer--

Es fördert eine vereinfachte Syntax und besser lesbaren Code, indem mehrere Operationen in einem einzigen Ausdruck erlaubt werden.

### --question--

#### --text--

Wie können Sie ein Array von Objekten nach einer bestimmten Eigenschaft mit der `sort`-Methode sortieren?

#### --distractors--

Die `sort`-Methode kann Objekte nicht sortieren.

---

Verwenden Sie die `reverse`-Methode nach dem Sortieren.

---

Konvertieren Sie die Objekte in Strings und sortieren Sie diese.

#### --answer--

Verwenden Sie eine Vergleichsfunktion, die die Eigenschaftswerte vergleicht.

### --question--

#### --text--

Was ist eine gängige Praxis, um in Method Chaining Klarheit und Debugging zu verbessern?

#### --distractors--

Verwenden Sie weniger Methoden in der Kette.

---

Vermeiden Sie das Verketten von Methoden, die nur primitive Werte zurückgeben.

---

Verwenden Sie nur eingebaute Methoden.

#### --answer--

Lange Ketten in mehrere Schritte aufteilen.

### --question--

#### --text--

Was ist ein möglicher Nachteil der übermäßigen Verwendung von Method Chaining im Code?

#### --distractors--

Es macht den Code langsamer.

---

Es verhindert die Verwendung von Kommentaren.

---

Es vergrößert die Dateigröße.

#### --answer--

Es kann das Debuggen des Codes erschweren.

### --question--

#### --text--

Welche Methode würden Sie verwenden, um zu bestimmen, ob alle Elemente in einem Array Strings sind?

#### --distractors--

`some()`

---

`everyInstance()`

---

`filter()`

#### --answer--

`every()`

### --question--

#### --text--

Welchen Wert hat `originalArray` nach Ausführung des folgenden Codes?

```js
const originalArray = [{ id: 1 }, { id: 2 }, { id: 3 }];
const filteredArray = originalArray.filter(item => item.id > 1);
filteredArray[0].id = 4;
```

#### --distractors--

`[{ id: 1 }, { id: 2 }, { id: 3 }]`

---

`[{ id: 1 }]`

---

`[{ id: 4 }, { id: 2 }, { id: 3 }]`

#### --answer--

`[{ id: 1 }, { id: 4 }, { id: 3 }]`
### --question--

#### --text--

Welchen Wert hat `shortWords` nach Ausführung des folgenden Codes?

```js
const words = ['apple', 'banana', 'pear', 'kiwi'];
const shortWords = words.filter(word => word.length <= 5);
```

#### --distractors--

`[]`

---

`['pear', 'kiwi']`

---

`['apple', 'banana']`

#### --answer--

`['apple', 'pear', 'kiwi']`

### --question--

#### --text--

Was ist der Zweck, einen Anfangswert als Argument an die `reduce()`-Methode zu übergeben?

#### --distractors--

Um die Länge des Arrays festzulegen.

---

Um die Anzahl der Iterationen zu begrenzen.

---

Um den Rückgabetyp der Funktion zu spezifizieren.

#### --answer--

Um den Startwert für den Akkumulator zu definieren.

### --question--

#### --text--

Kann die `map`-Methode auf Objekten verwendet werden, die keine Arrays sind?

#### --distractors--

Ja, sie kann auf jedem Objekt verwendet werden.

---

Ja, aber nur auf Objekten mit numerischen Eigenschaften.

---

Das hängt von der JavaScript-Version ab.

#### --answer--

Nein, sie ist speziell für Arrays konzipiert.

### --question--

#### --text--

Was ist der Hauptzweck der `map`-Methode in JavaScript?

#### --distractors--

Ein Array zu sortieren und ein neues Array zurückzugeben, während die ursprüngliche Reihenfolge erhalten bleibt.

---

Elemente aus einem Array zu filtern und basierend auf einer Bedingung Elemente zu entfernen oder hinzuzufügen.

---

Ein bestimmtes Element in einem Array zu finden und dessen Index zusammen mit dem Element zurückzugeben.

#### --answer--

Ein neues Array zu erstellen, das die Ergebnisse des Aufrufs einer bereitgestellten Funktion auf jedes Element des Ausgangsarrays enthält.
