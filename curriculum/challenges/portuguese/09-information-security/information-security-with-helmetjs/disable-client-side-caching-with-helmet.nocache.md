---
id: 587d8249367417b2b2512c3e
title: Desativar o cache do lado do client com helmet.noCache()
challengeType: 2
forumTopicId: 301576
dashedName: disable-client-side-caching-with-helmet-nocache
---

# --description--

As a reminder, this project is being built upon the following starter project on <a href="https://gitpod.io/?autostart=true#https://github.com/freeCodeCamp/boilerplate-infosec/" target="_blank" rel="noopener noreferrer nofollow">Gitpod</a>, or cloned from <a href="https://github.com/freeCodeCamp/boilerplate-infosec/" target="_blank" rel="noopener noreferrer nofollow">GitHub</a>. Learn <a href="https://forum.freecodecamp.org/t/how-to-use-gitpod-in-the-curriculum/668669#how-can-i-share-my-workspace-to-get-help-8" target="_blank" rel="noopener noreferrer nofollow">how to share your Gitpod workspace to get help</a>.

Se estiver lançando uma atualização para o seu site, e quiser que os usuários façam o download da versão mais recente, você pode (tentar) desabilitar o cache no navegador do client. Isso também pode ser útil para o desenvolvimento. O caching tem benefícios de desempenho, que você vai perder. Então, use esta opção apenas quando houver uma necessidade real.

# --instructions--

Use o método `helmet.noCache()` no seu servidor.

# --hints--

O middleware helmet.noCache() deve ser montado corretamente

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

