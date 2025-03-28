---
id: 5895f70cf9fc0f352b528e65
title: Passport einrichten
challengeType: 2
forumTopicId: 301565
dashedName: set-up-passport
---

# --description--

It's time to set up *Passport* so you can finally start allowing a user to register or log in to an account. In addition to Passport, you will use Express-session to handle sessions. Express-session has a ton of advanced features you can use, but for now you are just going to use the basics. Using this middleware saves the session id as a cookie in the client, and allows us to access the session data using that id on the server. This way, you keep personal account information out of the cookie used by the client to tell to your server clients are authenticated and keep the *key* to access the data stored on the server.

`passport@~0.4.1` und `express-session@~1.17.1` sind bereits installiert und werden beide in deiner `package.json`-Datei als Abhängigkeiten angezeigt.

Du musst die Sitzungseinstellungen einrichten und Passport initialisieren. Erstelle zunächst die Variablen `session` und `passport`, um `express-session` bzw. `passport` erfordern.

Richte dann deine Express-Anwendung für die Verwendung der Sitzung ein, indem du die folgenden Optionen festlegst:

```javascript
app.use(session({
  secret: process.env.SESSION_SECRET,
  resave: true,
  saveUninitialized: true,
  cookie: { secure: false }
}));
```

Füge unbedingt `SESSION_SECRET` in deine `.env`-Datei ein und gib ihr einen Zufallswert. Dies wird verwendet, um den Hash zu berechnen, der zur Verschlüsselung deines Cookies verwendet wird!

Nachdem du all dies getan haben, weise deine Express-Anwendung an **use** `passport.initialize()` und `passport.session()`.

Reiche deine Seite ein, wenn du davon ausgehst, alles richtig gemacht zu haben. Wenn du auf Fehler stößt, kannst du <a href="https://forum.freecodecamp.org/t/advanced-node-and-express/567135#set-up-passport-3" target="_blank" rel="noopener noreferrer nofollow">das bis zu diesem Punkt abgeschlossene Projekt überprüfen</a>.

# --hints--

Passport und Express-Session sollten Abhängigkeiten sein.

```js
async () => {
  const url = new URL("/_api/package.json", code);
  const res = await fetch(url);
  const packJson = await res.json();
  assert.property(
    packJson.dependencies,
    'passport',
    'Your project should list "passport" as a dependency'
  );
  assert.property(
    packJson.dependencies,
    'express-session',
    'Your project should list "express-session" as a dependency'
  );
}
```

Die Abhängigkeiten sollten korrekt angegeben werden.

```js
async () => {
  const url = new URL("/_api/server.js", code);
  const res = await fetch(url);
  const data = await res.text();
  assert.match(
    data,
    /require.*("|')passport("|')/,
    'You should have required passport'
  );
  assert.match(
    data,
    /require.*("|')express-session("|')/,
    'You should have required express-session'
  );
}
```

Die Express-Anwendung sollte neue Abhängigkeiten verwenden.

```js
async () => {
  const url = new URL("/_api/server.js", code);
  const res = await fetch(url);
  const data = await res.text();
  assert.match(data, /passport\.initialize/, 'Your express app should use "passport.initialize()"');
  assert.match(data, /passport\.session/, 'Your express app should use "passport.session()"');
}
```

Die Sitzung und das Sitzungsgeheimnis sollten korrekt eingerichtet sein.

```js
async () => {
  const url = new URL("/_api/server.js", code);
  const res = await fetch(url);
  const data = await res.text();
  assert.match(
    data,
    /secret *:\s*process\.env(\.SESSION_SECRET|\[(?<q>"|')SESSION_SECRET\k<q>\])/,
    'Your express app should have express-session set up with your secret as process.env.SESSION_SECRET'
  );
}
```

