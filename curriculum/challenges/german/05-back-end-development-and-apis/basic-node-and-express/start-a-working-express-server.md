---
id: 587d7fb0367417b2b2512bee
title: Starte einen funktionierenden Express-Server
challengeType: 2
forumTopicId: 301519
dashedName: start-a-working-express-server
---

# --description--

In the first two lines of the file `myApp.js`, you can see how easy it is to create an Express app object. This object has several methods, and you will learn many of them in these challenges. One fundamental method is `app.listen(port)`. It tells your server to listen on a given port, putting it in running state. For testing reasons, we need the app to be running in the background so we added this method in the `server.js` file for you.

Lass uns unseren ersten String erstellen! In Express verwenden Routen die folgende Struktur: `app.METHOD(PATH, HANDLER)`. METHOD ist eine HTTP-Methode in Kleinbuchstaben. PATH ist ein relativer Pfad auf deinem Server (kann sowohl String als auch regulärer Ausdruck sein). HANDLER ist eine von Express aufgerufene Funktion, wenn auf die Route zugegriffen wird. Handler werden über das Format `function(req, res) {...}` verwendet – req ist hier das Anfragen- und res das Antwortobjekt. So wird dieser Handler beispielsweise

```js
function(req, res) {
  res.send('Response String');
}
```

den String 'Response String' zurückgeben.

# --instructions--

Benutze die `app.get()`-Methode, um den String "Hello Express" an GET Anfragen zu erstellen, die mit `/` (Hauptverzeichnis) übereinstimmen. Vergewissere dich, dass dein Code funktioniert, indem du dir die Protokolle ansiehst, und sieh dir dann die Ergebnisse in der Vorschau an, wenn du Gitpod verwendest.

**Hinweis:** Der gesamte Code für diese Lektionen sollte zwischen den wenigen Codezeilen eingefügt werden, mit denen du angefangen hast.

# --hints--

Deine App sollte die Zeichenfolge "Hello Express" ausgeben

```js
(getUserInput) =>
  $.get(getUserInput('url')).then(
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

