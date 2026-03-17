---
id: 66edc31c44f1b9c1d5c5ebca
title: Quiz sulle stringhe in JavaScript
challengeType: 8
dashedName: quiz-javascript-strings
---

# --description--

Per superare il quiz, devi rispondere correttamente ad almeno 18 delle 20 domande seguenti.

# --quizzes--

## --quiz--

### --question--

#### --text--

Qual è il valore di ritorno del metodo `includes()`?

#### --distractors--

Se la sottostringa viene trovata all'interno della stringa, il metodo restituisce la stringa. Altrimenti, restituisce `undefined`.

---

Se la sottostringa viene trovata all'interno della stringa, il metodo restituisce `true`. Altrimenti, restituisce una stringa vuota.

---

Se la sottostringa viene trovata all'interno della stringa, il metodo restituisce la stringa. Altrimenti, restituisce `null`.

#### --answer--

Se la sottostringa viene trovata all'interno della stringa, il metodo restituisce `true`. Altrimenti, restituisce `false`.

### --question--

#### --text--

Quale opzione dimostra l'interpolazione di stringhe?

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

Quale delle seguenti opzioni è il carattere di nuova riga?

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

Quale delle seguenti affermazioni è corretta riguardo alle stringhe?

#### --distractors--

Le stringhe sono mutabili e possono essere modificate dopo la loro creazione.

---

Le stringhe sono tipi di dati non primitivi.

---

Le stringhe possono essere create solo usando virgolette singole.

#### --answer--

Le stringhe sono immutabili.

### --question--

#### --text--

Cosa significa ASCII?

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

Quale dei seguenti metodi estrae una porzione di una stringa e restituisce una nuova stringa?

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

Qual è lo scopo del metodo `prompt()`?

#### --distractors--

Mostra un messaggio nella console.

---

Mostra un riquadro di avviso con un messaggio.

---

Mostra un riquadro di conferma con un messaggio.

#### --answer--

Mostra un riquadro di dialogo che attende l'input dell'utente.

### --question--

#### --text--

Qual è il modo corretto per consultare il terzo carattere di una stringa?

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

Come puoi ottenere il valore ASCII del primo carattere nella stringa `"hello"`?

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

Quale metodo puoi usare per ottenere il carattere corrispondente a un valore ASCII?

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

Quale dei seguenti esempi `indexOf` stamperà `-1` nella console?

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

Come puoi verificare se la stringa `"JavaScript"` contiene `"Script"`?

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

Quale delle seguenti opzioni estrae la sottostringa `"Script"` dalla stringa `"JavaScript"`?

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

Come converti la stringa `"JavaScript"` in maiuscolo?

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

Come converti la stringa `"JavaScript"` in minuscolo?

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

Quale delle seguenti opzioni sostituirà `"dogs"` con `"cats"` nella stringa `"I love dogs"`?

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

Quale metodo si usa per ripetere una stringa un numero specificato di volte?

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

Cosa restituirà il seguente codice: `"abc".repeat(3)`?

#### --distractors--

`"abcabc"`

---

`"abcabcabcabc"`

---

Genererà un errore.

#### --answer--

`"abcabcabc"`

### --question--

#### --text--

Quale metodo rimuove gli spazi bianchi dall'inizio e dalla fine di una stringa?

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

Qual è la sintassi corretta per fare l'escape delle virgolette?

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
