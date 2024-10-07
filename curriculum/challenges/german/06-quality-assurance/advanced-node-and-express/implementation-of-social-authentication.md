---
id: 589a69f5f9fc0f352b528e70
title: Implementierung von Soziale Authentifizierung
challengeType: 2
forumTopicId: 301559
dashedName: implementation-of-social-authentication
---

# --description--

The basic path this kind of authentication will follow in your app is:

1.  User clicks a button or link sending them to your route to authenticate using a specific strategy (e.g. GitHub).
2.  Ihre Route ruft `pass.beglaubigen('github') auf, wodurch sie zu GitHub` weitergeleitet werden.
3.  Die Seite, auf der der Benutzer auf GitHub landet, ermöglicht es ihm, sich anzumelden, falls er es noch nicht getan hat. Anschließend werden sie gebeten, den Zugriff auf ihr Profil über Ihre App zu genehmigen.
4.  Der Benutzer wird dann über eine bestimmte Callback-Url mit seinem Profil zu deiner App zurückgeführt, wenn er zugelassen wurde.
5.  Sie sind jetzt authentifiziert, und Ihre App sollte überprüfen, ob es sich um ein zurückgegebenes Profil handelt, oder es in Ihrer Datenbank speichern, wenn dies nicht der Fall ist.

Strategien mit OAuth erfordern, dass du mindestens eine *Client ID* und ein *Client Secret* hast, wodurch der Dienst überprüfen kann, von wem die Authentifizierungsanfrage kommt und ob sie gültig ist. Diese werden von der Website bezogen, mit der du versuchst, die Authentifizierung zu implementieren, wie z. B. GitHub, und sind einzigartig für deine App -**Sie dürfen nicht geteilt werden** und sollten niemals in ein öffentliches Repository hochgeladen oder direkt in deinen Code geschrieben werden. Eine gängige Praxis ist es, sie in die `.env`-Datei zu packen und sie wie folgt zu referenzieren: `process.env.GITHUB_CLIENT_ID`. Für diese Herausforderung wirst du die GitHub-Strategie verwenden.

Folge <a href="https://www.freecodecamp.org/news/how-to-set-up-a-github-oauth-application/" target="_blank" rel="noopener noreferrer nofollow">diesen Anweisungen</a>, um deine *Client ID und Secret* von GitHub zu erhalten. Setze die Homepage-URL auf deine Homepage (**not the project code's URL**) und setze die Callback-URL auf dieselbe Homepage-URL mit `/auth/github/callback` am Ende. Speichere die Client-ID und deine Client-Secret in der `.env`-Datei deines Projekts als `GITHUB_CLIENT_ID` und `GITHUB_CLIENT_SECRET`.

Füge in deine `routes.js`-Datei `showSocialAuth: true` zur Homepage-Route nach `showRegistration: true` hinzu. Erstelle nun 2 Routen, die GET-Anfragen akzeptieren: `/auth/github` und `/auth/github/callback`. Die erste sollte nur Passport aufrufen, um `'github'` zu authentifizieren. Die zweite sollte Passport aufrufen, um `'github'` mit einer fehlgeschlagenen Weiterleitung zu `/` zu authentifizieren, und wenn dies erfolgreich ist, dann zu `/profile` weiterzuleiten (ähnlich wie bei deinem letzten Projekt).

Ein Beispiel dafür, wie `/auth/github/callback` aussehen sollte, ähnelt der Handhabung einer normalen Anmeldung:

```js
app.route('/login')
  .post(passport.authenticate('local', { failureRedirect: '/' }), (req,res) => {
    res.redirect('/profile');
  });
```

Reiche deine Seite ein, wenn du davon ausgehst, alles richtig gemacht zu haben. Wenn du auf Fehler stößt, kannst du <a href="https://forum.freecodecamp.org/t/advanced-node-and-express/567135#implementation-of-social-authentication-3" target="_blank" rel="noopener noreferrer nofollow">das Projekt bis zu diesem Punkt überprüfen</a>.

# --hints--

Die Route `/auth/github` sollte korrekt sein.

```js
async (getUserInput) => {
  try {
    const res = await fetch(getUserInput('url') + '/_api/routes.js');
    if (res.ok) {
      const data = await res.text();
      assert.match(
          data.replace(/\s/g, ''),
          /passport.authenticate.*?github/g,
          'Route auth/github should only call passport.authenticate with github'
        );
    } else {
      throw new Error(res.statusText);
    }
    const res2 = await fetch(getUserInput('url') + '/_api/app-stack');
    if (res2.ok) {
      const data2 = JSON.parse(await res2.json());
      const dataLayer = data2.find(layer => layer?.route?.path === '/auth/github');
      assert.deepInclude(dataLayer?.route, { methods: {get: true}, path: "/auth/github"});
      assert.deepInclude(dataLayer?.route?.stack?.[0], {method: "get", name: "authenticate"});
    } else {
      throw new Error(res2.statusText);
    }
  } catch (err) {
    throw new Error(err);
  }
}
```

Die Route `/auth/github/callback` sollte korrekt sein.

```js
async (getUserInput) => {
  try {
    const res = await fetch(getUserInput('url') + '/_api/routes.js');
    if (res.ok) {
      const data = await res.text();
      assert.match(
        data.replace(/\s/g, ''),
        /failureRedirect:("|')\/\1/g,
        'Route auth/github/callback should accept a get request and call passport.authenticate for github with a failure redirect to home'
      );
    } else {
      throw new Error(res.statusText);
    }
    const res2 = await fetch(getUserInput('url') + '/_api/app-stack');
    if (res2.ok) {
      const data2 = JSON.parse(await res2.json());
      const dataLayer = data2.find(layer => layer?.route?.path === '/auth/github/callback');
      assert.deepInclude(dataLayer?.route, { methods: {get: true}, path: "/auth/github/callback"});
      assert.deepInclude(dataLayer?.route?.stack?.[0], {method: "get", name: "authenticate"});
    } else {
      throw new Error(res2.statusText);
    }
  } catch (err) {
    throw new Error(err);
  }
}
```

