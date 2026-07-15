---
id: bd7158d8c443edefaeb5bd0e
title: URL Shortener Microservice
challengeType: 4
forumTopicId: 301509
dashedName: url-shortener-microservice
---

# --description--

Erstellen Sie eine Full-Stack-JavaScript-App, die funktional ähnlich ist wie diese: <a href="https://url-shortener-microservice.freecodecamp.rocks" target="_blank" rel="noopener noreferrer nofollow">https://url-shortener-microservice.freecodecamp.rocks</a>. Bei der Arbeit an diesem Projekt schreiben Sie Ihren Code mit einer der folgenden Methoden:

-   Klonen Sie <a href="https://github.com/freeCodeCamp/boilerplate-project-urlshortener/" target="_blank" rel="noopener noreferrer nofollow">dieses GitHub-Repository</a> und vervollständigen Sie Ihr Projekt lokal.
-   Verwenden Sie einen Website-Builder Ihrer Wahl, um das Projekt abzuschließen. Stellen Sie sicher, dass Sie alle Dateien aus unserem GitHub-Repository einbinden.

# --instructions--

**HINWEIS:** Vergessen Sie nicht, eine Middleware zum Parsen des Bodys zu verwenden, um die POST-Anfragen zu verarbeiten. Außerdem können Sie die Funktion `dns.lookup(host, cb)` aus dem `dns` Core-Modul verwenden, um eine eingereichte URL zu überprüfen.

# --hints--

Sie sollten Ihr eigenes Projekt bereitstellen, nicht die Beispiel-URL.

```js
  assert(
    !/.*\/url-shortener-microservice\.freecodecamp\.rocks/.test(
      code
    )
  );
```

Sie können eine URL an `/api/shorturl` per POST senden und erhalten eine JSON-Antwort mit den Eigenschaften `original_url` und `short_url`. Hier ein Beispiel: `{ original_url : 'https://freeCodeCamp.org', short_url : 1}`

```js
  const url = code;
  const urlVariable = Date.now();
  const fullUrl = `${url}/?v=${urlVariable}`
  const res = await fetch(url + '/api/shorturl', {
    method: 'POST',
    headers: { 'Content-Type': 'application/x-www-form-urlencoded' },
    body: `url=${fullUrl}`
  });
  if (res.ok) {
    const { short_url, original_url } = await res.json();
    assert.isNotNull(short_url);
    assert.strictEqual(original_url, `${url}/?v=${urlVariable}`);
  } else {
    throw new Error(`${res.status} ${res.statusText}`);
  }
```

Wenn Sie `/api/shorturl/<short_url>` besuchen, werden Sie zur ursprünglichen URL umgeleitet.

```js
  const url = code;
  const urlVariable = Date.now();
  const fullUrl = `${url}/?v=${urlVariable}`
  let shortenedUrlVariable;
  const postResponse = await fetch(url + '/api/shorturl', {
    method: 'POST',
    headers: { 'Content-Type': 'application/x-www-form-urlencoded' },
    body: `url=${fullUrl}`
  });
  if (postResponse.ok) {
    const { short_url } = await postResponse.json();
    shortenedUrlVariable = short_url;
  } else {
    throw new Error(`${postResponse.status} ${postResponse.statusText}`);
  }
  // Ensure a new URL is reached
  const getResponse = await fetch(
    url + '/api/shorturl/' + shortenedUrlVariable, {redirect:'follow'}
  );
  if (getResponse) {
    const { url } = getResponse; // status is always 200 for some reason
    assert.strictEqual(url,fullUrl);
  } else {
    throw new Error(`${getResponse.status} ${getResponse.statusText}`);
  }

  // No more auto follow
  const getManualResponse = await fetch(
    url + '/api/shorturl/' + shortenedUrlVariable, {redirect:'manual'}
  );
  if (getManualResponse) {
    const { status } = getManualResponse; // if a redirect happens, it won't reach the new resource
    assert.strictEqual(status,0);
  } else {
    throw new Error(`${getManualResponse.status} ${getManualResponse.statusText}`);
  }

```

Wenn Sie eine ungültige URL übergeben, die nicht dem gültigen `http://www.example.com` Format entspricht, enthält die JSON-Antwort `{ error: 'invalid url' }`

```js
  const url = code;
  const res = await fetch(url + '/api/shorturl', {
    method: 'POST',
    headers: { 'Content-Type': 'application/x-www-form-urlencoded' },
    body: `url=ftp:/john-doe.invalidTLD`
  });
  if (res.ok) {
    const { error } = await res.json();
    assert.isNotNull(error);
    assert.strictEqual(error.toLowerCase(), 'invalid url');
  } else {
    throw new Error(`${res.status} ${res.statusText}`);
  }
```

