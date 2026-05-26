---
id: 69dd63d1dcdeccb7b39ba4c3
title: Ein Korrekturlese-Tool bauen
challengeType: 26
dashedName: build-a-proofreading-tool
---

# --description--

In diesem Labor bauen Sie ein Korrekturlese-Tool, das Arrays von Wörtern auf Palindrome und wiederholte Phrasen analysiert.

Ein Palindrom ist ein Wort, das vorwärts und rückwärts gleich gelesen wird. Zum Beispiel sind `"racecar"` und `"level"` Palindrome, aber `"hello"` ist keines.

Eine Phrase ist eine Folge aufeinanderfolgender Wörter. Zum Beispiel erscheint in `["the", "cat", "sat", "the", "cat"]` die Phrase `"the cat"` (eine Folge von 2 Wörtern) an den Positionen 0 und 3.

**Ziel:** Erfüllen Sie die untenstehenden User Stories und bringen Sie alle Tests zum Bestehen, um das Labor abzuschließen.

**User Stories:**

1. Sie sollen eine Funktion namens `isPalindrome` definieren, die einen `word` String als Argument nimmt. Sie soll `true` zurückgeben, wenn das Wort vorwärts und rückwärts gleich gelesen wird (Groß-/Kleinschreibung wird ignoriert), und sonst `false`.

2. Sie sollen eine Funktion namens `findPalindromeBreaks` definieren, die ein `words` Array als Argument nimmt. Sie soll ein Array von Indizes der Wörter zurückgeben, die keine Palindrome sind. Sie soll ein leeres Array zurückgeben, wenn die Eingabe leer ist.

3. Sie sollen eine Funktion namens `findRepeatedPhrases` definieren, die ein `words` Array und eine `phraseLength` Zahl als Argumente nimmt. Sie soll ein Array aller Startindizes zurückgeben, an denen eine Folge von `phraseLength` aufeinanderfolgenden Wörtern mehr als einmal im Array erscheint – einschließlich des Index der ersten Vorkommnis. Sie soll ein leeres Array zurückgeben, wenn `phraseLength` größer oder gleich der Länge von `words` ist. Überlappende Folgen sollen ebenfalls gezählt werden.

4. Sie sollen eine Funktion namens `analyzeTexts` definieren, die ein `texts` Array und eine `phraseLength` Zahl als Argumente nimmt. Sie soll jedes Element von `texts` (jeweils ein Array von Wörtern) verarbeiten und ein Array von Objekten zurückgeben, die jeweils `repeatedPhrases` und `palindromeBreaks` Eigenschaften haben. Sie soll ein leeres Array zurückgeben, wenn `texts` leer ist.

# --hints--

`isPalindrome` sollte eine Funktion sein.

```js
assert.isFunction(isPalindrome);
```

`isPalindrome` sollte `true` für ein Palindrom zurückgeben.

```js
assert.isTrue(isPalindrome("racecar"));
assert.isTrue(isPalindrome("a"));
```

`isPalindrome` sollte `true` unabhängig von der Groß-/Kleinschreibung zurückgeben.

```js
assert.isTrue(isPalindrome("Level"));
```

`isPalindrome` sollte `false` für ein Nicht-Palindrom zurückgeben.

```js
assert.isFalse(isPalindrome("hello"));
```

`findPalindromeBreaks` sollte eine Funktion sein.

```js
assert.isFunction(findPalindromeBreaks);
```

`findPalindromeBreaks` sollte für leere Eingabe ein leeres Array zurückgeben.

```js
assert.sameDeepOrderedMembers(findPalindromeBreaks([]), []);
```

`findPalindromeBreaks` sollte die Indizes der Nicht-Palindrome zurückgeben.

```js
assert.sameDeepOrderedMembers(findPalindromeBreaks(["racecar", "hello", "level"]), [1]);
```

`findPalindromeBreaks` sollte ein leeres Array zurückgeben, wenn alle Wörter Palindrome sind.

```js
assert.sameDeepOrderedMembers(findPalindromeBreaks(["racecar", "level", "aba"]), []);
```

