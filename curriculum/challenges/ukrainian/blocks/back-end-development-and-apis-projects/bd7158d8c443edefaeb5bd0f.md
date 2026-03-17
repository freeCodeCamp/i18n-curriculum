---
id: bd7158d8c443edefaeb5bd0f
title: Мікросервіс метаданих файлу
challengeType: 4
forumTopicId: 301506
dashedName: file-metadata-microservice
---

# --description--

Створіть повноцінний JavaScript-застосунок, який функціонально схожий на цей: <a href="https://file-metadata-microservice.freecodecamp.rocks" target="_blank" rel="noopener noreferrer nofollow">https://file-metadata-microservice.freecodecamp.rocks</a>. Робота над цим проєктом передбачає написання коду одним із таких способів:

-   Клонуйте <a href="https://github.com/freeCodeCamp/boilerplate-project-filemetadata/" target="_blank" rel="noopener noreferrer nofollow">цей репозиторій GitHub</a> і завершіть проєкт локально.
-   Використайте будь-який конструктор сайтів на свій вибір для завершення проєкту. Обов’язково включіть усі файли з нашого репозиторію GitHub.

# --instructions--

**ПІДКАЗКА:** Ви можете використовувати пакет npm `multer` для обробки завантаження файлів.

# --hints--

Ви повинні надати свій власний проєкт, а не приклад URL.

```js
  assert(
    !/.*\/file-metadata-microservice\.freecodecamp\.rocks/.test(
      code
    )
  );
```

Ви можете відправити форму, яка містить завантаження файлу.

```js
  const site = await fetch(code);
  const data = await site.text();
  const doc = new DOMParser().parseFromString(data, 'text/html');
  assert(doc.querySelector('input[type="file"]'));
```

Поле введення файлу у формі має атрибут `name`, встановлений у `upfile`.

```js
  const site = await fetch(code);
  const data = await site.text();
  const doc = new DOMParser().parseFromString(data, 'text/html');
  assert(doc.querySelector('input[name="upfile"]'));
```

Коли ви відправляєте файл, отримуєте `name`, `type` і `size` файлу в байтах у JSON-відповіді.

```js
  const formData = new FormData();
  const fileData = await fetch(
    'https://cdn.freecodecamp.org/weather-icons/01d.png'
  );
  const file = await fileData.blob();
  formData.append('upfile', file, 'icon');
  const data = await fetch(code + '/api/fileanalyse', {
    method: 'POST',
    body: formData
  });
  const parsed = await data.json();
  assert.property(parsed, 'size');
  assert.equal(parsed.name, 'icon');
  assert.equal(parsed.type, 'image/png');
```
