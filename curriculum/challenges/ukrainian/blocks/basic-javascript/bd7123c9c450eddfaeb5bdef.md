---
id: bd7123c9c450eddfaeb5bdef
title: "Використовуйте дужкову нотацію, щоб знайти n-й символ у рядку"
challengeType: 1
forumTopicId: 18343
dashedName: use-bracket-notation-to-find-the-nth-character-in-a-string
---

# --description--

Ви також можете використовувати <dfn>дужкову нотацію</dfn>, щоб отримати символ на інших позиціях у рядку.

Пам’ятайте, що комп’ютери починають рахувати з `0`, тому перший символ насправді є нульовим символом.

Приклад:

```js
const firstName = "Ada";
const secondLetterOfFirstName = firstName[1];
```

`secondLetterOfFirstName` матиме значення рядка `d`.

# --instructions--

Спробуйте встановити `thirdLetterOfLastName` рівним третій літері змінної `lastName` за допомогою дужкової нотації.

**Підказка:** Якщо застрягли, подивіться на приклад вище.

# --hints--

Змінна `thirdLetterOfLastName` має мати значення `v`.

```js
assert(thirdLetterOfLastName === 'v');
```

Ви маєте використовувати дужкову нотацію.

```js
assert(__helpers.removeJSComments(code).match(/thirdLetterOfLastName\s*=\s*lastName\s*\[\s*\d\s*\]/));
```

# --seed--

## --seed-contents--

```js
// Setup
const lastName = "Lovelace";

// Only change code below this line
const thirdLetterOfLastName = lastName; // Change this line
```

# --solutions--

```js
const lastName = "Lovelace";
const thirdLetterOfLastName = lastName[2];
```
