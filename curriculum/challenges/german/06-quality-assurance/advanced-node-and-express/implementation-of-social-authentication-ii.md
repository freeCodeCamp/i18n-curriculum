---
id: 589a69f5f9fc0f352b528e71
title: Einführung der sozialen Authentifizierung II
challengeType: 2
forumTopicId: 301557
dashedName: implementation-of-social-authentication-ii
---

# --description--

The last part of setting up your GitHub authentication is to create the strategy itself. `passport-github@~1.1.0` has already been added as a dependency, so require it in your `auth.js` file as `GitHubStrategy` like this: `const GitHubStrategy = require('passport-github').Strategy;`. Do not forget to require and configure `dotenv` to use your environment variables.

Um die GitHub-Strategie einzurichten, müssen Sie Pass anweisen, eine instanziierte `GitHubStrategie` zu verwenden, die 2 Argumente akzeptiert: ein Objekt (mit `clientID`, `clientSecret` und `RückrufURL)` und eine Funktion, die aufgerufen werden soll, wenn ein Benutzer erfolgreich authentifiziert wird, wodurch bestimmt wird, ob der Benutzer neu ist und welche Felder zunächst im Datenbankobjekt des Benutzers gespeichert werden sollen. Dies ist bei vielen Strategien üblich, aber einige erfordern möglicherweise mehr Informationen, wie in der GitHub-README-Datei dieser spezifischen Strategie beschrieben. Google verlangt zum Beispiel auch einen *scope*, der festlegt, welche Art von Informationen übermittelt werden sollen, und den Nutzer bittet, diesen Zugriff zu genehmigen.

Die aktuelle Strategie, die du implementierst, authentifiziert Benutzer mit einem GitHub-Konto und OAuth 2.0-Tokens. Die erhaltene Kunden-ID und der geheime Schlüssel beim Erstellen einer Anwendung werden angegeben als Optionen beim Erstellen der Strategie. Die Strategie erfordert auch ein `verify` Callback, das den Access-Token und optionalen Refresh-Token erhält sowie `profile`, der das authentifizierte GitHub Nutzer-Profil enthält. Der `verify` Callback muss `cb` aufrufen, der einen Benutzer zur Verfügung stellt, um die Authentifizierung abzuschließen.

So sollte deine neue Strategie zu diesem Zeitpunkt aussehen:

```js
passport.use(new GitHubStrategy({
  clientID: process.env.GITHUB_CLIENT_ID,
  clientSecret: process.env.GITHUB_CLIENT_SECRET,
  callbackURL: /*INSERT CALLBACK URL ENTERED INTO GITHUB HERE*/
},
  function(accessToken, refreshToken, profile, cb) {
    console.log(profile);
    //Database logic here with callback containing your user object
  }
));
```

Die Authentifizierung wird noch nicht erfolgreich sein und ohne die Datenbanklogik und den Rückruf einen Fehler auslösen, aber es sollte dein GitHub-Profil auf deiner Konsole protokollieren, wenn du es versuchest!

Reiche deine Seite ein, wenn du davon ausgehst, alles richtig gemacht zu haben. Wenn du auf Fehler stößt, kannst du <a href="https://forum.freecodecamp.org/t/advanced-node-and-express/567135#implementation-of-social-authentication-ii-4" target="_blank" rel="noopener noreferrer nofollow">das bis zu diesem Punkt abgeschlossene Projekt überprüfen</a>.

# --hints--

`passport-github` dependency should be added.

```js
async () => {
  const url = new URL("/_api/package.json", code);
  const res = await fetch(url);
  const packJson = await res.json();
  assert.property(
    packJson.dependencies,
    'passport-github',
    'Your project should list "passport-github" as a dependency'
  );
}
```

`passport-github` should be required.

```js
async () => {
  const url = new URL("/_api/auth.js", code);
  const res = await fetch(url);
  const data = await res.text();
  assert.match(
    data,
    /require.*("|')passport-github("|')/gi,
    'You should have required passport-github'
  );
}
```

Die GitHub-Strategie sollte bisher korrekt eingerichtet sein.

```js
async () => {
  const url = new URL("/_api/auth.js", code);
  const res = await fetch(url);
  const data = await res.text();
  assert.match(
    data,
    /passport\.use.*new GitHubStrategy/gis,
    'Passport should use a new GitHubStrategy'
  );
  assert.match(
    data,
    /callbackURL:\s*("|').*("|')/gi,
    'You should have a callbackURL'
  );
  assert.match(
    data,
    /process\.env(\.GITHUB_CLIENT_SECRET|\[(?<q>"|')GITHUB_CLIENT_SECRET\k<q>\])/g,
    'You should use process.env.GITHUB_CLIENT_SECRET'
  );
  assert.match(
    data,
    /process\.env(\.GITHUB_CLIENT_ID|\[(?<q>"|')GITHUB_CLIENT_ID\k<q>\])/g,
    'You should use process.env.GITHUB_CLIENT_ID'
  );
}
```
