---
id: 587d8247367417b2b2512c38
title: Знизьте ризик клікджекінгу за допомогою helmet.frameguard()
challengeType: 2
forumTopicId: 301582
dashedName: mitigate-the-risk-of-clickjacking-with-helmet-frameguard
---

# --description--

As a reminder, this project is being built upon the following starter project on <a href="https://gitpod.io/?autostart=true#https://github.com/freeCodeCamp/boilerplate-infosec/" target="_blank" rel="noopener noreferrer nofollow">Gitpod</a>, or cloned from <a href="https://github.com/freeCodeCamp/boilerplate-infosec/" target="_blank" rel="noopener noreferrer nofollow">GitHub</a>. Learn <a href="https://forum.freecodecamp.org/t/how-to-use-gitpod-in-the-curriculum/668669#how-can-i-share-my-workspace-to-get-help-8" target="_blank" rel="noopener noreferrer nofollow">how to share your Gitpod workspace to get help</a>.

Ваша сторінка може бути розміщена в `<frame>` або `<iframe>` без вашої згоди. Це може призвести до клікджекінгу, не враховуючи інших атак. Клікджекінг — це техніка обману користувача, при якій він взаємодіє не з тією сторінкою, про яку думає. Цього можна досягти завдяки оформленню вашої сторінки у зловмисному контексті, тобто iframing. Під контекстом мається на увазі, що хакер розміщує поверх вашої сторінки невидимий шар. Невидимі кнопки запускають ворожий скрипт. Це проміжне програмне забезпечення встановлює заголовок X-Frame-Options. Він обмежує дії хакерів, які можуть перенаправити вашу сторінку. Доступні три режими: DENY, SAMEORIGIN і ALLOW-FROM.

Немає потреби перенаправляти наш додаток.

# --instructions--

Використайте `helmet.frameguard()`, передавши з об’єктом конфігурації `{action: 'deny'}`.

# --hints--

Проміжне ПЗ helmet.frameguard() повинне бути встановлене правильно

```js
  $.get(code + '/_api/app-info').then(
    (data) => {
      assert.include(
        data.appStack,
        'frameguard',
        'helmet.frameguard() middleware is not mounted correctly'
      );
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

«action» helmet.frameguard() повинне бути встановленим на «DENY»

```js
  $.get(code + '/_api/app-info').then(
    (data) => {
      assert.property(data.headers, 'x-frame-options');
      assert.equal(data.headers['x-frame-options'], 'DENY');
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

