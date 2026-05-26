---
id: 69dd63d1dcdeccb7b39ba4c3
title: 建置校對工具
challengeType: 26
dashedName: build-a-proofreading-tool
---

# --description--

在這個實驗中，你將建置一個校對工具，用來分析陣列中的字，找出回文和重複片語。

回文是指正著讀和反著讀都相同的字。例如，`"racecar"` 和 `"level"` 是回文，但 `"hello"` 不是。

片語是一連串連續的字。例如，在 `["the", "cat", "sat", "the", "cat"]` 中，片語 `"the cat"`（由 2 個字組成）出現在位置 0 和 3。

**目標：** 完成以下使用者故事並通過所有測試以完成此實驗。

**使用者故事：**

1. 你應該定義一個名為 `isPalindrome` 的函式，接受一個 `word` 字串作為引數。若該字正著讀和反著讀相同（不分大小寫），應傳回 `true`，否則傳回 `false`。

2. 你應該定義一個名為 `findPalindromeBreaks` 的函式，接受一個 `words` 陣列作為引數。應傳回一個包含非回文字的字索引陣列。若輸入為空，應傳回空陣列。

3. 你應該定義一個名為 `findRepeatedPhrases` 的函式，接受一個 `words` 陣列和一個 `phraseLength` 數字作為引數。應傳回一個陣列，包含所有出現超過一次的 `phraseLength` 個連續字的起始索引（包含第一次出現的索引）。若 `phraseLength` 大於或等於 `words` 的長度，應傳回空陣列。重疊的序列也應該被計算在內。

4. 你應該定義一個名為 `analyzeTexts` 的函式，接受一個 `texts` 陣列和一個 `phraseLength` 數字作為引數。應處理 `texts` 中的每個元素（每個元素都是字陣列），並傳回一個物件陣列，每個物件包含 `repeatedPhrases` 和 `palindromeBreaks` 屬性。若 `texts` 為空，應傳回空陣列。

# --hints--

`isPalindrome` 應該是一個函式。

```js
assert.isFunction(isPalindrome);
```

`isPalindrome` 應該對回文傳回 `true`。

```js
assert.isTrue(isPalindrome("racecar"));
assert.isTrue(isPalindrome("a"));
```

`isPalindrome` 應該不分大小寫地傳回 `true`。

```js
assert.isTrue(isPalindrome("Level"));
```

`isPalindrome` 應該對非回文傳回 `false`。

```js
assert.isFalse(isPalindrome("hello"));
```

`findPalindromeBreaks` 應該是一個函式。

```js
assert.isFunction(findPalindromeBreaks);
```

`findPalindromeBreaks` 應該對空輸入傳回空陣列。

```js
assert.sameDeepOrderedMembers(findPalindromeBreaks([]), []);
```

`findPalindromeBreaks` 應該傳回非回文字的索引。

```js
assert.sameDeepOrderedMembers(findPalindromeBreaks(["racecar", "hello", "level"]), [1]);
```

`findPalindromeBreaks` 當所有字都是回文時，應傳回空陣列。

```js
assert.sameDeepOrderedMembers(findPalindromeBreaks(["racecar", "level", "aba"]), []);
```

`findRepeatedPhrases` 應該是一個函式。

```js
assert.isFunction(findRepeatedPhrases);
```

`findRepeatedPhrases` 當 `phraseLength` 大於或等於 `words` 的長度時，應傳回空陣列。

```js
assert.sameDeepOrderedMembers(findRepeatedPhrases(["the", "cat"], 2), []);
```

`findRepeatedPhrases` 當 `phraseLength` 大於 `words` 的長度時，應傳回空陣列。

```js
assert.sameDeepOrderedMembers(findRepeatedPhrases(["the"], 2), []);
```

`findRepeatedPhrases` 應該傳回所有片語重複出現的起始索引，包括第一次出現的索引。

```js
assert.sameDeepOrderedMembers(findRepeatedPhrases(["the", "cat", "sat", "the", "cat"], 2), [0, 3]);
```

`findRepeatedPhrases` 應該傳回所有重疊重複片語的起始索引。

```js
assert.sameDeepOrderedMembers(findRepeatedPhrases(["ba", "ba", "ba"], 2), [0, 1]);
```

`analyzeTexts` 應該是一個函式。

```js
assert.isFunction(analyzeTexts);
```

`analyzeTexts` 應該對空輸入傳回空陣列。

```js
assert.sameDeepOrderedMembers(analyzeTexts([], 2), []);
```

`analyzeTexts` 的結果物件應包含 `repeatedPhrases` 和 `palindromeBreaks` 屬性。

```js
const result = analyzeTexts([["racecar", "hello"]], 2);
assert.property(result[0], "repeatedPhrases");
assert.property(result[0], "palindromeBreaks");
```

`analyzeTexts` 應該正確彙整每個文字的結果。

```js
const result = analyzeTexts([["racecar", "hello", "level", "hello"]], 1);
assert.sameDeepOrderedMembers(result[0].repeatedPhrases, [1, 3]);
assert.sameDeepOrderedMembers(result[0].palindromeBreaks, [1, 3]);
```

`analyzeTexts` 應該處理多個文字並為每個文字傳回結果。

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
