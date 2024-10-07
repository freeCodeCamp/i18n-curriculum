---
id: 589fc831f9fc0f352b528e75
title: Kommunizieren durch Emittieren
challengeType: 2
forumTopicId: 301550
dashedName: communicate-by-emitting
---

# --description--

<dfn>Emit</dfn> is the most common way of communicating you will use. When you emit something from the server to 'io', you send an event's name and data to all the connected sockets. A good example of this concept would be emitting the current count of connected users each time a new user connects!

Füge zunächst eine Variable hinzu, um die Benutzer zu verfolgen, und zwar kurz vor der Stelle, an der du gerade auf Verbindungen wartest.

```js
let currentUsers = 0;
```

Wenn sich nun jemand verbindet, solltest du den Zähler vor dem Emittieren erhöhen. Deshalb solltest du den Zuwachszähler innerhalb des Verbindungs-Listeners hinzufügen.

```js
++currentUsers;
```

Schließlich, nachdem du die Anzahl erhöht hast, solltest du das Ereignis emittieren (noch innerhalb des Verbindung-Listeners). Das Ereignis sollte 'user count' heißen und die Daten sollten einfach `currentUsers` sein.

```js
io.emit('user count', currentUsers);
```

Jetzt kannst du deinem Client die Möglichkeit geben, auf dieses Ereignis zu warten! Ähnlich wie beim Warten auf eine Verbindung zum Server, verwendest du das keyword `on`.

```js
socket.on('user count', function(data) {
  console.log(data);
});
```

Versuche nun, deine App zu laden, authentifiziere dich, und du solltest in deiner Client-Konsole eine '1' sehen, die die aktuelle Anzahl der Benutzer darstellt! Versuche mehr Clients zu laden und zu authentifizieren, um zu sehen, ob die Nummer ansteigt.

Reiche deine Seite ein, wenn du davon ausgehst, alles richtig gemacht zu haben. Wenn du auf Fehler stößt, kannst du <a href="https://forum.freecodecamp.org/t/advanced-node-and-express/567135#communicate-by-emitting-7" target="_blank" rel="noopener noreferrer nofollow">das bis zu diesem Punkt abgeschlossene Projekt überprüfen</a>.

# --hints--

`currentUsers` sollte definiert werden.

```js
async (getUserInput) => {
  const url = new URL("/_api/server.js", getUserInput("url"));
  const res = await fetch(url);
  const data = await res.text();
  assert.match(
    data,
    /currentUsers/s,
    'You should have variable currentUsers defined'
  );
}
```

Der Server soll die aktuelle Benutzeranzahl bei jeder neuen Verbindung ausgeben.

```js
async (getUserInput) => {
  const url = new URL("/_api/server.js", getUserInput("url"));
  const res = await fetch(url);
  const data = await res.text();
  assert.match(
    data,
    /io.emit.*('|")user count('|").*currentUsers/s,
    'You should emit "user count" with data currentUsers'
  );
}
```

Dein Client sollte auf das `'user count'`-Ereignis warten.

```js
async (getUserInput) => {
  const url = new URL("/public/client.js", getUserInput("url"));
  const res = await fetch(url);
  const data = await res.text();
  assert.match(
    data,
    /socket.on.*('|")user count('|")/s,
    'Your client should be connection to server with the connection defined as socket'
  );
}
```

