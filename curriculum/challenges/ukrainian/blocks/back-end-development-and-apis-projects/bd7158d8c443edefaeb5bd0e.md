---
id: bd7158d8c443edefaeb5bd0e
title: Мікросервіс скорочення URL
challengeType: 4
forumTopicId: 301509
dashedName: url-shortener-microservice
---

# --description--

Створіть повноцінний JavaScript-застосунок, який функціонально схожий на цей: <a href="https://url-shortener-microservice.freecodecamp.rocks" target="_blank" rel="noopener noreferrer nofollow">https://url-shortener-microservice.freecodecamp.rocks</a>. Робота над цим проєктом передбачає написання коду одним із таких способів:

-   Клонуйте <a href="https://github.com/freeCodeCamp/boilerplate-project-urlshortener/" target="_blank" rel="noopener noreferrer nofollow">цей репозиторій GitHub</a> і завершіть проєкт локально.
-   Використайте будь-який конструктор сайтів на свій вибір для завершення проєкту. Обов’язково включіть усі файли з нашого репозиторію GitHub.

# --instructions--

**ПІДКАЗКА:** Не забудьте використати підпрограмне забезпечення для парсингу тіла запитів, щоб обробляти POST-запити. Також ви можете використати функцію `dns.lookup(host, cb)` з основного модуля `dns` для перевірки надісланого URL.

# --hints--

Ви повинні надати свій власний проєкт, а не приклад URL.

```js
  assert(
    !/.*\/url-shortener-microservice\.freecodecamp\.rocks/.test(
      code
    )
  );
```

Ви можете надіслати POST-запит із URL на `/api/shorturl` і отримати JSON-відповідь із властивостями `original_url` та `short_url`. Ось приклад: `{ original_url : 'https://freeCodeCamp.org', short_url : 1}`

```js
  const url = code;
  const urlVariable = Date.now();
  const fullUrl = `${url}/?v=${urlVariable}`
  const res = await fetch(url + '/api/shorturl', {
    method: 'POST',
    headers: { 'Content-Type': 'application/x-www-form-urlencoded' },
    body: `url=${fullUrl}`
  });
  if (res.ok) {
    const { short_url, original_url } = await res.json();
    assert.isNotNull(short_url);
    assert.strictEqual(original_url, `${url}/?v=${urlVariable}`);
  } else {
    throw new Error(`${res.status} ${res.statusText}`);
  }
```

Коли ви відвідаєте `/api/shorturl/<short_url>`, вас буде перенаправлено на оригінальний URL.

```js
  const url = code;
  const urlVariable = Date.now();
  const fullUrl = `${url}/?v=${urlVariable}`
  let shortenedUrlVariable;
  const postResponse = await fetch(url + '/api/shorturl', {
    method: 'POST',
    headers: { 'Content-Type': 'application/x-www-form-urlencoded' },
    body: `url=${fullUrl}`
  });
  if (postResponse.ok) {
    const { short_url } = await postResponse.json();
    shortenedUrlVariable = short_url;
  } else {
    throw new Error(`${postResponse.status} ${postResponse.statusText}`);
  }
  const getResponse = await fetch(
    url + '/api/shorturl/' + shortenedUrlVariable
  );
  if (getResponse) {
    const { redirected, url } = getResponse;
    assert.isTrue(redirected);
    assert.strictEqual(url,fullUrl);
  } else {
    throw new Error(`${getResponse.status} ${getResponse.statusText}`);
  }
```

Якщо ви передасте недійсний URL, який не відповідає правильному формату `http://www.example.com`, у JSON-відповіді буде міститися `{ error: 'invalid url' }`

```js
  const url = code;
  const res = await fetch(url + '/api/shorturl', {
    method: 'POST',
    headers: { 'Content-Type': 'application/x-www-form-urlencoded' },
    body: `url=ftp:/john-doe.invalidTLD`
  });
  if (res.ok) {
    const { error } = await res.json();
    assert.isNotNull(error);
    assert.strictEqual(error.toLowerCase(), 'invalid url');
  } else {
    throw new Error(`${res.status} ${res.statusText}`);
  }
```
