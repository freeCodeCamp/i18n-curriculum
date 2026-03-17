---
id: bd7123c9c549eddfaeb5bdef
title: Використовуйте дужкову нотацію, щоб знайти перший символ у рядку
challengeType: 1
forumTopicId: 18341
dashedName: use-bracket-notation-to-find-the-first-character-in-a-string
---

# --description--

<dfn>Дужкова нотація</dfn> — це спосіб отримати символ за певним індексом у рядку.

Більшість сучасних мов програмування, як-от JavaScript, не починають рахувати з 1, як це роблять люди. Вони починають з 0. Це називається <dfn>індексацією, починаючи з нуля</dfn>.

Наприклад, символ з індексом 0 у слові `Charles` — це `C`. Тож якщо `const firstName = "Charles"`, ви можете отримати значення першої літери рядка, використовуючи `firstName[0]`.

Приклад:

```js
const firstName = "Charles";
const firstLetter = firstName[0];
```

`firstLetter` матиме значення рядка `C`.

# --instructions--

Використайте дужкову нотацію, щоб знайти перший символ у змінній `lastName` і призначте його `firstLetterOfLastName`.

**Підказка:** Якщо застрягли, спробуйте подивитися на приклад вище.

# --hints--

Змінна `firstLetterOfLastName` має містити значення `L`.

```js
assert(firstLetterOfLastName === 'L');
```

Вам слід використати дужкову нотацію.

```js
assert(__helpers.removeJSComments(code).match(/firstLetterOfLastName\s*=\s*lastName\s*\[\s*\d\s*\]/));
```

# --seed--

## --seed-contents--

```js
// Setup
let firstLetterOfLastName = "";
const lastName = "Lovelace";

// Only change code below this line
firstLetterOfLastName = lastName; // Change this line
```

# --solutions--

```js
let firstLetterOfLastName = "";
const lastName = "Lovelace";

// Only change code below this line
firstLetterOfLastName = lastName[0];
```
