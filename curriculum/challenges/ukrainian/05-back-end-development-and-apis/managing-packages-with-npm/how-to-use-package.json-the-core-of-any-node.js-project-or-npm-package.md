---
id: 587d7fb3367417b2b2512bfb
title: 'Як використовувати package.json: ядро будь-якого проєкту Node.js або пакету npm'
challengeType: 2
forumTopicId: 301528
dashedName: how-to-use-package-json-the-core-of-any-node-js-project-or-npm-package
---

# --description--

Робота над цими завданнями передбачає написання коду за допомогою одного з наступних методів:

- Clone <a href="https://github.com/freeCodeCamp/boilerplate-npm/" target="_blank" rel="noopener noreferrer nofollow">this GitHub repo</a> and complete these challenges locally.
- Використовуйте конструктор сайту на власний розсуд, щоб завершити проєкт. Переконайтеся, що ви зберегли всі файли з нашого репозиторію GitHub.

Файл `package.json` є центром будь-якого проєкту Node.js або пакету npm. Він зберігає інформацію про проєкт. Він складається з одного об’єкту JSON, де зберігається інформація у парах ключ-значення. Лише два поля є обов’язковими: `name` та `version`, але краще надавати додаткову інформацію.

Файл `package.json` можна створити в терміналі за допомогою команди `npm init`. Вона запустить кероване налаштування. Щоб створити файл без зайвих запитань, використайте `npm init` з прапорцем `-y`: `npm init -y`.

Якщо глянути на дерево файлів вашого проєкту, то файл `package.json` буде зверху. Це файл, який ви будете покращуватись у наступних парах завдань.

Одне з найпоширеніших відомостей у цьому файлі є полем `author`. Він вказує на те, хто створив проект, і може складатися з рядка або об'єкта з контактом або іншими деталями. Об’єкт рекомендований для більших проєктів, але простий рядок, як наступний приклад, працюватиме для цього проєкту.

```json
"author": "Jane Doe",
```

# --instructions--

Додайте своє ім’я як `author` проєкту до файлу `package.json`.

**Примітка:** Пам'ятайте, що ви пишете JSON, бо всі назви полів повинні використовувати подвійні лапки (") і бути розділені комою (,).

# --hints--

`package.json` повинен мати дійсний ключ «author»

```js
fetch(code + '/_api/package.json')
  .then(response => response.json())
  .then(
    data => {
      assert.exists(data.author, '"author" is missing');
    },
    error => {
      throw new Error(error.message || error.responseText);
    }
  );
```
