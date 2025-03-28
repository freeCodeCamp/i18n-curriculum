---
id: 587d7fb0367417b2b2512bef
title: Servir um arquivo HTML
challengeType: 2
forumTopicId: 301516
dashedName: serve-an-html-file
---

# --description--

You can respond to requests with a file using the `res.sendFile(path)` method. You can put it inside the `app.get('/', ...)` route handler. Behind the scenes, this method will set the appropriate headers to instruct your browser on how to handle the file you want to send, according to its type. Then it will read and send the file. This method needs an absolute file path. We recommend you to use the Node global variable `__dirname` to calculate the path like this:

```js
absolutePath = __dirname + '/relativePath/file.ext'
```

# --instructions--

Envie o arquivo `/views/index.html` como uma resposta para solicitações de GET para o caminho `/`. Ao ver sua aplicação ao vivo, você deverá perceber um grande título em HTML (e um formulário, que usaremos mais tarde…), sem nenhum estilo aplicado.

**Observação:** você pode editar a solução do desafio anterior ou criar uma nova. Se você criar uma nova solução, tenha em mente que o Express avalia rotas de cima para baixo e executa o manipulador para a primeira correspondência. Você tem que deixar comentada a solução anterior, ou o servidor continuará respondendo com uma string.

# --hints--

O aplicativo deve servir o arquivo views/index.html

```js
  $.get(code).then(
    (data) => {
      assert.match(
        data,
        /<h1>.*<\/h1>/,
        'Your app does not serve the expected HTML'
      );
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

