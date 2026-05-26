---
id: 69dd63d1dcdeccb7b39ba4c3
title: 校正ツールを作成する
challengeType: 26
dashedName: build-a-proofreading-tool
---

# --description--

このラボでは、単語の配列を解析して回文や繰り返しのフレーズを検出する校正ツールを作成します。

回文とは、前から読んでも後ろから読んでも同じ単語のことです。例えば、`"racecar"` と `"level"` は回文ですが、`"hello"` は回文ではありません。

フレーズとは、連続した単語のシーケンスです。例えば、`["the", "cat", "sat", "the", "cat"]` の中で、`"the cat"`（2語のシーケンス）が位置0と3に現れています。

**目的:** 以下のストーリーを満たし、すべてのテストに合格してラボを完了してください。

**ユーザーストーリー:**

1. `isPalindrome` という名前の関数を定義してください。この関数は `word` 文字列を引数に取り、単語が前から読んでも後ろから読んでも同じ（大文字・小文字を区別しない）場合は `true` を返し、そうでなければ `false` を返す必要があります。

2. `findPalindromeBreaks` という名前の関数を定義してください。この関数は `words` 配列を引数に取り、回文でない単語のインデックスの配列を返す必要があります。入力が空の場合は空の配列を返してください。

3. `findRepeatedPhrases` という名前の関数を定義してください。この関数は `words` 配列と `phraseLength` 数値を引数に取り、`phraseLength` 個の連続した単語のシーケンスが配列内で複数回現れるすべての開始インデックスの配列を返す必要があります。最初の出現のインデックスも含みます。`phraseLength` が `words` の長さ以上の場合は空の配列を返してください。重複するシーケンスもカウントされます。

4. `analyzeTexts` という名前の関数を定義してください。この関数は `texts` 配列と `phraseLength` 数値を引数に取り、`texts` の各要素（それぞれ単語の配列）を処理し、`repeatedPhrases` と `palindromeBreaks` プロパティを持つオブジェクトの配列を返す必要があります。`texts` が空の場合は空の配列を返してください。

# --hints--

`isPalindrome` は関数である必要があります。

```js
assert.isFunction(isPalindrome);
```

`isPalindrome` は回文の場合 `true` を返す必要があります。

```js
assert.isTrue(isPalindrome("racecar"));
assert.isTrue(isPalindrome("a"));
```

`isPalindrome` は大文字・小文字を区別せずに `true` を返す必要があります。

```js
assert.isTrue(isPalindrome("Level"));
```

`isPalindrome` は回文でない場合 `false` を返す必要があります。

```js
assert.isFalse(isPalindrome("hello"));
```

`findPalindromeBreaks` は関数である必要があります。

```js
assert.isFunction(findPalindromeBreaks);
```

`findPalindromeBreaks` は空の入力に対して空の配列を返す必要があります。

```js
assert.sameDeepOrderedMembers(findPalindromeBreaks([]), []);
```

`findPalindromeBreaks` は回文でない単語のインデックスを返す必要があります。

```js
assert.sameDeepOrderedMembers(findPalindromeBreaks(["racecar", "hello", "level"]), [1]);
```

`findPalindromeBreaks` はすべての単語が回文の場合に空の配列を返す必要があります。

```js
assert.sameDeepOrderedMembers(findPalindromeBreaks(["racecar", "level", "aba"]), []);
```

`findRepeatedPhrases` は関数である必要があります。

```js
assert.isFunction(findRepeatedPhrases);
```

`findRepeatedPhrases` は `phraseLength` が `words` の長さ以上の場合に空の配列を返す必要があります。

```js
assert.sameDeepOrderedMembers(findRepeatedPhrases(["the", "cat"], 2), []);
```

`findRepeatedPhrases` は `phraseLength` が `words` の長さより大きい場合に空の配列を返す必要があります。

```js
assert.sameDeepOrderedMembers(findRepeatedPhrases(["the"], 2), []);
```

`findRepeatedPhrases` はフレーズが繰り返されるすべての開始インデックスを、最初の出現も含めて返す必要があります。

```js
assert.sameDeepOrderedMembers(findRepeatedPhrases(["the", "cat", "sat", "the", "cat"], 2), [0, 3]);
```

`findRepeatedPhrases` は重複する繰り返しフレーズのすべての開始インデックスを返す必要があります。

```js
assert.sameDeepOrderedMembers(findRepeatedPhrases(["ba", "ba", "ba"], 2), [0, 1]);
```

`analyzeTexts` は関数である必要があります。

```js
assert.isFunction(analyzeTexts);
```

`analyzeTexts` は空の入力に対して空の配列を返す必要があります。

```js
assert.sameDeepOrderedMembers(analyzeTexts([], 2), []);
```

`analyzeTexts` の結果オブジェクトは `repeatedPhrases` と `palindromeBreaks` プロパティを持つ必要があります。

```js
const result = analyzeTexts([["racecar", "hello"]], 2);
assert.property(result[0], "repeatedPhrases");
assert.property(result[0], "palindromeBreaks");
```

`analyzeTexts` は各テキストの結果を正しく集約する必要があります。

```js
const result = analyzeTexts([["racecar", "hello", "level", "hello"]], 1);
assert.sameDeepOrderedMembers(result[0].repeatedPhrases, [1, 3]);
assert.sameDeepOrderedMembers(result[0].palindromeBreaks, [1, 3]);
```

`analyzeTexts` は複数のテキストを処理し、それぞれの結果を返す必要があります。

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
