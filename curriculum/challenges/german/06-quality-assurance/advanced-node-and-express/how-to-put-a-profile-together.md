---
id: 5895f70ef9fc0f352b528e6b
title: Wie man ein Profil zusammenstellt
challengeType: 2
forumTopicId: 301554
dashedName: how-to-put-a-profile-together
---

# --description--

Now that you can ensure the user accessing the `/profile` is authenticated, you can use the information contained in `req.user` on your page.

Übergebe ein Objekt, das die Eigenschaft `username` und den Wert von `req.user.username` enthält, als zweites Argument für die Methode `render` der Profilansicht.

Gehe dann zu deiner `profile.pug`-Ansicht und füge die folgende Zeile unter dem vorhandenen `h1`-Element hinzu, und zwar auf der gleichen Einrückungsebene:

```pug
h2.center#welcome Welcome, #{username}!
```

Dies erstellt ein `h2`-Element mit der Klasse `center` und id `welcome`, das den Text `Welcome,` gefolgt vom Benutzernamen enthält.

Füge außerdem in `profile.pug` einen Link hinzu, der auf die `/logout`-Route verweist, der die Logik hostet, um die Authentifizierung eines Benutzers rückgängig zu machen:

```pug
a(href='/logout') Logout
```

Reiche deine Seite ein, wenn du davon ausgehst, alles richtig gemacht zu haben. Wenn du auf Fehler stößt, kannst du <a href="https://forum.freecodecamp.org/t/advanced-node-and-express/567135#how-to-put-a-profile-together-9" target="_blank" rel="noopener noreferrer nofollow">das bis zu diesem Punkt abgeschlossene Projekt überprüfen</a>.

# --hints--

Du solltest eine Pug-Render-Variable zu `/profile` hinzufügen.

```js
async (getUserInput) => {
  const url = new URL("/_api/server.js", getUserInput("url"));
  const res = await fetch(url);
  const data = await res.text();
  assert.match(
    data,
    /username:( |)req.user.username/,
    'You should be passing the variable username with req.user.username into the render function of the profile page'
  );
}
```

