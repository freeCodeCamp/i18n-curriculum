---
id: 69dd63d1dcdeccb7b39ba4c3
title: 构建校对工具
challengeType: 26
dashedName: build-a-proofreading-tool
---

# --description--

在本实验中，你将构建一个校对工具，用于分析字串数组中的回文和重复短语。

回文是指正读和反读都相同的字串。例如，`"racecar"` 和 `"level"` 是回文，但 `"hello"` 不是。

短语是一段连续的单词序列。例如，在 `["the", "cat", "sat", "the", "cat"]` 中，短语 `"the cat"`（由 2 个单词组成的序列）出现在位置 0 和 3。

**目标：** 完成以下用户故事并通过所有测试以完成本实验。

**用户故事：**

1. 你应该定义一个名为 `isPalindrome` 的函数，它接受一个 `word` 字串作为参数。如果该字串正读和反读相同（不区分大小写），则应返回 `true`，否则返回 `false`。

2. 你应该定义一个名为 `findPalindromeBreaks` 的函数，它接受一个 `words` 数组作为参数。它应返回一个包含非回文单词索引的数组。如果输入为空，则返回空数组。

3. 你应该定义一个名为 `findRepeatedPhrases` 的函数，它接受一个 `words` 数组和一个 `phraseLength` 数字作为参数。它应返回一个数组，包含所有 `phraseLength` 个连续单词序列在数组中出现多次的起始索引——包括首次出现的索引。如果 `phraseLength` 大于或等于 `words` 的长度，则返回空数组。重叠的序列也应计入。

4. 你应该定义一个名为 `analyzeTexts` 的函数，它接受一个 `texts` 数组和一个 `phraseLength` 数字作为参数。它应处理 `texts` 中的每个元素（每个元素都是一个单词数组），并返回一个包含 `repeatedPhrases` 和 `palindromeBreaks` 属性的对象数组。如果 `texts` 为空，则返回空数组。

# --hints--

`isPalindrome` 应该是一个函数。

```js
assert.isFunction(isPalindrome);
```

`isPalindrome` 应该为回文返回 `true`。

```js
assert.isTrue(isPalindrome("racecar"));
assert.isTrue(isPalindrome("a"));
```

`isPalindrome` 应该不区分大小写地返回 `true`。

```js
assert.isTrue(isPalindrome("Level"));
```

`isPalindrome` 应该为非回文返回 `false`。

```js
assert.isFalse(isPalindrome("hello"));
```

`findPalindromeBreaks` 应该是一个函数。

```js
assert.isFunction(findPalindromeBreaks);
```

`findPalindromeBreaks` 应该为空输入返回空数组。

```js
assert.sameDeepOrderedMembers(findPalindromeBreaks([]), []);
```

`findPalindromeBreaks` 应该返回非回文的索引。

```js
assert.sameDeepOrderedMembers(findPalindromeBreaks(["racecar", "hello", "level"]), [1]);
```

`findPalindromeBreaks` 应该在所有单词都是回文时返回空数组。

```js
assert.sameDeepOrderedMembers(findPalindromeBreaks(["racecar", "level", "aba"]), []);
```

`findRepeatedPhrases` 应该是一个函数。

```js
assert.isFunction(findRepeatedPhrases);
```

`findRepeatedPhrases` 应该在 `phraseLength` 大于或等于 `words` 长度时返回空数组。

```js
assert.sameDeepOrderedMembers(findRepeatedPhrases(["the", "cat"], 2), []);
```

`findRepeatedPhrases` 应该在 `phraseLength` 大于 `words` 长度时返回空数组。

```js
assert.sameDeepOrderedMembers(findRepeatedPhrases(["the"], 2), []);
```

`findRepeatedPhrases` 应该返回所有短语重复出现的起始索引，包括首次出现。

```js
assert.sameDeepOrderedMembers(findRepeatedPhrases(["the", "cat", "sat", "the", "cat"], 2), [0, 3]);
```

`findRepeatedPhrases` 应该返回所有重叠重复短语的起始索引。

```js
assert.sameDeepOrderedMembers(findRepeatedPhrases(["ba", "ba", "ba"], 2), [0, 1]);
```

`analyzeTexts` 应该是一个函数。

```js
assert.isFunction(analyzeTexts);
```

`analyzeTexts` 应该为空输入返回空数组。

```js
assert.sameDeepOrderedMembers(analyzeTexts([], 2), []);
```

`analyzeTexts` 结果对象应包含 `repeatedPhrases` 和 `palindromeBreaks` 属性。

```js
const result = analyzeTexts([["racecar", "hello"]], 2);
assert.property(result[0], "repeatedPhrases");
assert.property(result[0], "palindromeBreaks");
```

`analyzeTexts` 应该正确汇总每个文本的结果。

```js
const result = analyzeTexts([["racecar", "hello", "level", "hello"]], 1);
assert.sameDeepOrderedMembers(result[0].repeatedPhrases, [1, 3]);
assert.sameDeepOrderedMembers(result[0].palindromeBreaks, [1, 3]);
```

`analyzeTexts` 应该处理多个文本并返回每个的结果。

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
