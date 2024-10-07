---
id: 587d7fb1367417b2b2512bf3
title: Implementiere eine Anfragenlogger-Middleware auf Hauptverzeichnisebene
challengeType: 2
forumTopicId: 301514
dashedName: implement-a-root-level-request-logger-middleware
---

# --description--

Earlier, you were introduced to the `express.static()` middleware function. Now it’s time to see what middleware is, in more detail. Middleware functions are functions that take 3 arguments: the request object, the response object, and the next function in the application’s request-response cycle. These functions execute some code that can have side effects on the app, and usually add information to the request or response objects. They can also end the cycle by sending a response when some condition is met. If they don’t send the response when they are done, they start the execution of the next function in the stack. This triggers calling the 3rd argument, `next()`.

Sieh dir das folgende Beispiel an:

```js
function(req, res, next) {
  console.log("I'm a middleware...");
  next();
}
```

Nehmen wir an, du hast diese Funktion für eine bestimmte Route aufgesetzt. Wenn eine Anfrage mit der Route übereinstimmt, wird der String “I’m a middleware…” ausgegeben, anschließend wird die nächste Funktion der Reihe ausgeführt. In dieser Übung erfährst du, wie du Middleware auf Hauptverzeichnisebene kreierst. Wie du in Aufgabe 4 erfahren hast, kannst du, um eine Middleware auf Hauptverzeichnisebene aufzusetzen, die Methode `app.use(<mware-function>)` verwenden. In diesem Fall wird die Funktion für alle Anfragen ausgeführt – du kannst jedoch auch spezifischere Bedingungen einstellen. Willst du beispielsweise eine Funktion ausschließlich für POST-Anfragen ausführen, könntest du `app.post(<mware-function>)` verwenden. Analoge Methoden existieren für alle HTTP-Verben (GET, DELETE, PUT, ...).

# --instructions--

Baue einen einfachen Logger. Für jede Anfrage sollte ein String folgenden Formats geloggt werden: `method path - ip`. Hier ein Beispiel dazu: `GET /json - ::ffff:127.0.0.1`. Achte hierbei auf das Leerzeichen zwischen `method` und `path` und, dass der Bindestrich, der `path` und `ip` trennt, auf beiden Seiten ein Leerzeichen hat. Du kannst sowohl Anfragemethode (HTTP-Verb) als auch den relativen Routenpfad und die IP des Anfragenden dem Anfrageobjekt über `req.method`, `req.path` und `req.ip` entnehmen. Achte darauf, `next()` aufzurufen, sobald du fertig bist – sonst steckt dein Server hier für immer fest. Du solltest zudem 'Logs' geöffnet haben, um zu sehen, was passiert, wenn eine Anfrage eintrifft.

**Hinweis:** Express bearbeitet Funktionen in der Reihenfolge, in der sie im Code auftauchen. Das trifft auch auf Middleware zu. Möchtest du, dass dies für alle Routen funktioniert, solltest du diese zuvor aufsetzen.

# --hints--

Logger-Middleware auf Hauptverzeichnisebene sollte aktiv sein

```js
(getUserInput) =>
  $.get(getUserInput('url') + '/_api/root-middleware-logger').then(
    (data) => {
      assert.isTrue(
        data.passed,
        'root-level logger is not working as expected'
      );
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

