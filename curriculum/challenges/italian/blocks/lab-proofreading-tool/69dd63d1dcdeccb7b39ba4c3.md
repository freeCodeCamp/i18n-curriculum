---
id: 69dd63d1dcdeccb7b39ba4c3
title: Costruire uno strumento di revisione
challengeType: 26
dashedName: build-a-proofreading-tool
---

# --description--

In questo laboratorio costruirai uno strumento di revisione che analizza array di parole per palindromi e frasi ripetute.

Un palindromo è una parola che si legge uguale da sinistra a destra e da destra a sinistra. Per esempio, `"racecar"` e `"level"` sono palindromi, mentre `"hello"` non lo è.

Una frase è una sequenza di parole consecutive. Per esempio, in `["the", "cat", "sat", "the", "cat"]`, la frase `"the cat"` (una sequenza di 2 parole) appare nelle posizioni 0 e 3.

**Obiettivo:** Completa le storie utente qui sotto e fai passare tutti i test per completare il laboratorio.

**Storie utente:**

1. Devi definire una funzione chiamata `isPalindrome` che prende una stringa `word` come argomento. Deve restituire `true` se la parola si legge uguale da sinistra a destra e da destra a sinistra (ignorando maiuscole e minuscole), e `false` altrimenti.

2. Devi definire una funzione chiamata `findPalindromeBreaks` che prende un array `words` come argomento. Deve restituire un array di indici delle parole che non sono palindromi. Deve restituire un array vuoto se l'input è vuoto.

3. Devi definire una funzione chiamata `findRepeatedPhrases` che prende un array `words` e un numero `phraseLength` come argomenti. Deve restituire un array di tutti gli indici di inizio dove una sequenza di `phraseLength` parole consecutive appare più di una volta nell'array — incluso l'indice della prima occorrenza. Deve restituire un array vuoto se `phraseLength` è maggiore o uguale alla lunghezza di `words`. Devono essere contate anche le sequenze sovrapposte.

4. Devi definire una funzione chiamata `analyzeTexts` che prende un array `texts` e un numero `phraseLength` come argomenti. Deve processare ogni elemento di `texts` (ognuno un array di parole) e restituire un array di oggetti, ognuno con proprietà `repeatedPhrases` e `palindromeBreaks`. Deve restituire un array vuoto se `texts` è vuoto.

# --hints--

`isPalindrome` deve essere una funzione.

```js
assert.isFunction(isPalindrome);
```

`isPalindrome` deve restituire `true` per un palindromo.

```js
assert.isTrue(isPalindrome("racecar"));
assert.isTrue(isPalindrome("a"));
```

`isPalindrome` deve restituire `true` indipendentemente dal maiuscolo o minuscolo.

```js
assert.isTrue(isPalindrome("Level"));
```

`isPalindrome` deve restituire `false` per un non-palindromo.

```js
assert.isFalse(isPalindrome("hello"));
```

`findPalindromeBreaks` deve essere una funzione.

```js
assert.isFunction(findPalindromeBreaks);
```

`findPalindromeBreaks` deve restituire un array vuoto per input vuoto.

```js
assert.sameDeepOrderedMembers(findPalindromeBreaks([]), []);
```

`findPalindromeBreaks` deve restituire gli indici dei non-palindromi.

```js
assert.sameDeepOrderedMembers(findPalindromeBreaks(["racecar", "hello", "level"]), [1]);
```

`findPalindromeBreaks` deve restituire un array vuoto quando tutte le parole sono palindromi.

```js
assert.sameDeepOrderedMembers(findPalindromeBreaks(["racecar", "level", "aba"]), []);
```

`findRepeatedPhrases` deve essere una funzione.

```js
assert.isFunction(findRepeatedPhrases);
```

`findRepeatedPhrases` deve restituire un array vuoto quando `phraseLength` è maggiore o uguale alla lunghezza di `words`.

```js
assert.sameDeepOrderedMembers(findRepeatedPhrases(["the", "cat"], 2), []);
```

`findRepeatedPhrases` deve restituire un array vuoto quando `phraseLength` è maggiore della lunghezza di `words`.

```js
assert.sameDeepOrderedMembers(findRepeatedPhrases(["the"], 2), []);
```

`findRepeatedPhrases` deve restituire tutti gli indici di inizio dove la frase si ripete, inclusa la prima occorrenza.

```js
assert.sameDeepOrderedMembers(findRepeatedPhrases(["the", "cat", "sat", "the", "cat"], 2), [0, 3]);
```

`findRepeatedPhrases` deve restituire tutti gli indici di inizio per frasi ripetute sovrapposte.

```js
assert.sameDeepOrderedMembers(findRepeatedPhrases(["ba", "ba", "ba"], 2), [0, 1]);
```

`analyzeTexts` deve essere una funzione.

```js
assert.isFunction(analyzeTexts);
```

`analyzeTexts` deve restituire un array vuoto per input vuoto.

```js
assert.sameDeepOrderedMembers(analyzeTexts([], 2), []);
```

`analyzeTexts` oggetti risultato devono avere proprietà `repeatedPhrases` e `palindromeBreaks`.

```js
const result = analyzeTexts([["racecar", "hello"]], 2);
assert.property(result[0], "repeatedPhrases");
assert.property(result[0], "palindromeBreaks");
```

`analyzeTexts` deve aggregare correttamente i risultati per ogni testo.

```js
const result = analyzeTexts([["racecar", "hello", "level", "hello"]], 1);
assert.sameDeepOrderedMembers(result[0].repeatedPhrases, [1, 3]);
assert.sameDeepOrderedMembers(result[0].palindromeBreaks, [1, 3]);
```

`analyzeTexts` deve processare testi multipli e restituire un risultato per ciascuno.

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
