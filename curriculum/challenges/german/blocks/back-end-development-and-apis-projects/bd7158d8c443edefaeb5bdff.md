---
id: bd7158d8c443edefaeb5bdff
title: Microservice zum Parsen von Anfrage-Kopfzeilen
challengeType: 4
forumTopicId: 301507
dashedName: request-header-parser-microservice
---

# --description--

Erstellen Sie eine Full-Stack-JavaScript-App, die funktional ähnlich ist wie diese: <a href="https://request-header-parser-microservice.freecodecamp.rocks/" target="_blank" rel="noopener noreferrer nofollow">https://request-header-parser-microservice.freecodecamp.rocks/</a>. Die Arbeit an diesem Projekt erfordert, dass Sie Ihren Code mit einer der folgenden Methoden schreiben:

-   Klonen Sie <a href="https://github.com/freeCodeCamp/boilerplate-project-headerparser/" target="_blank" rel="noopener noreferrer nofollow">dieses GitHub-Repository</a> und vervollständigen Sie Ihr Projekt lokal.
-   Verwenden Sie einen Website-Builder Ihrer Wahl, um das Projekt abzuschließen. Stellen Sie sicher, dass Sie alle Dateien aus unserem GitHub-Repository einbinden.

# --hints--

Sie sollten Ihr eigenes Projekt bereitstellen, nicht die Beispiel-URL.

```js
  assert(
    !/.*\/request-header-parser-microservice\.freecodecamp\.rocks/.test(
      code
    )
  );
```

Eine Anfrage an `/api/whoami` sollte ein JSON-Objekt mit Ihrer IP-Adresse im `ipaddress`-Schlüssel zurückgeben.

```js
  const response = await fetch(code + '/api/whoami');
  if (!response.ok) {
    throw new Error(await response.text());
  }
  const data = await response.json();
  assert(data.ipaddress && data.ipaddress.length > 0);
```

Eine Anfrage an `/api/whoami` sollte ein JSON-Objekt mit Ihrer bevorzugten Sprache im `language`-Schlüssel zurückgeben.

```js
  const response = await fetch(code + '/api/whoami');
  if (!response.ok) {
    throw new Error(await response.text());
  }
  const data = await response.json();
  assert(data.language && data.language.length > 0);
```

Eine Anfrage an `/api/whoami` sollte ein JSON-Objekt mit Ihrer Software im `software`-Schlüssel zurückgeben.

```js
  const response = await fetch(code + '/api/whoami');
  if (!response.ok) {
    throw new Error(await response.text());
  }
  const data = await response.json();
  assert(data.software && data.software.length > 0);
```

