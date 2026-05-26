---
id: 69dd63d1dcdeccb7b39ba4c3
title: Crear una herramienta de corrección
challengeType: 26
dashedName: build-a-proofreading-tool
---

# --description--

En este laboratorio, crearás una herramienta de corrección que analiza arreglos de palabras para detectar palíndromos y frases repetidas.

Un palíndromo es una palabra que se lee igual de adelante hacia atrás y de atrás hacia adelante. Por ejemplo, `"racecar"` y `"level"` son palíndromos, pero `"hello"` no lo es.

Una frase es una secuencia de palabras consecutivas. Por ejemplo, en `["the", "cat", "sat", "the", "cat"]`, la frase `"the cat"` (una secuencia de 2 palabras) aparece en las posiciones 0 y 3.

**Objetivo:** Cumple las historias de usuario a continuación y haz que todas las pruebas pasen para completar el laboratorio.

**Historias de usuario:**

1. Debes definir una función llamada `isPalindrome` que reciba un argumento de tipo cadena `word`. Debe devolver `true` si la palabra se lee igual de adelante hacia atrás (sin distinguir mayúsculas o minúsculas), y `false` en caso contrario.

2. Debes definir una función llamada `findPalindromeBreaks` que reciba un arreglo `words` como argumento. Debe devolver un arreglo con los índices de las palabras que no son palíndromos. Debe devolver un arreglo vacío si la entrada está vacía.

3. Debes definir una función llamada `findRepeatedPhrases` que reciba un arreglo `words` y un número `phraseLength` como argumentos. Debe devolver un arreglo con todos los índices iniciales donde una secuencia de `phraseLength` palabras consecutivas aparece más de una vez en el arreglo — incluyendo el índice de la primera aparición. Debe devolver un arreglo vacío si `phraseLength` es mayor o igual a la longitud de `words`. También deben contarse las secuencias superpuestas.

4. Debes definir una función llamada `analyzeTexts` que reciba un arreglo `texts` y un número `phraseLength` como argumentos. Debe procesar cada elemento de `texts` (cada uno es un arreglo de palabras) y devolver un arreglo de objetos, cada uno con propiedades `repeatedPhrases` y `palindromeBreaks`. Debe devolver un arreglo vacío si `texts` está vacío.

# --hints--

`isPalindrome` debe ser una función.

```js
assert.isFunction(isPalindrome);
```

`isPalindrome` debe devolver `true` para un palíndromo.

```js
assert.isTrue(isPalindrome("racecar"));
assert.isTrue(isPalindrome("a"));
```

`isPalindrome` debe devolver `true` sin importar mayúsculas o minúsculas.

```js
assert.isTrue(isPalindrome("Level"));
```

`isPalindrome` debe devolver `false` para una palabra que no es palíndromo.

```js
assert.isFalse(isPalindrome("hello"));
```

`findPalindromeBreaks` debe ser una función.

```js
assert.isFunction(findPalindromeBreaks);
```

`findPalindromeBreaks` debe devolver un arreglo vacío si la entrada está vacía.

```js
assert.sameDeepOrderedMembers(findPalindromeBreaks([]), []);
```

`findPalindromeBreaks` debe devolver los índices de las palabras que no son palíndromos.

```js
assert.sameDeepOrderedMembers(findPalindromeBreaks(["racecar", "hello", "level"]), [1]);
```

`findPalindromeBreaks` debe devolver un arreglo vacío cuando todas las palabras son palíndromos.

```js
assert.sameDeepOrderedMembers(findPalindromeBreaks(["racecar", "level", "aba"]), []);
```

`findRepeatedPhrases` debe ser una función.

```js
assert.isFunction(findRepeatedPhrases);
```

`findRepeatedPhrases` debe devolver un arreglo vacío cuando `phraseLength` es mayor o igual a la longitud de `words`.

```js
assert.sameDeepOrderedMembers(findRepeatedPhrases(["the", "cat"], 2), []);
```

`findRepeatedPhrases` debe devolver un arreglo vacío cuando `phraseLength` es mayor que la longitud de `words`.

```js
assert.sameDeepOrderedMembers(findRepeatedPhrases(["the"], 2), []);
```

`findRepeatedPhrases` debe devolver todos los índices iniciales donde la frase se repite, incluyendo la primera aparición.

```js
assert.sameDeepOrderedMembers(findRepeatedPhrases(["the", "cat", "sat", "the", "cat"], 2), [0, 3]);
```

`findRepeatedPhrases` debe devolver todos los índices iniciales para frases repetidas superpuestas.

```js
assert.sameDeepOrderedMembers(findRepeatedPhrases(["ba", "ba", "ba"], 2), [0, 1]);
```

`analyzeTexts` debe ser una función.

```js
assert.isFunction(analyzeTexts);
```

`analyzeTexts` debe devolver un arreglo vacío si la entrada está vacía.

```js
assert.sameDeepOrderedMembers(analyzeTexts([], 2), []);
```

`analyzeTexts` los objetos resultado deben tener propiedades `repeatedPhrases` y `palindromeBreaks`.

```js
const result = analyzeTexts([["racecar", "hello"]], 2);
assert.property(result[0], "repeatedPhrases");
assert.property(result[0], "palindromeBreaks");
```

`analyzeTexts` debe agregar correctamente los resultados para cada texto.

```js
const result = analyzeTexts([["racecar", "hello", "level", "hello"]], 1);
assert.sameDeepOrderedMembers(result[0].repeatedPhrases, [1, 3]);
assert.sameDeepOrderedMembers(result[0].palindromeBreaks, [1, 3]);
```

`analyzeTexts` debe procesar múltiples textos y devolver un resultado para cada uno.

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
