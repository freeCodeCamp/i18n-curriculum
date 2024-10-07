---
id: 587d7fb1367417b2b2512bf2
title: Verwende .env-Dateien
challengeType: 2
forumTopicId: 301521
dashedName: use-the--env-file
---

# --description--

The `.env` file is a hidden file that is used to pass environment variables to your application. This file is secret, no one but you can access it, and it can be used to store data that you want to keep private or hidden. For example, you can store API keys from external services or your database URI. You can also use it to store configuration options. By setting configuration options, you can change the behavior of your application, without the need to rewrite some code.

Die Umgebungsvariablen sind innerhalb der App unter `process.env.VAR_NAME` aufrufbar. Das `process.env`-Objekt ist ein globales Node-Objekt, Variablen werden als Strings übergeben. Konventionell werden die Variablennamen alle in Großbuchstaben geschrieben, wobei die Wörter durch einen Unterstrich getrennt werden. `.env` ist eine Shell-Datei, somit musst du Namen oder Werte nicht in Anführungszeichen setzen. Es ist auch wichtig zu beachten, dass um das Gleichheitszeichen kein Leerzeichen stehen darf, wenn du deinen Variablen Werte zuordnest – `VAR_NAME=value`. Normalerweise wird jede Variablendefinition in eine eigene Zeile gesetzt.

# --instructions--

Lass uns eine Umgebungsvariable als Konfigurationsoption setzen.

Erstelle eine `.env`-Datei im Hauptverzeichnis deines Projekts, speichere in dieser anschließend die Variabel `MESSAGE_STYLE=uppercase`.

Greife nun in dem `/json`-GET-Route-Handler, den du in der letzten Aufgabe erstellt hast, auf`process.env.MESSAGE_STYLE` zu und verwandle das Antwort-Objekt der `message` in Großbuchstaben, wenn die Variable `uppercase` entspricht. Das Antwortobjekt sollte entweder `{"message": "Hello json"}` oder `{"message": "HELLO JSON"}` sein, je nachdem welchen Wert du für `MESSAGE_STYLE` gesetzt hast. Beachte, dass du den Wert von `process.env.MESSAGE_STYLE` **innerhalb** des Route-Handlers lesen musst, und nicht außerhalb. Aufgrund der Art und Weise wie unsere Tests laufen.

You will need to use the `dotenv` package. It loads environment variables from your `.env` file into `process.env`. The `dotenv` package has already been installed, and is in your project's `package.json` file. At the top of your `myApp.js` file, add `require('dotenv').config()` to load the environment variables.

# --hints--

The response of the endpoint `/json` should change according to the environment variable `MESSAGE_STYLE`

```js
(getUserInput) =>
  $.get(getUserInput('url') + '/_api/use-env-vars').then(
    (data) => {
      assert.isTrue(
        data.passed,
        'The response of "/json" does not change according to MESSAGE_STYLE'
      );
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

