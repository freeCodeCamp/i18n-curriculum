---
id: 587d7fb0367417b2b2512bf0
title: Servire Risorse Statiche
challengeType: 2
forumTopicId: 301518
dashedName: serve-static-assets
---

# --description--

An HTML server usually has one or more directories that are accessible by the user. You can place there the static assets needed by your application (stylesheets, scripts, images).

In Express, puoi mettere in atto questa funzionalità usando il middleware `express.static(path)`, dove il parametro `path` è il percorso assoluto della cartella contenente le risorse.

Se non sai cosa è un middleware... non ti preoccupare, ne discuteremo in dettaglio più tardi. Fondamentalmente, i middleware sono funzioni che intercettano i gestori delle rotte, aggiungendo un certo tipo di informazioni. Un middleware deve essere montato usando il metodo `app.use(path, middlewareFunction)`. Il primo argomento `path` è facoltativo. Se non viene passato, il middleware verrà eseguito per tutte le richieste.

# --instructions--

Monta il middleware `express.static()` sul percorso `/public` con `app.use()`. Il percorso assoluto della cartella asset è `__dirname + /public`.

Ora la tua app dovrebbe essere in grado di servire un foglio di stile CSS. Nota che il file `/public/style.css` è referenziato nel `/views/index.html` nel codice standard. Adesso la tua pagina principale dovrebbe avere un aspetto un po' migliore!

# --hints--

La tua app dovrebbe servire i file di risorsa dalla directory `/public` al percorso `/public`

```js
(getUserInput) =>
  $.get(getUserInput('url') + '/public/style.css').then(
    (data) => {
      assert.match(
        data,
        /body\s*\{[^\}]*\}/,
        'Your app does not serve static assets'
      );
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

La tua app non dovrebbe servire file da nessun'altra cartella ad eccezione della directory `/public`

```js
(getUserInput) =>
  $.get(getUserInput('url') + '/server.js').then(
    (data) => {
       assert.equal(
        data?.status + '',
        404 + '',
        'Your app must serve files only from "public" directory'
      );
    },
    (xhr) => {
      assert.equal(
        xhr?.status + '',
        404 + '',
        'Your app must serve files only from "public" directory'
      );
    }
  );
```

