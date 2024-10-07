---
id: 587d7fb1367417b2b2512bf1
title: Bereitstellen von JSON auf einer bestimmten Route
challengeType: 2
forumTopicId: 301517
dashedName: serve-json-on-a-specific-route
---

# --description--

While an HTML server serves HTML, an API serves data. A <dfn>REST</dfn> (REpresentational State Transfer) API allows data exchange in a simple way, without the need for clients to know any detail about the server. The client only needs to know where the resource is (the URL), and the action it wants to perform on it (the verb). The GET verb is used when you are fetching some information, without modifying anything. These days, the preferred data format for moving information around the web is JSON. Simply put, JSON is a convenient way to represent a JavaScript object as a string, so it can be easily transmitted.

Lass uns eine einfache API erstellen, indem wir eine JSON zurückgebende Route unter dem Pfad `/json` erstellen. Du kannst das – wie immer – mit der `app.get()`-Methode machen. Benutze innerhalb des Route-Handlers die Methode `res.json()`, und übergebe ihr ein Objekt als Argument. Diese Methode schließt die Anfrage-Antwort-Schleife und gibt die Daten zurück. Hinter den Kulissen wird hierbei ein gültiges JavaScript-Objekt in einen String konvertiert, anschließend werden die entsprechenden Header gesetzt, um deinen Browser mitzuteilen, dass du JSON-Daten lieferst – danach werden die Daten zurückgegeben. Ein gültiges Objekt hat die bekannte Struktur `{key: data}`. `data` kann hierbei eine Nummer, ein String, ein verschachteltes Objekt oder ein Array sein. `data` kann auch eine Variable, oder das Ergebnis eines Function-Calls sein, in diesem Fall werden die Daten vor Umwandlung in einen String überprüft.

# --instructions--

Liefere das Objekt `{"message": "Hello json"}` im JSON-Format als Antwort, um GET-Anfragen der `/json`-Route zu beantworten. Wenn du anschließend mit deinem Browser `your-app-url/json` aufrufst, solltest du die Nachricht auf deinem Bildschirm sehen.

# --hints--

Der Endpunkt `/json` sollte das JSON-Objekt `{"message": "Hello json"}` liefern

```js
(getUserInput) =>
  $.get(getUserInput('url') + '/json').then(
    (data) => {
      assert.equal(
        data.message,
        'Hello json',
        "The '/json' endpoint does not serve the right data"
      );
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

