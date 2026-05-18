---
id: 69dd63d1dcdeccb7b39ba4c3
title: Створіть інструмент для редагування тексту
challengeType: 26
dashedName: build-a-proofreading-tool
---

# --description--

У цій лабораторній роботі ви створите інструмент для редагування тексту, який аналізує масиви слів на наявність паліндромів і повторюваних фраз.

Паліндром — це слово, яке читається однаково вперед і назад. Наприклад, `"racecar"` і `"level"` є паліндромами, а `"hello"` — ні.

Фраза — це послідовність підряд ідущих слів. Наприклад, у `["the", "cat", "sat", "the", "cat"]` фраза `"the cat"` (послідовність із 2 слів) зустрічається на позиціях 0 і 3.

**Мета:** Виконайте наведені нижче історії користувача та пройдіть усі тести, щоб завершити лабораторну роботу.

**Історії користувача:**

1. Ви повинні визначити функцію з ім’ям `isPalindrome`, яка приймає рядок `word` як аргумент. Вона має повертати `true`, якщо слово читається однаково вперед і назад (без урахування регістру), інакше — `false`.

2. Ви повинні визначити функцію з ім’ям `findPalindromeBreaks`, яка приймає масив `words` як аргумент. Вона має повертати масив індексів слів, які не є паліндромами. Якщо вхідні дані порожні, має повертатися порожній масив.

3. Ви повинні визначити функцію з ім’ям `findRepeatedPhrases`, яка приймає масив `words` і число `phraseLength` як аргументи. Вона має повертати масив усіх початкових індексів, де послідовність із `phraseLength` підряд ідущих слів зустрічається в масиві більше одного разу — включно з індексом першої появи. Якщо `phraseLength` більше або дорівнює довжині `words`, має повертатися порожній масив.

4. Ви повинні визначити функцію з ім’ям `analyzeTexts`, яка приймає масив `texts` і число `phraseLength` як аргументи. Вона має обробити кожен елемент `texts` (кожен — масив слів) і повернути масив об’єктів, кожен з яких має властивості `repeatedPhrases` і `palindromeBreaks`. Якщо `texts` порожній, має повертатися порожній масив.

# --hints--

`isPalindrome` має бути функцією.

```js
assert.isFunction(isPalindrome);
```

`isPalindrome` має повертати `true` для паліндрома.

```js
assert.isTrue(isPalindrome("racecar"));
assert.isTrue(isPalindrome("a"));
```

`isPalindrome` має повертати `true` незалежно від регістру.

```js
assert.isTrue(isPalindrome("Level"));
```

`isPalindrome` має повертати `false` для не паліндрома.

```js
assert.isFalse(isPalindrome("hello"));
```

`findPalindromeBreaks` має бути функцією.

```js
assert.isFunction(findPalindromeBreaks);
```

`findPalindromeBreaks` має повертати порожній масив для порожніх вхідних даних.

```js
assert.sameDeepOrderedMembers(findPalindromeBreaks([]), []);
```

`findPalindromeBreaks` має повертати індекси не паліндромів.

```js
assert.sameDeepOrderedMembers(findPalindromeBreaks(["racecar", "hello", "level"]), [1]);
```

`findPalindromeBreaks` має повертати порожній масив, коли всі слова є паліндромами.

```js
assert.sameDeepOrderedMembers(findPalindromeBreaks(["racecar", "level", "aba"]), []);
```

`findRepeatedPhrases` має бути функцією.

```js
assert.isFunction(findRepeatedPhrases);
```

`findRepeatedPhrases` має повертати порожній масив, коли `phraseLength` більше або дорівнює довжині `words`.

```js
assert.sameDeepOrderedMembers(findRepeatedPhrases(["the", "cat"], 2), []);
```

`findRepeatedPhrases` має повертати порожній масив, коли `phraseLength` більше довжини `words`.

```js
assert.sameDeepOrderedMembers(findRepeatedPhrases(["the"], 2), []);
```

`findRepeatedPhrases` має повертати всі початкові індекси, де фраза повторюється, включно з першою появою.

```js
assert.sameDeepOrderedMembers(findRepeatedPhrases(["the", "cat", "sat", "the", "cat"], 2), [0, 3]);
```

`analyzeTexts` має бути функцією.

```js
assert.isFunction(analyzeTexts);
```

`analyzeTexts` має повертати порожній масив для порожніх вхідних даних.

```js
assert.sameDeepOrderedMembers(analyzeTexts([], 2), []);
```

`analyzeTexts` об’єкти результатів мають мати властивості `repeatedPhrases` і `palindromeBreaks`.

```js
const result = analyzeTexts([["racecar", "hello"]], 2);
assert.property(result[0], "repeatedPhrases");
assert.property(result[0], "palindromeBreaks");
```

`analyzeTexts` має правильно агрегувати результати для кожного тексту.

```js
const result = analyzeTexts([["racecar", "hello", "level", "hello"]], 1);
assert.sameDeepOrderedMembers(result[0].repeatedPhrases, [1, 3]);
assert.sameDeepOrderedMembers(result[0].palindromeBreaks, [1, 3]);
```

`analyzeTexts` має обробляти кілька текстів і повертати результат для кожного.

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
