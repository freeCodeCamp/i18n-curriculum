---
id: 66edcccbba6dacdb65a59067
title: JavaScript-Arrays-Quiz
challengeType: 8
dashedName: quiz-javascript-arrays
---

# --description--

Um das Quiz zu bestehen, müssen Sie mindestens 18 der 20 Fragen unten richtig beantworten.

# --quizzes--

## --quiz--

### --question--

#### --text--

Was wird die Ausgabe für den folgenden Code sein?

```js
const numbers = [1, 2, 3];
console.log(numbers[10]);
```

#### --distractors--

`[1, 2, 3]`

---

`null`

---

`10`

#### --answer--

`undefined`

### --question--

#### --text--

Welche der folgenden Möglichkeiten ist der korrekte Weg, um den String `"Jessica"` aus dem `developers`-Array zuzugreifen?

#### --distractors--

```js
const developers = ["Jessica", "Naomi", "Tom"];
developers[1]
```

---

```js
const developers = ["Jessica", "Naomi", "Tom"];
developers[2]
```

---

```js
const developers = ["Jessica", "Naomi", "Tom"];
developers[-1]
```

#### --answer--

```js
const developers = ["Jessica", "Naomi", "Tom"];
developers[0]
```

### --question--

#### --text--

Welcher Wert wird der Variablen `index` zugewiesen?

```js
const numbers = [10, 20, 30, 40];
const index = numbers.indexOf(20);
console.log(index);
```

#### --distractors--

2

---

3

---

-1

#### --answer--

1

### --question--

#### --text--

Was bewirkt die Rest-Syntax?

#### --distractors--

Sie wird verwendet, um einen String in ein Array von Teilstrings zu teilen.

---

Sie wird verwendet, um Elemente an beliebiger Stelle in einem Array hinzuzufügen oder zu entfernen.

---

Sie wird verwendet, um Elemente am Ende des Arrays hinzuzufügen und gibt die neue Länge zurück.

#### --answer--

Sie fängt die verbleibenden Elemente eines Arrays in einem neuen Array ein.

### --question--

#### --text--

Was ist Array-Destrukturierung?

#### --distractors--

Sie wird verwendet, um alle Elemente eines Arrays zu einem einzigen String zu verketten.

---

Sie wird verwendet, um zu prüfen, ob ein Array einen bestimmten Wert enthält.

---

Sie wird verwendet, um das letzte Element aus einem Array zu entfernen und gibt dieses entfernte Element zurück.

#### --answer--

Sie wird verwendet, um Werte aus Arrays zu extrahieren und sie auf eine prägnantere und lesbarere Weise Variablen zuzuweisen.

### --question--

#### --text--

Welcher Wert wird der Variablen `arr2` zugewiesen?

```js
const arr1 = [1, 2, 3];
const arr2 = [...arr1, 4, 5];
console.log(arr2);
```

#### --distractors--

`[4, 5, 1, 2, 3]`

---

`[1, 2, [3, 4, 5]]`

---

`[1, 2, 3]`

#### --answer--

`[1, 2, 3, 4, 5]`

### --question--

#### --text--

Was wird dieser Code in der Konsole ausgeben?

```js
const colors = ["red", "blue", "green", "yellow"];
colors.splice(1, 2, "purple");
console.log(colors);
```

#### --distractors--

`["red", "blue", "green", "yellow"]`

---

`["red", "blue", "yellow"]`

---

`["red", "yellow"]`

#### --answer--

`["red", "purple", "yellow"]`

### --question--

#### --text--

Welcher Wert wird der Variablen `slicedArr` zugewiesen?

```js
const arr = ["apple", "banana", "cherry", "date"];
const slicedArr = arr.slice(1, 3);
console.log(slicedArr);
```

#### --distractors--

`["apple", "banana"]`

---

`["cherry", "date"]`

---

`["apple", "cherry"]`

#### --answer--

`["banana", "cherry"]`

### --question--

#### --text--

Welche Methode gibt den ersten Index eines bestimmten Elements in einem Array zurück?

#### --distractors--

`firstIndex()`

---

`lastIndex()`

---

`searchIndex()`

#### --answer--

`indexOf()`

### --question--

#### --text--

Welche Methode wird verwendet, um das erste Element aus einem Array zu entfernen und gibt dieses entfernte Element zurück?

#### --distractors--

`pop()`

---

`slice()`

---

`splice()`

#### --answer--

`shift()`

### --question--

#### --text--

Was macht die `concat()`-Methode?

#### --distractors--

Verbindet Array-Elemente zu einem String.

---

Fügt ein Element am Anfang eines Arrays hinzu.

---

Entfernt ein Element aus dem Array.

#### --answer--

Führt zwei Arrays zu einem neuen Array zusammen.

### --question--

#### --text--

Was wird die Ausgabe dieses Codes sein?

```js
const fruits = ["apple", "banana", "cherry", "apple", "orange"];

fruits.splice(0, 1);

console.log(fruits);
```

#### --distractors--

`["apple", "banana", "cherry", "apple", "orange"]`

---

`["apple", "banana", "cherry"]`

---

`["cherry", 'apple']`

#### --answer--

`["banana", "cherry", "apple", "orange"]`

### --question--

#### --text--

Was macht die `includes()`-Methode?

#### --distractors--

Sie wird verwendet, um einen String in ein Array von Teilstrings zu teilen.

---

Sie wird verwendet, um alle Elemente eines Arrays zu einem einzigen String zu verketten.

---

Sie wird verwendet, um Elemente an beliebiger Stelle in einem Array hinzuzufügen oder zu entfernen.

#### --answer--

Sie wird verwendet, um zu prüfen, ob ein Array einen bestimmten Wert enthält.

### --question--

#### --text--

Welche der folgenden Methoden wird verwendet, um ein Array an Ort und Stelle umzukehren?

#### --distractors--

`reversed()`

---

`reverseArr()`

---

`reversing()`

#### --answer--

`reverse()`

### --question--

#### --text--

Was ist ein zweidimensionales Array?

#### --distractors--

Ein Array, das nur Objektliterale enthält.

---

Ein Array mit fester Länge.

---

Ein Array von Gleitkommazahlen.

#### --answer--

Ein Array von Arrays.

### --question--

#### --text--

Welche der folgenden Aussagen trifft auf die `indexOf()`-Methode in Arrays zu?

#### --distractors--

Sie gibt immer das letzte Vorkommen des Elements zurück.

---

Sie wirft einen Fehler, wenn das Element nicht gefunden wird.

---

Sie erfordert, dass das Array sortiert ist.

#### --answer--

Sie gibt `-1` zurück, wenn das Element nicht gefunden wird.

### --question--

#### --text--

Welche der folgenden ist KEINE Array-Methode?

#### --distractors--

`includes()`

---

`pop()`

---

`push()`

#### --answer--

`trim()`

### --question--

#### --text--

Was wird die Ausgabe für den folgenden Code sein?

```js
const arr = ["o", "l", "l", "e", "h"];
console.log(arr.join(""));
```

#### --distractors--

`["o", "l", "l", "e", "h"]`

---

`"hello"`

---

`undefined`

#### --answer--

`"olleh"`

### --question--

#### --text--

Was wird das Ergebnis der Verwendung der `shift()`-Methode auf einem leeren Array sein?


#### --distractors--

`TypeError`

---

`[]`

---

`null`

#### --answer--

`undefined`

### --question--

#### --text--

Welche Methode gibt ein neues Array zurück, ohne das ursprüngliche Array zu verändern?

#### --distractors--

`shift()`

---

`pop()`

---

`push()`

#### --answer--

`slice()`
