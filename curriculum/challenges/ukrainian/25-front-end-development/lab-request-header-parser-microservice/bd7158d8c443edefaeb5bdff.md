---
id: bd7158d8c443edefaeb5bdff
title: Build a Request Header Parser Microservice
challengeType: 4
dashedName: lab-request-header-parser-microservice
---

# --description--

Створіть повний пакет застосунку JavaScript, який функціонально схожий до цього: <a href="https://request-header-parser-microservice.freecodecamp.rocks/" target="_blank" rel="noopener noreferrer nofollow"> https://request-header-parser-microservice.freecodecamp.rocks </a>. Робота над цим проєктом передбачає написання коду за допомогою одного з наступних методів:

-   Clone <a href="https://github.com/freeCodeCamp/boilerplate-project-headerparser/" target="_blank" rel="noopener noreferrer nofollow">this GitHub repo</a> and complete your project locally.
-   Використайте <a href="https://gitpod.io/?autostart=true#https://github.com/freeCodeCamp/boilerplate-project-headerparser/" target="_blank" rel="noopener noreferrer nofollow">наш стартовий проєкт Gitpod</a>, щоб виконати свій проєкт.
-   Використовуйте конструктор сайту на власний розсуд, щоб завершити проєкт. Переконайтеся, що ви зберегли всі файли з нашого репозиторію GitHub.

# --hints--

Ви повинні надати власний проєкт, а не приклад URL-адреси.

```js
(getUserInput) => {
  assert(
    !/.*\/request-header-parser-microservice\.freecodecamp\.rocks/.test(
      getUserInput('url')
    )
  );
};
```

Запит до `/api/whoami` повинен повернути об’єкт JSON з вашою IP-адресою у ключі `ipaddress`.

```js
(getUserInput) =>
  $.get(getUserInput('url') + '/api/whoami').then(
    (data) => assert(data.ipaddress && data.ipaddress.length > 0),
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

Запит до `/api/whoami` повинен повернути об’єкт JSON з вашою бажаною мовою у ключі `language`.

```js
(getUserInput) =>
  $.get(getUserInput('url') + '/api/whoami').then(
    (data) => assert(data.language && data.language.length > 0),
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

Запит до `/api/whoami` повинен повернути об’єкт JSON з вашим програмним забезпеченням у ключі `software`.

```js
(getUserInput) =>
  $.get(getUserInput('url') + '/api/whoami').then(
    (data) => assert(data.software && data.software.length > 0),
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

