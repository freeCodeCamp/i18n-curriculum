---
id: 66edc31c44f1b9c1d5c5ebca
title: Тест на рядки JavaScript
challengeType: 8
dashedName: quiz-javascript-strings
---

# --description--

Щоб пройти тест, ви повинні правильно відповісти щонайменше на 18 із 20 питань нижче.

# --quizzes--

## --quiz--

### --question--

#### --text--

Яке повернене значення має метод `includes()`?

#### --distractors--

Якщо підрядок знайдено в рядку, метод повертає рядок. Інакше він повертає `undefined`.

---

Якщо підрядок знайдено в рядку, метод повертає `true`. Інакше він повертає порожній рядок.

---

Якщо підрядок знайдено в рядку, метод повертає рядок. Інакше він повертає `null`.

#### --answer--

Якщо підрядок знайдено в рядку, метод повертає `true`. Інакше він повертає `false`.

### --question--

#### --text--

Який варіант демонструє інтерполяцію рядка?

#### --distractors--

`"Hello, " + user + "!"`

---

`"Hello, $user!"`

---

`` `Hello, {user}!` ``

#### --answer--

`` `Hello, ${user}!` ``

### --question--

#### --text--

Який із наведених символів є символом нового рядка?

#### --distractors--

`\newline`

---

`\new`

---

`\line`

#### --answer--

`\n`

### --question--

#### --text--

Яке з наведених тверджень є правильним щодо рядків?

#### --distractors--

Рядки змінні і можуть бути змінені після створення.

---

Рядки є непримітивними типами даних.

---

Рядки можна створювати лише за допомогою одинарних лапок.

#### --answer--

Рядки є незмінними.

### --question--

#### --text--

Що означає ASCII?

#### --distractors--

American Standard Code for Internet Information

---

Advanced Systematic Code for Internal Interchange

---

Automatic Standard Code for Internal Information

#### --answer--

American Standard Code for Information Interchange

### --question--

#### --text--

Який із наведених методів витягує частину рядка і повертає новий рядок?

#### --distractors--

`trim()`

---

`indexOf()`

---

`prompt()`

#### --answer--

`slice()`

### --question--

#### --text--

Яка мета методу `prompt()`?

#### --distractors--

Він відображає повідомлення в консолі.

---

Він відображає вікно оповіщення з повідомленням.

---

Він відображає вікно підтвердження з повідомленням.

#### --answer--

Він відображає діалогове вікно, що очікує на введення користувача.

### --question--

#### --text--

Який із наведених способів є правильним для доступу до третього символу рядка?

#### --distractors--

```js
const developer = "Jessica";
developer[3];
```

---

```js
const developer = "Jessica";
developer[-1];
```

---

```js
const developer = "Jessica";
developer[0];
```

#### --answer--

```js
const developer = "Jessica";
developer[2];
```

### --question--

#### --text--

Як отримати ASCII-значення першого символу в рядку `"hello"`?

#### --distractors--

`"hello".charCode(0)`

---

`"hello".codeAt(0)`

---

`"hello".getCharIndex(0)`

#### --answer--

`"hello".charCodeAt(0)`

### --question--

#### --text--

Який метод можна використати, щоб отримати символ, що відповідає ASCII-значенню?

#### --distractors--

`toASCII()`

---

`toChar()`

---

`toCode()`

#### --answer--

`fromCharCode()`

### --question--

#### --text--

Який із наведених прикладів `indexOf` виведе `-1` у консоль?

#### --distractors--

```js
const organization = "freeCodeCamp";
console.log(organization.indexOf("e"));
```

---

```js
const organization = "freeCodeCamp";
console.log(organization.indexOf("f"));
```

---

```js
const organization = "freeCodeCamp";
console.log(organization.indexOf("C"));
```

#### --answer--

```js
const organization = "freeCodeCamp";
console.log(organization.indexOf("c"));
```

### --question--

#### --text--

Як перевірити, чи містить рядок `"JavaScript"` підрядок `"Script"`?

#### --distractors--

`"JavaScript".has("Script")`

---

`"JavaScript".contains("Script")`

---

`"JavaScript".exists("Script")`

#### --answer--

`"JavaScript".includes("Script")`

### --question--

#### --text--

Який із наведених варіантів витягує підрядок `"Script"` з рядка `"JavaScript"`?

#### --distractors--

`"JavaScript".find(5)`

---

`"JavaScript".extract(4)`

---

`"JavaScript".cut(5)`

#### --answer--

`"JavaScript".slice(4)`

### --question--

#### --text--

Як перетворити рядок `"JavaScript"` у верхній регістр?

#### --distractors--

`"JavaScript".upper()`

---

`"JavaScript".toUpper()`

---

`"JavaScript".convertUpper()`

#### --answer--

`"JavaScript".toUpperCase()`

### --question--

#### --text--

Як перетворити рядок `"JavaScript"` у нижній регістр?

#### --distractors--

`"JavaScript".lower()`

---

`"JavaScript".toLower()`

---

`"JavaScript".convertLower()`

#### --answer--

`"JavaScript".toLowerCase()`

### --question--

#### --text--

Що замінить `"dogs"` на `"cats"` у рядку `"I love dogs"`?

#### --distractors--

`"I love dogs".slice("dogs", "cats")`

---

`"I love dogs".replaceWith("dogs", "cats")`

---

`"I love dogs".find("dogs", "cats")`

#### --answer--

`"I love dogs".replace("dogs", "cats")`

### --question--

#### --text--

Який метод використовується для повторення рядка задану кількість разів?

#### --distractors--

`times()`

---

`repeatTimes()`

---

`repeatNumber()`

#### --answer--

`repeat()`

### --question--

#### --text--

Що поверне наступний код: `"abc".repeat(3)`?

#### --distractors--

`"abcabc"`

---

`"abcabcabcabc"`

---

Він викличе помилку.

#### --answer--

`"abcabcabc"`

### --question--

#### --text--

Який метод видаляє пробіли на початку та в кінці рядка?

#### --distractors--

`strip()`

---

`removeWhitespace()`

---

`trimWhitespace()`

#### --answer--

`trim()`

### --question--

#### --text--

Який із наведених варіантів є правильним синтаксисом для екранування лапок?

#### --distractors--

```js
"She said, ?"Hello!?""
```

---

```js
"She said, ."Hello!.""
```

---

```js
"She said, //"Hello!//""
```

#### --answer--

```js
"She said, \"Hello!\""
```
