---
id: 587d8249367417b2b2512c3e
title: Вимкніть кешування на стороні клієнта за допомогою helmet.noCache()
challengeType: 2
forumTopicId: 301576
dashedName: disable-client-side-caching-with-helmet-nocache
---

# --description--

As a reminder, this project is being built upon the following starter project on <a href="https://gitpod.io/?autostart=true#https://github.com/freeCodeCamp/boilerplate-infosec/" target="_blank" rel="noopener noreferrer nofollow">Gitpod</a>, or cloned from <a href="https://github.com/freeCodeCamp/boilerplate-infosec/" target="_blank" rel="noopener noreferrer nofollow">GitHub</a>. Learn <a href="https://forum.freecodecamp.org/t/how-to-use-gitpod-in-the-curriculum/668669#how-can-i-share-my-workspace-to-get-help-8" target="_blank" rel="noopener noreferrer nofollow">how to share your Gitpod workspace to get help</a>.

Якщо ви випускаєте оновлення для свого вебсайту і хочете, щоб користувачі завжди завантажували новішу версію, ви можете (спробувати) вимкнути кешування в їхньому браузері. У розробці це також може бути корисним. Кешування має переваги продуктивності, які ви втратите. Тому використовуйте цей варіант лише в разі потреби.

# --instructions--

Використайте метод `helmet.noCache()` на своєму сервері.

# --hints--

Проміжне ПЗ helmet.noCache() повинне бути встановлене правильно

```js
  $.get(code + '/_api/app-info').then(
    (data) => {
      assert.include(data.appStack, 'nocache');
      assert.equal(
        data.headers['cache-control'],
        'no-store, no-cache, must-revalidate, proxy-revalidate'
      );
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

