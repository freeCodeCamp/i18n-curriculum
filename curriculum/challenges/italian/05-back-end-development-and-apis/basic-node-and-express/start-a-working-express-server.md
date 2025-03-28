---
id: 587d7fb0367417b2b2512bee
title: Avviare un server Express funzionante
challengeType: 2
forumTopicId: 301519
dashedName: start-a-working-express-server
---

# --description--

In the first two lines of the file `myApp.js`, you can see how easy it is to create an Express app object. This object has several methods, and you will learn many of them in these challenges. One fundamental method is `app.listen(port)`. It tells your server to listen on a given port, putting it in running state. For testing reasons, we need the app to be running in the background so we added this method in the `server.js` file for you.

Serviamo la nostra prima stringa! In Express, le rotte hanno la seguente struttura: `app.METHOD(PATH, HANDLER)`. METHOD è un metodo http in minuscolo. PATH è un percorso relativo sul server (può essere una stringa, o anche un'espressione regolare). HANDLER è una funzione che Express chiama quando la rotta corrisponde. I gestori assumono la forma `function(req, res) {...}`, dove req è l'oggetto request (richiesta), e res è l'oggetto response (risposta). Ad esempio, il gestore

```js
function(req, res) {
  res.send('Response String');
}
```

servirà la stringa 'Response String'.

# --instructions--

Utilizza il metodo `app.get()` per servire la stringa "Hello Express" alle richieste GET corrispondenti al percorso `/` (root). Be sure that your code works by looking at the logs, then see the results in the preview if you are using Gitpod.

**Nota:** Tutto il codice per queste lezioni dovrebbe essere aggiunto tra le poche righe di codice di partenza.

# --hints--

La tua app dovrebbe servire la stringa 'Hello Express'

```js
  $.get(code).then(
    (data) => {
      assert.equal(
        data,
        'Hello Express',
        'Your app does not serve the text "Hello Express"'
      );
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

