---
id: bd7158d8c443edefaeb5bd0e
title: Мікросервіс скорочування URL-адрес
challengeType: 4
forumTopicId: 301509
dashedName: url-shortener-microservice
---

# --description--

Створіть повний пакет додатку на JavaScript, який функціонально схожий до цього:<a href="https://url-shortener-microservice.freecodecamp.rocks" target="_blank" rel="noopener noreferrer nofollow">https://url-shortener-microservice.freecodecamp.rocks</a>. Робота над цим проєктом передбачає написання коду за допомогою одного з наступних методів:

-   Clone <a href="https://github.com/freeCodeCamp/boilerplate-project-urlshortener/" target="_blank" rel="noopener noreferrer nofollow">this GitHub repo</a> and complete your project locally.
-   Use <a href="https://gitpod.io/?autostart=true#https://github.com/freeCodeCamp/boilerplate-project-urlshortener/" target="_blank" rel="noopener noreferrer nofollow">our Gitpod starter project</a> to complete your project. Learn <a href="https://forum.freecodecamp.org/t/how-to-use-gitpod-in-the-curriculum/668669#how-can-i-share-my-workspace-to-get-help-8" target="_blank" rel="noopener noreferrer nofollow">how to share your Gitpod workspace to get help</a>.
-   Використовуйте конструктор сайту на власний розсуд, щоб завершити проєкт. Переконайтеся, що ви зберегли всі файли з нашого репозиторію GitHub.

# --instructions--

**ПІДКАЗКА:** не забудьте використати проміжне програмне забезпечення для обробки запитів POST. Також ви можете використати функцію `dns.lookup(host, cb)` з основного модуля `dns`, щоб перевірити надіслану URL-адресу.

# --hints--

Вам необхідно вказати свій власний проєкт, а не приклад URL-адреси.

```js
  assert(
    !/.*\/url-shortener-microservice\.freecodecamp\.rocks/.test(
      code
    )
  );
```

Ви можете опублікувати URL-адресу на `/api/shorturl` та отримати відповідь JSON із властивостями `original_url` та `short_url`. Ось приклад: `{ original_url : 'https://freeCodeCamp.org', short_url : 1}`

```js
async () => {
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
};
```

При відвідуванні `/api/shorturl/<short_url>` вас буде перенаправлено на вихідну URL-адресу.

```js
async () => {
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
};
```

Якщо ви передасте недійсну URL-адресу, яка не відповідає дійсному формату `http://www.example.com`, то відповідь JSON міститиме `{ error: 'invalid url' }`

```js
async () => {
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
};
```

