---
id: 587d7b8d367417b2b2512b59
title: Імпорт експорту за замовчуванням
challengeType: 1
forumTopicId: 301205
dashedName: import-a-default-export
---

# --description--

In the last challenge, you learned about `export default` and its uses. To import a default export, you need to use a different `import` syntax. In the following example, `add` is the default export of the `math_functions.js` file. Here is how to import it:

```js
import add from "./math_functions.js";
```

Є одна ключова відмінність синтаксису. Імпортоване значення `add` не обрамлене фігурними дужками (`{}`). `add` є простою назвою для будь-якого експорту за замовчуванням файлу `math_functions.js`. Ви можете використати будь-яку назву.

# --instructions--

У наступному коді імпортуйте експорт за замовчуванням з файлу `math_functions.js`, знайденого в тій же директорії, що й файл. Надайте імпорту назву `subtract`.

# --hints--

Ви повинні правильно імпортувати `subtract` з `math_functions.js`.

```js
assert(__helpers.removeJSComments(code).match(/import\s+subtract\s+from\s+('|")\.\/math_functions\.js\1/g));
```

# --seed--

## --seed-contents--

```js

// Only change code above this line

subtract(7,4);
```

# --solutions--

```js
import subtract from "./math_functions.js";

subtract(7,4);
```
