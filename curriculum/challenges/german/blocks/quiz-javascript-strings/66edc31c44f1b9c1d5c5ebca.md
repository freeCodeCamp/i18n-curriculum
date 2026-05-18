---
id: 66edc31c44f1b9c1d5c5ebca
title: JavaScript-Strings-Quiz
challengeType: 8
dashedName: quiz-javascript-strings
---

# --description--

Um das Quiz zu bestehen, müssen Sie mindestens 18 der 20 Fragen unten richtig beantworten.

# --quizzes--

## --quiz--

### --question--

#### --text--

Was ist der Rückgabewert der `includes()`-Methode?

#### --distractors--

Wenn die Teilzeichenfolge im String gefunden wird, gibt die Methode den String zurück. Andernfalls gibt sie `undefined` zurück.

---

Wenn die Teilzeichenfolge im String gefunden wird, gibt die Methode `true` zurück. Andernfalls gibt sie einen leeren String zurück.

---

Wenn die Teilzeichenfolge im String gefunden wird, gibt die Methode den String zurück. Andernfalls gibt sie `null` zurück.

#### --answer--

Wenn die Teilzeichenfolge im String gefunden wird, gibt die Methode `true` zurück. Andernfalls gibt sie `false` zurück.

### --question--

#### --text--

Welche Option zeigt eine String-Interpolation?

#### --distractors--

`"Hello, " + user + "!"`

---

`"Hello, $user!"`

---

`` `Hello, {user}!` ``

#### --answer--

`` `Hello, ${user}!` ``

### --question--

#### --text--

Welches der folgenden Zeichen ist das Zeilenumbruchzeichen?

#### --distractors--

`\newline`

---

`\new`

---

`\line`

#### --answer--

`\n`

### --question--

#### --text--

Welche der folgenden Aussagen über Strings ist korrekt?

#### --distractors--

Strings sind veränderbar und können nach ihrer Erstellung geändert werden.

---

Strings sind keine primitiven Datentypen.

---

Strings können nur mit einfachen Anführungszeichen erstellt werden.

#### --answer--

Strings sind unveränderlich.

### --question--

#### --text--

Wofür steht ASCII?

#### --distractors--

American Standard Code for Internet Information

---

Advanced Systematic Code for Internal Interchange

---

Automatic Standard Code for Internal Information

#### --answer--

American Standard Code for Information Interchange

### --question--

#### --text--

Welche der folgenden Methoden extrahiert einen Teilstring und gibt einen neuen String zurück?

#### --distractors--

`trim()`

---

`indexOf()`

---

`prompt()`

#### --answer--

`slice()`

### --question--

#### --text--

Was ist der Zweck der `prompt()`-Methode?

#### --distractors--

Sie zeigt eine Nachricht in der Konsole an.

---

Sie zeigt ein Alert-Fenster mit einer Nachricht an.

---

Sie zeigt ein Bestätigungsfenster mit einer Nachricht an.

#### --answer--

Sie zeigt ein Dialogfenster an, das auf die Eingabe des Benutzers wartet.

### --question--

#### --text--

Wie greift man korrekt auf das dritte Zeichen eines Strings zu?

#### --distractors--

```js
const developer = "Jessica";
developer[3];
```

---

```js
const developer = "Jessica";
developer[-1];
```

---

```js
const developer = "Jessica";
developer[0];
```

#### --answer--

```js
const developer = "Jessica";
developer[2];
```

### --question--

#### --text--

Wie können Sie den ASCII-Wert des ersten Zeichens im String `"hello"` erhalten?

#### --distractors--

`"hello".charCode(0)`

---

`"hello".codeAt(0)`

---

`"hello".getCharIndex(0)`

#### --answer--

`"hello".charCodeAt(0)`

### --question--

#### --text--

Welche Methode können Sie verwenden, um das Zeichen zu erhalten, das einem ASCII-Wert entspricht?

#### --distractors--

`toASCII()`

---

`toChar()`

---

`toCode()`

#### --answer--

`fromCharCode()`

### --question--

#### --text--

Welches der folgenden `indexOf`-Beispiele gibt `-1` in der Konsole aus?

#### --distractors--

```js
const organization = "freeCodeCamp";
console.log(organization.indexOf("e"));
```

---

```js
const organization = "freeCodeCamp";
console.log(organization.indexOf("f"));
```

---

```js
const organization = "freeCodeCamp";
console.log(organization.indexOf("C"));
```

#### --answer--

```js
const organization = "freeCodeCamp";
console.log(organization.indexOf("c"));
```

### --question--

#### --text--

Wie können Sie überprüfen, ob der String `"JavaScript"` `"Script"` enthält?

#### --distractors--

`"JavaScript".has("Script")`

---

`"JavaScript".contains("Script")`

---

`"JavaScript".exists("Script")`

#### --answer--

`"JavaScript".includes("Script")`

### --question--

#### --text--

Welche der folgenden Optionen extrahiert den Teilstring `"Script"` aus dem String `"JavaScript"`?

#### --distractors--

`"JavaScript".find(5)`

---

`"JavaScript".extract(4)`

---

`"JavaScript".cut(5)`

#### --answer--

`"JavaScript".slice(4)`

### --question--

#### --text--

Wie wandeln Sie den String `"JavaScript"` in Großbuchstaben um?

#### --distractors--

`"JavaScript".upper()`

---

`"JavaScript".toUpper()`

---

`"JavaScript".convertUpper()`

#### --answer--

`"JavaScript".toUpperCase()`

### --question--

#### --text--

Wie wandeln Sie den String `"JavaScript"` in Kleinbuchstaben um?

#### --distractors--

`"JavaScript".lower()`

---

`"JavaScript".toLower()`

---

`"JavaScript".convertLower()`

#### --answer--

`"JavaScript".toLowerCase()`

### --question--

#### --text--

Welche der folgenden Optionen ersetzt `"dogs"` durch `"cats"` im String `"I love dogs"`?

#### --distractors--

`"I love dogs".slice("dogs", "cats")`

---

`"I love dogs".replaceWith("dogs", "cats")`

---

`"I love dogs".find("dogs", "cats")`

#### --answer--

`"I love dogs".replace("dogs", "cats")`

### --question--

#### --text--

Welche Methode wird verwendet, um einen String eine bestimmte Anzahl von Malen zu wiederholen?

#### --distractors--

`times()`

---

`repeatTimes()`

---

`repeatNumber()`

#### --answer--

`repeat()`

### --question--

#### --text--

Was gibt der folgende Code zurück: `"abc".repeat(3)`?

#### --distractors--

`"abcabc"`

---

`"abcabcabcabc"`

---

Es wird ein Fehler geworfen.

#### --answer--

`"abcabcabc"`

### --question--

#### --text--

Welche Methode entfernt Leerzeichen am Anfang und Ende eines Strings?

#### --distractors--

`strip()`

---

`removeWhitespace()`

---

`trimWhitespace()`

#### --answer--

`trim()`

### --question--

#### --text--

Welche der folgenden ist die korrekte Syntax zum Maskieren von Anführungszeichen?

#### --distractors--

```js
"She said, ?"Hello!?""
```

---

```js
"She said, ."Hello!.""
```

---

```js
"She said, //"Hello!//""
```

#### --answer--

```js
"She said, \"Hello!\""
```

