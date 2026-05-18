---
id: 69dd63d1dcdeccb7b39ba4c3
title: Jenga chombo cha ukaguzi wa makosa ya maandishi
challengeType: 26
dashedName: build-a-proofreading-tool
---

# --description--

Katika maabara hii, utajenga chombo cha ukaguzi wa makosa ya maandishi kinachochambua safu za maneno kwa ajili ya palindromu na misemo inayojirudia.

Palindrome ni neno linalosomwa sawa mbele na nyuma. Kwa mfano, `"racecar"` na `"level"` ni palindromu, lakini `"hello"` siyo.

Usemi ni mfululizo wa maneno yanayofuata mfululizo. Kwa mfano, katika `["the", "cat", "sat", "the", "cat"]`, usemi `"the cat"` (mfululizo wa maneno 2) unaonekana katika nafasi za 0 na 3.

**Lengo:** Timiza hadithi za watumizi zilizo hapa chini na upite mitihani yote ili kumaliza maabara hii.

**Hadithi za watumizi:**

1. Unapaswa kufafanua kitendakazi kinachoitwa `isPalindrome` kinachopokea mfuatano wa herufi wa `word` kama hoja yake. Kitendakazi hicho kinapaswa kurudisha `true` ikiwa neno linasomwa sawa mbele na nyuma (bila kujali herufi kubwa au ndogo), na `false` vinginevyo.

2. Unapaswa kufafanua kitendakazi kinachoitwa `findPalindromeBreaks` kinachopokea safu ya data ya `words` kama hoja yake. Kitendakazi hicho kinapaswa kurudisha safu ya vielezo vya maneno ambayo si palindromu. Kitapaswa kurudisha safu tupu ikiwa ingizo ni tupu.

3. Unapaswa kufafanua kitendakazi kinachoitwa `findRepeatedPhrases` kinachopokea safu ya data ya `words` na nambari ya `phraseLength` kama hoja zake. Kitendakazi hicho kinapaswa kurudisha safu ya vielezo vyote vya kuanzia ambapo mfululizo wa maneno `phraseLength` unaofuata mfululizo huonekana zaidi ya mara moja katika safu — ikiwa ni pamoja na kielezo cha tukio la kwanza. Kitapaswa kurudisha safu tupu ikiwa `phraseLength` ni kubwa au sawa na urefu wa `words`.

4. Unapaswa kufafanua kitendakazi kinachoitwa `analyzeTexts` kinachopokea safu ya data ya `texts` na nambari ya `phraseLength` kama hoja zake. Kitendakazi hicho kinapaswa kushughulikia kila kipengele cha `texts` (kila kikiwa safu ya maneno) na kurudisha safu ya vitu, kila kikiwa na vigezo vya `repeatedPhrases` na `palindromeBreaks`. Kitapaswa kurudisha safu tupu ikiwa `texts` ni tupu.

# --hints--

`isPalindrome` inapaswa kuwa kitendakazi.

```js
assert.isFunction(isPalindrome);
```

`isPalindrome` inapaswa kurudisha `true` kwa palindromu.

```js
assert.isTrue(isPalindrome("racecar"));
assert.isTrue(isPalindrome("a"));
```

`isPalindrome` inapaswa kurudisha `true` bila kujali herufi kubwa au ndogo.

```js
assert.isTrue(isPalindrome("Level"));
```

`isPalindrome` inapaswa kurudisha `false` kwa si palindromu.

```js
assert.isFalse(isPalindrome("hello"));
```

`findPalindromeBreaks` inapaswa kuwa kitendakazi.

```js
assert.isFunction(findPalindromeBreaks);
```

`findPalindromeBreaks` inapaswa kurudisha safu tupu kwa ingizo tupu.

```js
assert.sameDeepOrderedMembers(findPalindromeBreaks([]), []);
```

`findPalindromeBreaks` inapaswa kurudisha vielezo vya si palindromu.

```js
assert.sameDeepOrderedMembers(findPalindromeBreaks(["racecar", "hello", "level"]), [1]);
```

`findPalindromeBreaks` inapaswa kurudisha safu tupu wakati maneno yote ni palindromu.

```js
assert.sameDeepOrderedMembers(findPalindromeBreaks(["racecar", "level", "aba"]), []);
```

`findRepeatedPhrases` inapaswa kuwa kitendakazi.

```js
assert.isFunction(findRepeatedPhrases);
```

`findRepeatedPhrases` inapaswa kurudisha safu tupu wakati `phraseLength` ni kubwa au sawa na urefu wa `words`.

```js
assert.sameDeepOrderedMembers(findRepeatedPhrases(["the", "cat"], 2), []);
```

`findRepeatedPhrases` inapaswa kurudisha safu tupu wakati `phraseLength` ni kubwa kuliko urefu wa `words`.

```js
assert.sameDeepOrderedMembers(findRepeatedPhrases(["the"], 2), []);
```

`findRepeatedPhrases` inapaswa kurudisha vielezo vyote vya kuanzia ambapo usemi unajirudia, ikiwa ni pamoja na tukio la kwanza.

```js
assert.sameDeepOrderedMembers(findRepeatedPhrases(["the", "cat", "sat", "the", "cat"], 2), [0, 3]);
```

`analyzeTexts` inapaswa kuwa kitendakazi.

```js
assert.isFunction(analyzeTexts);
```

`analyzeTexts` inapaswa kurudisha safu tupu kwa ingizo tupu.

```js
assert.sameDeepOrderedMembers(analyzeTexts([], 2), []);
```

`analyzeTexts` vitu vya matokeo vinapaswa kuwa na vigezo vya `repeatedPhrases` na `palindromeBreaks`.

```js
const result = analyzeTexts([["racecar", "hello"]], 2);
assert.property(result[0], "repeatedPhrases");
assert.property(result[0], "palindromeBreaks");
```

`analyzeTexts` inapaswa kujumlisha matokeo kwa usahihi kwa kila maandishi.

```js
const result = analyzeTexts([["racecar", "hello", "level", "hello"]], 1);
assert.sameDeepOrderedMembers(result[0].repeatedPhrases, [1, 3]);
assert.sameDeepOrderedMembers(result[0].palindromeBreaks, [1, 3]);
```

`analyzeTexts` inapaswa kushughulikia maandishi mengi na kurudisha matokeo kwa kila moja.

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
