---
id: 587d7fb0367417b2b2512bf0
title: Bereitstellen von statischen Assets
challengeType: 2
forumTopicId: 301518
dashedName: serve-static-assets
---

# --description--

An HTML server usually has one or more directories that are accessible by the user. You can place there the static assets needed by your application (stylesheets, scripts, images).

Mit Express kannst du von dieser Funktion mit der Middleware `express.static(path)` Gebrauch machen – der `path`-Parameter ist hier der absolute Pfad, in dem sich die Assets befinden.

Wenn du nicht weißt, was Middleware ist... keine Sorge, wir werden das noch im Detail besprechen. Ganz allgemein sind Middleware Funktionen, die sich in Route-Handler zwischenschalten und Informationen hinzufügen. Eine Middleware wird mit der Methode `app.use(path, middlewareFunction)` aufgesetzt. Hierbei ist das erste `path`-Argument optional. Übergibst du dieses nicht, wird die Middleware für alle Anfragen ausgeführt.

# --instructions--

Setze eine `express.static()`-Middleware für den Pfad `/public` mit `app.use()` auf. Der absolute Pfad zum Assets-Ordner ist `__dirname + /public`.

Jetzt sollte deine Anwendung ein CSS-Stylesheet liefern können. Beachte, dass die `/public/style.css`-Datei in  der `/views/index.html` in der Projekt-Boilerplate verwendet wird. Nun sollte deine Startseite bereits ein wenig besser aussehen!

# --hints--

Deine Anwendung sollte Asset-Dateien des `/public`-Verzeichnisses an den `/public`-Pfad liefern

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

Deine Anwendung sollte keine Dateien aus anderen Ordnern bereitstellen, außer aus dem `/public`-Verzeichis

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

