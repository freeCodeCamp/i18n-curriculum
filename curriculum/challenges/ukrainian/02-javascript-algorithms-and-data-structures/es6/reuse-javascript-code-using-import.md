---
id: 587d7b8c367417b2b2512b55
title: Повторне використання коду JavaScript за допомогою import
challengeType: 1
forumTopicId: 301208
dashedName: reuse-javascript-code-using-import
---

# --description--

`import` allows you to choose which parts of a file or module to load. In the previous lesson, the examples exported `add` from the `math_functions.js` file. Here's how you can import it to use in another file:

```js
import { add } from './math_functions.js';
```

`import` знайде `add` у `math_functions.js` та імпортує саме цю функцію, а решту проігнорує. `./` повідомляє імпорту, щоб він знайшов файл `math_functions.js` у тій же папці, де знаходиться поточний файл. При використанні імпорту таким чином необхідні відносний шлях до файлу (`./`) та розширення файлу (`.js`).

Ви можете імпортувати декілька елементів з файлу, додавши їх до інструкції `import`:

```js
import { add, subtract } from './math_functions.js';
```

# --instructions--

Додайте відповідну інструкцію `import`, яка дозволить поточному файлу використовувати функції `uppercaseString` та `lowercaseString`, які ви експортували в попередньому завданні. Ці функції знаходяться у файлі під назвою `string_functions.js`, який знаходиться в тій самій директорії, що і поточний файл.

# --hints--

Ви повинні правильно імпортувати `uppercaseString`.

```js
assert(
  __helpers.removeJSComments(code).match(
    /import\s*{\s*(uppercaseString[^}]*|[^,]*,\s*uppercaseString\s*)}\s+from\s+('|")\.\/string_functions\.js\2/g
  )
);
```

Ви повинні правильно імпортувати `lowercaseString`.

```js
assert(
  __helpers.removeJSComments(code).match(
    /import\s*{\s*(lowercaseString[^}]*|[^,]*,\s*lowercaseString\s*)}\s+from\s+('|")\.\/string_functions\.js\2/g
  )
);
```

# --seed--

## --seed-contents--

```js

// Only change code above this line

uppercaseString("hello");
lowercaseString("WORLD!");
```

# --solutions--

```js
import { uppercaseString, lowercaseString } from './string_functions.js';

uppercaseString("hello");
lowercaseString("WORLD!");
```
