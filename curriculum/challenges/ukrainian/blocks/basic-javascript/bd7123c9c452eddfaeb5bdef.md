---
id: bd7123c9c452eddfaeb5bdef
title: "Використовуйте дужкову нотацію, щоб знайти N-й з кінця символ у рядку"
challengeType: 1
forumTopicId: 18344
dashedName: use-bracket-notation-to-find-the-nth-to-last-character-in-a-string
---

# --description--

Ви можете використати той самий принцип, який ми щойно застосували для отримання останнього символу в рядку, щоб отримати N-й з кінця символ.

Наприклад, ви можете отримати значення третьої з кінця літери рядка `const firstName = "Augusta"`, використовуючи `firstName[firstName.length - 3]`

Приклад:

```js
const firstName = "Augusta";
const thirdToLastLetter = firstName[firstName.length - 3];
```

`thirdToLastLetter` матиме значення рядка `s`.

# --instructions--

Використайте <dfn>дужкову нотацію</dfn>, щоб знайти передостанній символ у рядку `lastName`.

**Підказка:** Спробуйте подивитися на приклад вище, якщо застрягнете.

# --hints--

`secondToLastLetterOfLastName` має бути літерою `c`.

```js
assert(secondToLastLetterOfLastName === 'c');
```

Ви повинні використати `.length`, щоб отримати передостанню літеру.

```js
assert(__helpers.removeJSComments(code).match(/\.length/g).length > 0);
```

# --seed--

## --seed-contents--

```js
// Setup
const lastName = "Lovelace";

// Only change code below this line
const secondToLastLetterOfLastName = lastName; // Change this line
```

# --solutions--

```js
const lastName = "Lovelace";
const secondToLastLetterOfLastName = lastName[lastName.length - 2];
```
