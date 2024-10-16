---
id: 587d7dbf367417b2b2512bbc
title: Розділіть стилі на менші частини за допомогою часткових файлів
challengeType: 0
forumTopicId: 301459
dashedName: split-your-styles-into-smaller-chunks-with-partials
---

# --description--

<dfn>Partials</dfn> in Sass are separate files that hold segments of CSS code. These are imported and used in other Sass files. This is a great way to group similar code into a module to keep it organized.

Назва часткового файлу починається з підкреслення (`_`), що повідомляє Sass, що це малий сегмент CSS, який не потрібно конвертувати у файл CSS. Окрім того, файли Sass закінчуються розширенням `.scss`. Щоб перенести код з часткового файлу в інший файл Sass, використайте директиву `@import`.

Наприклад, якщо всі міксини збережено у частковому файлі «\_mixins.scss» та їх потрібно використати у файлі «main.scss», виконайте це:

```scss
@import 'mixins'
```

Зверніть увагу, що підкреслення та розширення не потрібні в інструкції `import`: Sass розуміє, що це частковий файл. Як тільки частковий файл імпортовано до файлу, то всі змінні, міксини та інший код доступні для використання.

# --instructions--

Напишіть інструкцію `@import`, щоб імпортувати частковий файл під назвою `_variables.scss` до файлу main.scss.

# --hints--

Ваш код має використати директиву `@import`, та не повинен містити підкреслення у назві файлу.

```js
assert(code.match(/@import\s+?('|")variables\1/gi));
```

# --seed--

## --seed-contents--

```html
<!-- The main.scss file -->
```

# --solutions--

```html
@import 'variables'
```
