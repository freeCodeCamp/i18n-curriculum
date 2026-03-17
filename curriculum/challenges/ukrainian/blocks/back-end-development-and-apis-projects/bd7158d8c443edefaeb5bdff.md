---
id: bd7158d8c443edefaeb5bdff
title: Мікросервіс для аналізу заголовків запитів
challengeType: 4
forumTopicId: 301507
dashedName: request-header-parser-microservice
---

# --description--

Створіть повноцінний JavaScript-застосунок, який функціонально схожий на цей: <a href="https://request-header-parser-microservice.freecodecamp.rocks/" target="_blank" rel="noopener noreferrer nofollow">https://request-header-parser-microservice.freecodecamp.rocks/</a>. Робота над цим проєктом передбачає написання коду одним із таких способів:

-   Клонуйте <a href="https://github.com/freeCodeCamp/boilerplate-project-headerparser/" target="_blank" rel="noopener noreferrer nofollow">цей репозиторій на GitHub</a> і завершіть проєкт локально.
-   Використайте будь-який конструктор сайтів на свій вибір для завершення проєкту. Обов’язково включіть усі файли з нашого репозиторію на GitHub.

# --hints--

Ви маєте надати власний проєкт, а не приклад URL.

```js
  assert(
    !/.*\/request-header-parser-microservice\.freecodecamp\.rocks/.test(
      code
    )
  );
```

Запит до `/api/whoami` має повертати JSON-об’єкт із вашою IP-адресою у ключі `ipaddress`.

```js
  const response = await fetch(code + '/api/whoami');
  if (!response.ok) {
    throw new Error(await response.text());
  }
  const data = await response.json();
  assert(data.ipaddress && data.ipaddress.length > 0);
```

Запит до `/api/whoami` має повертати JSON-об’єкт із вашою мовою за замовчуванням у ключі `language`.

```js
  const response = await fetch(code + '/api/whoami');
  if (!response.ok) {
    throw new Error(await response.text());
  }
  const data = await response.json();
  assert(data.language && data.language.length > 0);
```

Запит до `/api/whoami` має повертати JSON-об’єкт із вашим програмним забезпеченням у ключі `software`.

```js
  const response = await fetch(code + '/api/whoami');
  if (!response.ok) {
    throw new Error(await response.text());
  }
  const data = await response.json();
  assert(data.software && data.software.length > 0);
```
