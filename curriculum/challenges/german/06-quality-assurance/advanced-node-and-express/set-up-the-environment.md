---
id: 589fc830f9fc0f352b528e74
title: Einrichtung der Umgebung
challengeType: 2
forumTopicId: 301566
dashedName: set-up-the-environment
---

# --description--

The following challenges will make use of the `chat.pug` file. So, in your `routes.js` file, add a GET route pointing to `/chat` which makes use of `ensureAuthenticated`, and renders `chat.pug`, with `{ user: req.user }` passed as an argument to the response. Now, alter your existing `/auth/github/callback` route to set the `req.session.user_id = req.user.id`, and redirect to `/chat`.

Füge `socket.io@~2.3.0` als Abhängigkeit hinzu und fordere/instantiiere sie auf deinem Server wie folgt definiert an: `http` (wird mit Nodejs integriert):

```javascript
const http = require('http').createServer(app);
const io = require('socket.io')(http);
```

Jetzt wo der *http* Server in die *express app* eingebaut ist, musst du auf den *http* Server warten. Änder die Zeile mit `app.listen` zu `http.listen`.

Das Erste, was gemacht werden muss, ist, auf eine neue Verbindung zum Klienten zu hören. Das <dfn>on</dfn> Schlüsselwort tut nur das - auf ein spezifisches Ereignis warten. Es benötigt 2 Argumente: eine Zeichenfolge, die den Titel des Ereignisses enthält, und eine Funktion, mit der die Daten übergeben werden. Im Fall unseres Verbindungs-Listeners verwendest du `socket`, um die Daten im zweiten Argument zu definieren. Ein Socket ist ein individueller Klient, der verbunden ist.

Um auf Verbindungen zu deinem Server zu achten, füge folgendes in deine Datenbankverbindung hinzu:

```javascript
io.on('connection', socket => {
  console.log('A user has connected');
});
```

Damit der Klient eine Verbindung herstellen kann, musst du nur Folgendes in dein `client.js` einfügen, was von der Seite geladen wird, nachdem du dich authentifiziert hast:

```js
/*global io*/
let socket = io();
```

Der Kommentar unterdrückt den Fehler, den du normalerweise siehst, da 'io' in der Datei nicht definiert ist. Sie haben bereits ein zuverlässiges CDN zur Socket.IO-Bibliothek auf der Seite in `chat.pug` hinzugefügt.

Versuche nun, deine Anwendung zu laden und dich zu authentifizieren. In deiner Serverkonsole sollte `A user has connected` angezeigt werden.

**Hinweis:**`io()` funktioniert nur, wenn eine Verbindung zu einem Socket hergestellt wird, der auf der gleichen url/server betrieben wird. Für die Verbindung zu einem externen Socket, das an einem anderen Ort gehostet wird, verwendest du `io.connect('URL');`.

Reiche deine Seite ein, wenn du davon ausgehst, alles richtig gemacht zu haben. Wenn du auf Fehler stößt, kannst du <a href="https://forum.freecodecamp.org/t/advanced-node-and-express/567135#set-up-the-environment-6" target="_blank" rel="noopener noreferrer nofollow">das bis zu diesem Punkt abgeschlossene Projekt überprüfen</a>.

# --hints--

`socket.io` sollte eine Abhängigkeit sein.

```js
async () => {
  const url = new URL("/_api/package.json", code);
  const res = await fetch(url);
  const packJson = await res.json();
  assert.property(
    packJson.dependencies,
    'socket.io',
    'Your project should list "socket.io" as a dependency'
  );
}
```

Du solltest auf korrekte Art und Weise anfordern und instanziieren `http` als `http`.

```js
async () => {
  const url = new URL("/_api/server.js", code);
  const res = await fetch(url);
  const data = await res.text();
  assert.match(
    data,
    /http.*=.*require.*('|")http\1/s,
    'Your project should list "http" as a dependency'
  );
}
```

Du solltest auf korrekte Art und Weise anfordern und instanziieren `socket.io` als `io`.

```js
async () => {
  const url = new URL("/_api/server.js", code);
  const res = await fetch(url);
  const data = await res.text();
  assert.match(
    data,
    /io.*=.*require.*('|")socket.io\1.*http/s,
    'You should correctly require and instantiate socket.io as io.'
  );
}
```

Socket.IO sollte auf Verbindungen achten.

```js
async () => {
  const url = new URL("/_api/server.js", code);
  const res = await fetch(url);
  const data = await res.text();
  assert.match(
    data,
    /io.on.*('|")connection\1.*socket/s,
    'io should listen for "connection" and socket should be the 2nd arguments variable'
  );
}
```

Dein Klient sollte sich mit deinem Server verbinden.

```js
async () => {
  const url = new URL("/public/client.js", code);
  const res = await fetch(url);
  const data = await res.text();
  assert.match(
    data,
    /socket.*=.*io/s,
    'Your client should be connection to server with the connection defined as socket'
  );
}
```

