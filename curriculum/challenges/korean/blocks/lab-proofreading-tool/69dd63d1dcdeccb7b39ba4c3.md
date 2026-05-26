---
id: 69dd63d1dcdeccb7b39ba4c3
title: 교정 도구 만들기
challengeType: 26
dashedName: build-a-proofreading-tool
---

# --description--

이 실습에서는 단어 배열을 분석하여 회문과 반복된 구문을 찾는 교정 도구를 만드세요.

회문은 앞에서 읽으나 뒤에서 읽으나 같은 단어입니다. 예를 들어 `"racecar"`와 `"level"`는 회문이지만 `"hello"`는 아닙니다.

구문은 연속된 단어들의 수열입니다. 예를 들어 `["the", "cat", "sat", "the", "cat"]`에서, `"the cat"` (2단어 수열) 구문이 위치 0과 3에 나타납니다.

**목표:** 아래 사용자 스토리를 완성하고 모든 테스트를 통과하여 실습을 완료하세요.

**사용자 스토리:**

1. `isPalindrome`라는 이름의 함수를 정의하세요. 이 함수는 `word` 문자열을 인수로 받습니다. 단어가 대소문자 구분 없이 앞뒤가 같으면 `true`를 반환하고, 그렇지 않으면 `false`를 반환해야 합니다.

2. `findPalindromeBreaks`라는 이름의 함수를 정의하세요. 이 함수는 `words` 배열을 인수로 받습니다. 회문이 아닌 단어들의 인덱스 배열을 반환해야 합니다. 입력이 비어 있으면 빈 배열을 반환해야 합니다.

3. `findRepeatedPhrases`라는 이름의 함수를 정의하세요. 이 함수는 `words` 배열과 `phraseLength` 숫자를 인수로 받습니다. `phraseLength` 개의 연속된 단어 수열이 배열 내에서 두 번 이상 나타나는 모든 시작 인덱스 배열을 반환해야 하며, 첫 번째 발생 인덱스도 포함해야 합니다. `phraseLength`가 `words` 길이 이상이면 빈 배열을 반환해야 합니다. 겹치는 수열도 포함해야 합니다.

4. `analyzeTexts`라는 이름의 함수를 정의하세요. 이 함수는 `texts` 배열과 `phraseLength` 숫자를 인수로 받습니다. `texts`의 각 요소(각각 단어 배열)를 처리하여 `repeatedPhrases`와 `palindromeBreaks` 속성을 가진 객체 배열을 반환해야 합니다. `texts`가 비어 있으면 빈 배열을 반환해야 합니다.

# --hints--

`isPalindrome`는 함수여야 합니다.

```js
assert.isFunction(isPalindrome);
```

`isPalindrome`는 회문에 대해 `true`를 반환해야 합니다.

```js
assert.isTrue(isPalindrome("racecar"));
assert.isTrue(isPalindrome("a"));
```

`isPalindrome`는 대소문자 구분 없이 `true`를 반환해야 합니다.

```js
assert.isTrue(isPalindrome("Level"));
```

`isPalindrome`는 회문이 아닐 때 `false`를 반환해야 합니다.

```js
assert.isFalse(isPalindrome("hello"));
```

`findPalindromeBreaks`는 함수여야 합니다.

```js
assert.isFunction(findPalindromeBreaks);
```

`findPalindromeBreaks`는 입력이 비었을 때 빈 배열을 반환해야 합니다.

```js
assert.sameDeepOrderedMembers(findPalindromeBreaks([]), []);
```

`findPalindromeBreaks`는 회문이 아닌 단어들의 인덱스를 반환해야 합니다.

```js
assert.sameDeepOrderedMembers(findPalindromeBreaks(["racecar", "hello", "level"]), [1]);
```

`findPalindromeBreaks`는 모든 단어가 회문일 때 빈 배열을 반환해야 합니다.

```js
assert.sameDeepOrderedMembers(findPalindromeBreaks(["racecar", "level", "aba"]), []);
```

`findRepeatedPhrases`는 함수여야 합니다.

```js
assert.isFunction(findRepeatedPhrases);
```

`findRepeatedPhrases`는 `phraseLength`가 `words` 길이 이상일 때 빈 배열을 반환해야 합니다.

```js
assert.sameDeepOrderedMembers(findRepeatedPhrases(["the", "cat"], 2), []);
```

`findRepeatedPhrases`는 `phraseLength`가 `words` 길이 이상일 때 빈 배열을 반환해야 합니다.

```js
assert.sameDeepOrderedMembers(findRepeatedPhrases(["the"], 2), []);
```

`findRepeatedPhrases`는 구문이 반복되는 모든 시작 인덱스를 첫 번째 발생 인덱스까지 포함하여 반환해야 합니다.

```js
assert.sameDeepOrderedMembers(findRepeatedPhrases(["the", "cat", "sat", "the", "cat"], 2), [0, 3]);
```

`findRepeatedPhrases`는 겹치는 반복 구문에 대한 모든 시작 인덱스를 반환해야 합니다.

```js
assert.sameDeepOrderedMembers(findRepeatedPhrases(["ba", "ba", "ba"], 2), [0, 1]);
```

`analyzeTexts`는 함수여야 합니다.

```js
assert.isFunction(analyzeTexts);
```

`analyzeTexts`는 입력이 비었을 때 빈 배열을 반환해야 합니다.

```js
assert.sameDeepOrderedMembers(analyzeTexts([], 2), []);
```

`analyzeTexts` 결과 객체는 `repeatedPhrases`와 `palindromeBreaks` 속성을 가져야 합니다.

```js
const result = analyzeTexts([["racecar", "hello"]], 2);
assert.property(result[0], "repeatedPhrases");
assert.property(result[0], "palindromeBreaks");
```

`analyzeTexts`는 각 텍스트에 대해 결과를 올바르게 집계해야 합니다.

```js
const result = analyzeTexts([["racecar", "hello", "level", "hello"]], 1);
assert.sameDeepOrderedMembers(result[0].repeatedPhrases, [1, 3]);
assert.sameDeepOrderedMembers(result[0].palindromeBreaks, [1, 3]);
```

`analyzeTexts`는 여러 텍스트를 처리하고 각각에 대한 결과를 반환해야 합니다.

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
