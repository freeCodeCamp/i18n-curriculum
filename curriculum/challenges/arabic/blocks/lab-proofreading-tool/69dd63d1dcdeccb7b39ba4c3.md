---
id: 69dd63d1dcdeccb7b39ba4c3
title: بناء أداة مراجعة
challengeType: 26
dashedName: build-a-proofreading-tool
---

# --description--

في هذا المختبر، ستبني أداة مراجعة تحلل مصفوفات من الكلمات للكشف عن الكلمات المتناظرة والعبارات المكررة.

الكلمة المتناظرة هي كلمة تُقرأ نفسها من الأمام إلى الخلف. على سبيل المثال، `"racecar"` و`"level"` هما كلمتان متناظرتان، لكن `"hello"` ليست كذلك.

العبارة هي متتالية من الكلمات المتتالية. على سبيل المثال، في `["the", "cat", "sat", "the", "cat"]`، تظهر العبارة `"the cat"` (متتالية من كلمتين) في المواضع 0 و3.

**الهدف:** نفذ قصص المستخدم أدناه واجعل جميع الاختبارات تنجح لإكمال المختبر.

**قصص المستخدم:**

1. يجب أن تعرف دالة باسم `isPalindrome` تأخذ سلسلة نصية `word` كمعلمتها. يجب أن تُرجع `true` إذا كانت الكلمة تُقرأ نفسها من الأمام إلى الخلف (بغض النظر عن حالة الأحرف)، و`false` خلاف ذلك.

2. يجب أن تعرف دالة باسم `findPalindromeBreaks` تأخذ مصفوفة `words` كمعلمتها. يجب أن تُرجع مصفوفة من الفهارس للكلمات التي ليست متناظرة. يجب أن تُرجع مصفوفة فارغة إذا كان المُدخل فارغًا.

3. يجب أن تعرف دالة باسم `findRepeatedPhrases` تأخذ مصفوفة `words` ورقم `phraseLength` كمعلمتين. يجب أن تُرجع مصفوفة بكل فهارس البداية حيث تظهر متتالية من `phraseLength` كلمة متتالية أكثر من مرة في المصفوفة — بما في ذلك فهرس الظهور الأول. يجب أن تُرجع مصفوفة فارغة إذا كان `phraseLength` أكبر من أو يساوي طول `words`. يجب أيضًا احتساب المتتاليات المتداخلة.

4. يجب أن تعرف دالة باسم `analyzeTexts` تأخذ مصفوفة `texts` ورقم `phraseLength` كمعلمتين. يجب أن تعالج كل عنصر من `texts` (كل منها مصفوفة كلمات) وتُرجع مصفوفة من الكائنات، كل منها يحتوي على خاصيتي `repeatedPhrases` و`palindromeBreaks`. يجب أن تُرجع مصفوفة فارغة إذا كانت `texts` فارغة.

# --hints--

يجب أن تكون `isPalindrome` دالة.

```js
assert.isFunction(isPalindrome);
```

يجب أن تُرجع `isPalindrome` القيمة `true` للكلمة المتناظرة.

```js
assert.isTrue(isPalindrome("racecar"));
assert.isTrue(isPalindrome("a"));
```

يجب أن تُرجع `isPalindrome` القيمة `true` بغض النظر عن حالة الأحرف.

```js
assert.isTrue(isPalindrome("Level"));
```

يجب أن تُرجع `isPalindrome` القيمة `false` للكلمة غير المتناظرة.

```js
assert.isFalse(isPalindrome("hello"));
```

يجب أن تكون `findPalindromeBreaks` دالة.

```js
assert.isFunction(findPalindromeBreaks);
```

يجب أن تُرجع `findPalindromeBreaks` مصفوفة فارغة عند إدخال فارغ.

```js
assert.sameDeepOrderedMembers(findPalindromeBreaks([]), []);
```

يجب أن تُرجع `findPalindromeBreaks` فهارس الكلمات غير المتناظرة.

```js
assert.sameDeepOrderedMembers(findPalindromeBreaks(["racecar", "hello", "level"]), [1]);
```

يجب أن تُرجع `findPalindromeBreaks` مصفوفة فارغة عندما تكون كل الكلمات متناظرة.

```js
assert.sameDeepOrderedMembers(findPalindromeBreaks(["racecar", "level", "aba"]), []);
```

يجب أن تكون `findRepeatedPhrases` دالة.

```js
assert.isFunction(findRepeatedPhrases);
```

يجب أن تُرجع `findRepeatedPhrases` مصفوفة فارغة عندما يكون `phraseLength` أكبر من أو يساوي طول `words`.

```js
assert.sameDeepOrderedMembers(findRepeatedPhrases(["the", "cat"], 2), []);
```

يجب أن تُرجع `findRepeatedPhrases` مصفوفة فارغة عندما يكون `phraseLength` أكبر من طول `words`.

```js
assert.sameDeepOrderedMembers(findRepeatedPhrases(["the"], 2), []);
```

يجب أن تُرجع `findRepeatedPhrases` كل فهارس البداية حيث تتكرر العبارة، بما في ذلك الظهور الأول.

```js
assert.sameDeepOrderedMembers(findRepeatedPhrases(["the", "cat", "sat", "the", "cat"], 2), [0, 3]);
```

يجب أن تُرجع `findRepeatedPhrases` كل فهارس البداية للعبارات المتكررة المتداخلة.

```js
assert.sameDeepOrderedMembers(findRepeatedPhrases(["ba", "ba", "ba"], 2), [0, 1]);
```

يجب أن تكون `analyzeTexts` دالة.

```js
assert.isFunction(analyzeTexts);
```

يجب أن تُرجع `analyzeTexts` مصفوفة فارغة عند إدخال فارغ.

```js
assert.sameDeepOrderedMembers(analyzeTexts([], 2), []);
```

يجب أن تحتوي كائنات نتائج `analyzeTexts` على خاصيتي `repeatedPhrases` و`palindromeBreaks`.

```js
const result = analyzeTexts([["racecar", "hello"]], 2);
assert.property(result[0], "repeatedPhrases");
assert.property(result[0], "palindromeBreaks");
```

يجب أن تجمع `analyzeTexts` النتائج بشكل صحيح لكل نص.

```js
const result = analyzeTexts([["racecar", "hello", "level", "hello"]], 1);
assert.sameDeepOrderedMembers(result[0].repeatedPhrases, [1, 3]);
assert.sameDeepOrderedMembers(result[0].palindromeBreaks, [1, 3]);
```

يجب أن تعالج `analyzeTexts` عدة نصوص وتُرجع نتيجة لكل منها.

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
