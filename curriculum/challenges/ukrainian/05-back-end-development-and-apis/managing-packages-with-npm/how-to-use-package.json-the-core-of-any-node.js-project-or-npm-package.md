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
- Use <a href="https://gitpod.io/?autostart=true#https://github.com/freeCodeCamp/boilerplate-npm/" target="_blank" rel="noopener noreferrer nofollow">our Gitpod starter project</a> to complete these challenges. Learn <a href="https://forum.freecodecamp.org/t/how-to-use-gitpod-in-the-curriculum/668669#how-can-i-share-my-workspace-to-get-help-8" target="_blank" rel="noopener noreferrer nofollow">how to share your Gitpod workspace to get help</a>.
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

Якщо ви використовуєте Gitpod, то переконайтеся, що програма виконується, а вікно попереднього перегляду відкрите. Скопіюйте URL-адресу вікна попереднього перегляду та вставте її в полі «Посилання на розв’язок».

# --hints--

`package.json` повинен мати дійсний ключ «author»

```js
  $.get(code + '/_api/package.json').then(
    (data) => {
      var packJson = JSON.parse(data);
      assert(packJson.author, '"author" is missing');
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

