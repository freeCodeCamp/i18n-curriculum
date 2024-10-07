---
id: 587d7fb2367417b2b2512bf8
title: Daten aus POST-Anfragen abrufen
challengeType: 2
forumTopicId: 301511
dashedName: get-data-from-post-requests
---

# --description--

Mount a POST handler at the path `/name`. It’s the same path as before. We have prepared a form in the html frontpage. It will submit the same data of exercise 10 (Query string). If the body-parser is configured correctly, you should find the parameters in the object `req.body`. Have a look at the usual library example:

<blockquote>Route: POST '/library'<br>urlencoded_body: userId=546&#x26;bookId=6754 <br>req.body: {userId: '546', bookId: '6754'}</blockquote>

Antworte mit dem demselben JSON-Objekt wie zuvor: `{name: 'firstname lastname'}`. Teste, ob dein Endpunkt funktioniert, indem du das HTML-Formular verwendest, das wir auf der Startseite der App bereitgestellt haben.

Tipp: Es gibt außer GET und POST noch weitere http-Methoden. Es gibt eine Übereinstimmung zwischen dem http-Verb und der Operation, die du auf dem Server ausführen wirst. Die konventionelle Zuordnung ist:

POST (manchmal PUT) - Erstelle eine neue Ressource anhand mit der Anfrage übermittelten Daten,

GET - Auslesen vorhandener Ressource, ohne diese zu verändern

PUT oder PATCH (manchmal auch POST) - Aktualisieren einer Ressource anhand übermittelter Daten,

DELETE - Lösche eine Quelle.

Es gibt noch eine Reihe anderer Methoden, um eine Verbindung mit dem Server auszuhandeln. Except for GET, all the other methods listed above can have a payload (i.e. the data into the request body). Die Body-Parser-Middleware funktioniert mit diesen Methoden ebenfalls.

# --hints--

Test 1: Dein API-Endpunkt sollte mit dem richtigen Namen antworten

```js
(getUserInput) =>
  $.post(getUserInput('url') + '/name', { first: 'Mick', last: 'Jagger' }).then(
    (data) => {
      assert.equal(
        data.name,
        'Mick Jagger',
        'Test 1: "POST /name" route does not behave as expected'
      );
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

Test 2 : Dein API-Endpunkt sollte mit dem richtigen Namen antworten

```js
(getUserInput) =>
  $.post(getUserInput('url') + '/name', {
    first: 'Keith',
    last: 'Richards'
  }).then(
    (data) => {
      assert.equal(
        data.name,
        'Keith Richards',
        'Test 2: "POST /name" route does not behave as expected'
      );
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

