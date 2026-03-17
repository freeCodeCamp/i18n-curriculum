---
id: bd7158d8c443edefaeb5bdef
title: Мікросервіс часових позначок
challengeType: 4
forumTopicId: 301508
dashedName: timestamp-microservice
---

# --description--

Створіть повноцінний JavaScript-застосунок, який функціонально схожий на цей: <a href="https://timestamp-microservice.freecodecamp.rocks" target="_blank" rel="noopener noreferrer nofollow">https://timestamp-microservice.freecodecamp.rocks</a>. Робота над цим проєктом передбачає написання коду одним із таких способів:

-   Клонуйте <a href="https://github.com/freeCodeCamp/boilerplate-project-timestamp/"  target="_blank" rel="noopener noreferrer nofollow">цей репозиторій на GitHub</a> і завершіть проєкт локально.
-   Використайте будь-який конструктор сайтів на свій вибір для завершення проєкту. Обов’язково включіть усі файли з нашого репозиторію на GitHub.

**Примітка:** Конвертація часових поясів не є метою цього проєкту, тому припускайте, що всі надіслані дійсні дати будуть аналізуватися `new Date()` як дати в GMT. 

# --hints--

Ви повинні надати свій власний проєкт, а не приклад URL.

```js
  assert(
    !/.*\/timestamp-microservice\.freecodecamp\.rocks/.test(code)
  );
```

Запит до `/api/:date?` з дійсною датою має повертати JSON-об’єкт із ключем `unix`, який є Unix-часовою позначкою в мілісекундах (тип Number) для вхідної дати

```js
  const response = await fetch(code + '/api/2016-12-25');
  if (!response.ok) {
    throw new Error(await response.text());
  }
  const data = await response.json();
  assert.equal(
    data.unix,
    1482624000000,
    'Should be a valid unix timestamp'
  );
```

Запит до `/api/:date?` з дійсною датою має повертати JSON-об’єкт із ключем `utc`, який є рядком вхідної дати у форматі: `Thu, 01 Jan 1970 00:00:00 GMT`

```js
  const response = await fetch(code + '/api/2016-12-25');
  if (!response.ok) {
    throw new Error(await response.text());
  }
  const data = await response.json();
  assert.equal(
    data.utc,
    'Sun, 25 Dec 2016 00:00:00 GMT',
    'Should be a valid UTC date string'
  );
```

Запит до `/api/1451001600000` має повертати `{ unix: 1451001600000, utc: "Fri, 25 Dec 2015 00:00:00 GMT" }`

```js
  const response = await fetch(code + '/api/1451001600000');
  if (!response.ok) {
    throw new Error(await response.text());
  }
  const data = await response.json();
  assert(
    data.unix === 1451001600000 &&
      data.utc === 'Fri, 25 Dec 2015 00:00:00 GMT'
  );
```

Ваш проєкт має обробляти дати, які можна успішно аналізувати `new Date(date_string)`

```js
  const response = await fetch(code + '/api/05 October 2011, GMT');
  if (!response.ok) {
    throw new Error(await response.text());
  }
  const data = await response.json();
  assert(
    data.unix === 1317772800000 &&
      data.utc === 'Wed, 05 Oct 2011 00:00:00 GMT'
  );
```

Якщо рядок дати недійсний, API повертає об’єкт зі структурою `{ error : "Invalid Date" }`

```js
  const response = await fetch(code + '/api/this-is-not-a-date');
  if (response.ok) {
    const data = await response.json();
    assert.equal(data.error.toLowerCase(), 'invalid date');
  } else {
    const errorData = await response.json();
    assert(errorData.error.toLowerCase() === 'invalid date');
  }
```

Порожній параметр дати має повертати поточний час у JSON-об’єкті з ключем `unix`

```js
  const response = await fetch(code + '/api');
  if (!response.ok) {
    throw new Error(await response.text());
  }
  const data = await response.json();
  var now = Date.now();
  assert.approximately(data.unix, now, 20000);
```

Порожній параметр дати має повертати поточний час у JSON-об’єкті з ключем `utc`

```js
  const response = await fetch(code + '/api');
  if (!response.ok) {
    throw new Error(await response.text());
  }
  const data = await response.json();
  var now = Date.now();
  var serverTime = new Date(data.utc).getTime();
  assert.approximately(serverTime, now, 20000);
```
