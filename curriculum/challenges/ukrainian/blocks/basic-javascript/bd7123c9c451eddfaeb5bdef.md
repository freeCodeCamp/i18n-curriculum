---
id: bd7123c9c451eddfaeb5bdef
title: "Використовуйте дужкову нотацію, щоб знайти останній символ у рядку"
challengeType: 1
forumTopicId: 18342
dashedName: use-bracket-notation-to-find-the-last-character-in-a-string
---

# --description--

Щоб отримати останню літеру рядка, можна відняти одиницю від довжини рядка.

Наприклад, якщо `const firstName = "Ada"`, ви можете отримати значення останньої літери рядка, використовуючи `firstName[firstName.length - 1]`.

Приклад:

```js
const firstName = "Ada";
const lastLetter = firstName[firstName.length - 1];
```

`lastLetter` матиме значення рядка `a`.

# --instructions--

Використайте <dfn>дужкову нотацію</dfn>, щоб знайти останній символ у змінній `lastName`.

**Підказка:** Якщо застрягли, спробуйте подивитися на приклад вище.

# --hints--

`lastLetterOfLastName` має бути літерою `e`.

```js
assert(lastLetterOfLastName === 'e');
```

Вам слід використати `.length`, щоб отримати останню літеру.

```js
assert(__helpers.removeJSComments(code).match(/\.length/g).length > 0);
```

# --seed--

## --seed-contents--

```js
// Setup
const lastName = "Lovelace";

// Only change code below this line
const lastLetterOfLastName = lastName; // Change this line
```

# --solutions--

```js
const lastName = "Lovelace";
const lastLetterOfLastName = lastName[lastName.length - 1];
```