`findRepeatedPhrases` sollte eine Funktion sein.

```js
assert.isFunction(findRepeatedPhrases);
```

`findRepeatedPhrases` sollte ein leeres Array zurückgeben, wenn `phraseLength` größer oder gleich der Länge von `words` ist.

```js
assert.sameDeepOrderedMembers(findRepeatedPhrases(["the", "cat"], 2), []);
```

`findRepeatedPhrases` sollte ein leeres Array zurückgeben, wenn `phraseLength` größer als die Länge von `words` ist.

```js
assert.sameDeepOrderedMembers(findRepeatedPhrases(["the"], 2), []);
```

`findRepeatedPhrases` sollte alle Startindizes zurückgeben, an denen sich die Phrase wiederholt, einschließlich der ersten Vorkommnis.

```js
assert.sameDeepOrderedMembers(findRepeatedPhrases(["the", "cat", "sat", "the", "cat"], 2), [0, 3]);
```

`findRepeatedPhrases` sollte alle Startindizes für überlappende wiederholte Phrasen zurückgeben.

```js
assert.sameDeepOrderedMembers(findRepeatedPhrases(["ba", "ba", "ba"], 2), [0, 1]);
```

`analyzeTexts` sollte eine Funktion sein.

```js
assert.isFunction(analyzeTexts);
```

`analyzeTexts` sollte für leere Eingabe ein leeres Array zurückgeben.

```js
assert.sameDeepOrderedMembers(analyzeTexts([], 2), []);
```

`analyzeTexts` Ergebnisobjekte sollten `repeatedPhrases` und `palindromeBreaks` Eigenschaften haben.

```js
const result = analyzeTexts([["racecar", "hello"]], 2);
assert.property(result[0], "repeatedPhrases");
assert.property(result[0], "palindromeBreaks");
```

`analyzeTexts` sollte die Ergebnisse für jeden Text korrekt aggregieren.

```js
const result = analyzeTexts([["racecar", "hello", "level", "hello"]], 1);
assert.sameDeepOrderedMembers(result[0].repeatedPhrases, [1, 3]);
assert.sameDeepOrderedMembers(result[0].palindromeBreaks, [1, 3]);
```

`analyzeTexts` sollte mehrere Texte verarbeiten und für jeden ein Ergebnis zurückgeben.

```js
const result = analyzeTexts([["racecar", "hello"], ["level", "world", "level"]], 1);
assert.lengthOf(result, 2);
assert.sameDeepOrderedMembers(result[1].palindromeBreaks, [1]);
assert.sameDeepOrderedMembers(result[1].repeatedPhrases, [0, 2]);
```

# --seed--

## --seed-contents--

```js

```

# --solutions--

```js
function isPalindrome(word) {
  const lower = word.toLowerCase();
  for (let i = 0; i < Math.floor(lower.length / 2); i++) {
    if (lower[i] !== lower[lower.length - 1 - i]) {
      return false;
    }
  }
  return true;
}

function findPalindromeBreaks(words) {
  const breaks = [];
  if (words.length === 0) return breaks;
  for (let i = 0; i < words.length; i++) {
    if (!isPalindrome(words[i])) {
      breaks.push(i);
    }
  }
  return breaks;
}

function findRepeatedPhrases(words, phraseLength) {
  const result = [];
  if (phraseLength >= words.length) return result;

  for (let i = 0; i <= words.length - phraseLength; i++) {
    const phrase = words.slice(i, i + phraseLength).join(" ");
    let found = false;

    for (let j = 0; j <= words.length - phraseLength; j++) {
      if (i === j) continue;
      if (words.slice(j, j + phraseLength).join(" ") === phrase) {
        found = true;
        break;
      }
    }

    if (found) result.push(i);
  }

  return result;
}

function analyzeTexts(texts, phraseLength) {
  const results = [];
  if (texts.length === 0) return results;

  for (let i = 0; i < texts.length; i++) {
    results.push({
      repeatedPhrases: findRepeatedPhrases(texts[i], phraseLength),
      palindromeBreaks: findPalindromeBreaks(texts[i])
    });
  }

  return results;
}
```
