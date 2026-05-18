---
id: 69dd63d1dcdeccb7b39ba4c3
title: construir uma ferramenta de revisar texto
challengeType: 26
dashedName: build-a-proofreading-tool
---

# --description--

Neste laboratório, você vai construir uma ferramenta de revisar texto que analisa arrays de palavras para palíndromos e frases repetidas.

Um palíndromo é uma palavra que se lê igual da frente para trás e de trás para frente. Por exemplo, `"racecar"` e `"level"` são palíndromos, mas `"hello"` não é.

Uma frase é uma sequência de palavras consecutivas. Por exemplo, em `["the", "cat", "sat", "the", "cat"]`, a frase `"the cat"` (uma sequência de 2 palavras) aparece nas posições 0 e 3.

**Objetivo:** Atenda às user stories abaixo e faça todos os testes passarem para completar o laboratório.

**User stories:**

1. Você deve definir uma função chamada `isPalindrome` que recebe uma string `word` como argumento. Ela deve retornar `true` se a palavra for um palíndromo (ignorando maiúsculas e minúsculas) e `false` caso contrário.

2. Você deve definir uma função chamada `findPalindromeBreaks` que recebe um array `words` como argumento. Ela deve retornar um array com os índices das palavras que não são palíndromos. Deve retornar um array vazio se a entrada estiver vazia.

3. Você deve definir uma função chamada `findRepeatedPhrases` que recebe um array `words` e um número `phraseLength` como argumentos. Ela deve retornar um array com todos os índices iniciais onde uma sequência de `phraseLength` palavras consecutivas aparece mais de uma vez no array — incluindo o índice da primeira ocorrência. Deve retornar um array vazio se `phraseLength` for maior ou igual ao comprimento de `words`.

4. Você deve definir uma função chamada `analyzeTexts` que recebe um array `texts` e um número `phraseLength` como argumentos. Ela deve processar cada elemento de `texts` (cada um um array de palavras) e retornar um array de objetos, cada um com as propriedades `repeatedPhrases` e `palindromeBreaks`. Deve retornar um array vazio se `texts` estiver vazio.

# --hints--

`isPalindrome` deve ser uma função.

```js
assert.isFunction(isPalindrome);
```

`isPalindrome` deve retornar `true` para um palíndromo.

```js
assert.isTrue(isPalindrome("racecar"));
assert.isTrue(isPalindrome("a"));
```

`isPalindrome` deve retornar `true` independentemente de maiúsculas ou minúsculas.

```js
assert.isTrue(isPalindrome("Level"));
```

`isPalindrome` deve retornar `false` para uma palavra que não é palíndromo.

```js
assert.isFalse(isPalindrome("hello"));
```

`findPalindromeBreaks` deve ser uma função.

```js
assert.isFunction(findPalindromeBreaks);
```

`findPalindromeBreaks` deve retornar um array vazio para entrada vazia.

```js
assert.sameDeepOrderedMembers(findPalindromeBreaks([]), []);
```

`findPalindromeBreaks` deve retornar os índices das palavras que não são palíndromos.

```js
assert.sameDeepOrderedMembers(findPalindromeBreaks(["racecar", "hello", "level"]), [1]);
```

`findPalindromeBreaks` deve retornar um array vazio quando todas as palavras forem palíndromos.

```js
assert.sameDeepOrderedMembers(findPalindromeBreaks(["racecar", "level", "aba"]), []);
```

`findRepeatedPhrases` deve ser uma função.

```js
assert.isFunction(findRepeatedPhrases);
```

`findRepeatedPhrases` deve retornar um array vazio quando `phraseLength` for maior ou igual ao comprimento de `words`.

```js
assert.sameDeepOrderedMembers(findRepeatedPhrases(["the", "cat"], 2), []);
```

`findRepeatedPhrases` deve retornar um array vazio quando `phraseLength` for maior que o comprimento de `words`.

```js
assert.sameDeepOrderedMembers(findRepeatedPhrases(["the"], 2), []);
```

`findRepeatedPhrases` deve retornar todos os índices iniciais onde a frase se repete, incluindo a primeira ocorrência.

```js
assert.sameDeepOrderedMembers(findRepeatedPhrases(["the", "cat", "sat", "the", "cat"], 2), [0, 3]);
```

`analyzeTexts` deve ser uma função.

```js
assert.isFunction(analyzeTexts);
```

`analyzeTexts` deve retornar um array vazio para entrada vazia.

```js
assert.sameDeepOrderedMembers(analyzeTexts([], 2), []);
```

`analyzeTexts` objetos de resultado devem ter as propriedades `repeatedPhrases` e `palindromeBreaks`.

```js
const result = analyzeTexts([["racecar", "hello"]], 2);
assert.property(result[0], "repeatedPhrases");
assert.property(result[0], "palindromeBreaks");
```

`analyzeTexts` deve agregar corretamente os resultados para cada texto.

```js
const result = analyzeTexts([["racecar", "hello", "level", "hello"]], 1);
assert.sameDeepOrderedMembers(result[0].repeatedPhrases, [1, 3]);
assert.sameDeepOrderedMembers(result[0].palindromeBreaks, [1, 3]);
```

`analyzeTexts` deve processar múltiplos textos e retornar um resultado para cada um.

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
