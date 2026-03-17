---
id: bd7123c9c448eddfaeb5bdef
title: знайти довжину рядка
challengeType: 1
forumTopicId: 18182
dashedName: find-the-length-of-a-string
---

# --description--

Ви можете знайти довжину значення `String`, написавши `.length` після змінної рядка або літерала рядка.

```js
console.log("Alan Peter".length);
```

У консолі буде виведено значення `10`. Зверніть увагу, що пробіл між "Alan" і "Peter" також враховується.

Наприклад, якщо ми створили змінну `const firstName = "Ada"`, ми могли б дізнатися, якою є довжина рядка `Ada`, використовуючи властивість `firstName.length`.

# --instructions--

Використайте властивість `.length`, щоб присвоїти `lastNameLength` число символів у `lastName`.

# --hints--

Ви не повинні змінювати оголошення змінних у розділі `// Setup`.

```js
assert(
  __helpers.removeJSComments(code).match(/let lastNameLength = 0;/) &&
    __helpers.removeJSComments(code).match(/const lastName = "Lovelace";/)
);
```

`lastNameLength` має дорівнювати восьми.

```js
assert(typeof lastNameLength !== 'undefined' && lastNameLength === 8);
```

Ви повинні отримати довжину `lastName`, використовуючи `.length` ось так: `lastName.length`.

```js
assert(__helpers.removeJSComments(code).match(/=\s*lastName\.length/g) && !__helpers.removeJSComments(code).match(/lastName\s*=\s*8/));
```

# --seed--

## --seed-contents--

```js
// Setup
let lastNameLength = 0;
const lastName = "Lovelace";

// Only change code below this line
lastNameLength = lastName;
```

# --solutions--

```js
let lastNameLength = 0;
const lastName = "Lovelace";
lastNameLength = lastName.length;
```
