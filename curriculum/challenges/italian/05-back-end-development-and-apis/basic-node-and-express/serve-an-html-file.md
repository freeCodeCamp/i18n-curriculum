---
id: 587d7fb0367417b2b2512bef
title: Servire un file HTML
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

Invia il file `/views/index.html` come risposta alle richieste GET al percorso `/`. Guardando la tua app live, dovresti vedere una grossa intestazione HTML (e un modulo, che useremo successivamente...) senza alcuno stile applicato.

**Nota:** Puoi modificare la soluzione della sfida precedente o crearne una nuova. Se crei una nuova soluzione, tieni presente che Express valuta i percorsi dall'alto verso il basso ed esegue il gestore alla prima corrispondenza. Dovrai commentare la soluzione precedente, o il server continuerà a rispondere con una stringa.

# --hints--

La tua app dovrebbe servire il file views/index.html

```js
(getUserInput) =>
  $.get(getUserInput('url')).then(
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

