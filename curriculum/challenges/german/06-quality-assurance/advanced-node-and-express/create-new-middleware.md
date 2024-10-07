---
id: 5895f70df9fc0f352b528e6a
title: Neue Middleware erstellen
challengeType: 2
forumTopicId: 301551
dashedName: create-new-middleware
---

# --description--

As is, any user can just go to `/profile` whether they have authenticated or not by typing in the URL. You want to prevent this by checking if the user is authenticated first before rendering the profile page. This is the perfect example of when to create a middleware.

Die Herausforderung besteht darin, die Middleware-Funktion `ensureAuthenticated(req, res, next)` zu erstellen, die prüft, ob ein Benutzer authentifiziert ist, indem sie die `isAuthenticated`-Methode des Passports für den `request` aufruft, die prüft, ob `req.user` definiert ist. Wenn ja, dann sollte `next()` aufgerufen werden. Andernfalls kanns du einfach auf die Anfrage mit einer Weiterleitung zu deiner Homepage antworten, um sich anzumelden.

Eine Implementierung dieser Middleware ist:

```javascript
function ensureAuthenticated(req, res, next) {
  if (req.isAuthenticated()) {
    return next();
  }
  res.redirect('/');
};
```

Erstelle die obige Middleware-Funktion und übergebe dann `ensureAuthenticated` als Middleware an die Anfragen für die Profilseite vor dem Argument der GET-Anfrage:

```javascript
app
 .route('/profile')
 .get(ensureAuthenticated, (req,res) => {
    res.render('profile');
 });
```

Reiche deine Seite ein, wenn du davon ausgehst, alles richtig gemacht zu haben. Wenn du auf Fehler stößt, kannst du <a href="https://forum.freecodecamp.org/t/advanced-node-and-express/567135#create-new-middleware-8" target="_blank" rel="noopener noreferrer nofollow">das bis zu diesem Zeitpunkt abgeschlossene Projekt überprüfen</a>.

# --hints--

Die Middleware `ensureAuthenticated` sollte implementiert und mit der `/profile`-Route verbunden werden.

```js
async (getUserInput) => {
  const url = new URL("/_api/server.js", getUserInput("url"));
  const res = await fetch(url);
  const data = await res.text();
  assert.match(
    data,
    /ensureAuthenticated[^]*req.isAuthenticated/,
    'Your ensureAuthenticated middleware should be defined and utilize the req.isAuthenticated function'
  );
  assert.match(
    data,
    /profile[^]*get[^]*ensureAuthenticated/,
    'Your ensureAuthenticated middleware should be attached to the /profile route'
  );
}
```

Eine unautorisierte GET-Anfrage an `/profile` sollte korrekt zu `/` umgeleitet werden.

```js
async (getUserInput) => {
  const url = new URL("/profile", getUserInput("url"));
  const res = await fetch(url);
  const data = await res.text();
  assert.match(
    data,
    /Home page/,
    'An attempt to go to the profile at this point should redirect to the homepage since we are not logged in'
  );
}
```

