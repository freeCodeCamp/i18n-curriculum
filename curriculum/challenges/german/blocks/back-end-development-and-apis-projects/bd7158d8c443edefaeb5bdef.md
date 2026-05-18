---
id: bd7158d8c443edefaeb5bdef
title: Zeitstempel-Microservice
challengeType: 4
forumTopicId: 301508
dashedName: timestamp-microservice
---

# --description--

Erstellen Sie eine Full-Stack-JavaScript-App, die funktional ähnlich ist wie diese: <a href="https://timestamp-microservice.freecodecamp.rocks" target="_blank" rel="noopener noreferrer nofollow">https://timestamp-microservice.freecodecamp.rocks</a>. Die Arbeit an diesem Projekt erfordert, dass Sie Ihren Code mit einer der folgenden Methoden schreiben:

-   Klonen Sie <a href="https://github.com/freeCodeCamp/boilerplate-project-timestamp/"  target="_blank" rel="noopener noreferrer nofollow">dieses GitHub-Repository</a> und vervollständigen Sie Ihr Projekt lokal.
-   Verwenden Sie einen Website-Builder Ihrer Wahl, um das Projekt abzuschließen. Stellen Sie sicher, dass Sie alle Dateien aus unserem GitHub-Repository einbinden.

**Hinweis:** Die Umrechnung von Zeitzonen ist nicht Zweck dieses Projekts, daher gehen Sie davon aus, dass alle gesendeten gültigen Daten mit `new Date()` als GMT-Daten geparst werden. 

# --hints--

Sie sollten Ihr eigenes Projekt bereitstellen, nicht die Beispiel-URL.

```js
  assert(
    !/.*\/timestamp-microservice\.freecodecamp\.rocks/.test(code)
  );
```

Eine Anfrage an `/api/:date?` mit einem gültigen Datum sollte ein JSON-Objekt mit einem `unix`-Schlüssel zurückgeben, der ein Unix-Zeitstempel des Eingabedatums in Millisekunden ist (vom Typ Number)

```js
  const response = await fetch(code + '/api/2016-12-25');
  if (!response.ok) {
    throw new Error(await response.text());
  }
  const data = await response.json();
  assert.equal(
    data.unix,
    1482624000000,
    'Should be a valid unix timestamp'
  );
```

Eine Anfrage an `/api/:date?` mit einem gültigen Datum sollte ein JSON-Objekt mit einem `utc`-Schlüssel zurückgeben, der ein String des Eingabedatums im Format ist: `Thu, 01 Jan 1970 00:00:00 GMT`

```js
  const response = await fetch(code + '/api/2016-12-25');
  if (!response.ok) {
    throw new Error(await response.text());
  }
  const data = await response.json();
  assert.equal(
    data.utc,
    'Sun, 25 Dec 2016 00:00:00 GMT',
    'Should be a valid UTC date string'
  );
```

Eine Anfrage an `/api/1451001600000` sollte `{ unix: 1451001600000, utc: "Fri, 25 Dec 2015 00:00:00 GMT" }` zurückgeben

```js
  const response = await fetch(code + '/api/1451001600000');
  if (!response.ok) {
    throw new Error(await response.text());
  }
  const data = await response.json();
  assert(
    data.unix === 1451001600000 &&
      data.utc === 'Fri, 25 Dec 2015 00:00:00 GMT'
  );
```

Ihr Projekt kann Daten verarbeiten, die erfolgreich von `new Date(date_string)` geparst werden können

```js
  const response = await fetch(code + '/api/05 October 2011, GMT');
  if (!response.ok) {
    throw new Error(await response.text());
  }
  const data = await response.json();
  assert(
    data.unix === 1317772800000 &&
      data.utc === 'Wed, 05 Oct 2011 00:00:00 GMT'
  );
```

Wenn der Eingabe-Datum-String ungültig ist, gibt die API ein Objekt mit der Struktur `{ error : "Invalid Date" }` zurück

```js
  const response = await fetch(code + '/api/this-is-not-a-date');
  if (response.ok) {
    const data = await response.json();
    assert.equal(data.error.toLowerCase(), 'invalid date');
  } else {
    const errorData = await response.json();
    assert(errorData.error.toLowerCase() === 'invalid date');
  }
```

Ein leerer Datumsparameter sollte die aktuelle Zeit in einem JSON-Objekt mit einem `unix`-Schlüssel zurückgeben

```js
  const response = await fetch(code + '/api');
  if (!response.ok) {
    throw new Error(await response.text());
  }
  const data = await response.json();
  var now = Date.now();
  assert.approximately(data.unix, now, 20000);
```

Ein leerer Datumsparameter sollte die aktuelle Zeit in einem JSON-Objekt mit einem `utc`-Schlüssel zurückgeben

```js
  const response = await fetch(code + '/api');
  if (!response.ok) {
    throw new Error(await response.text());
  }
  const data = await response.json();
  var now = Date.now();
  var serverTime = new Date(data.utc).getTime();
  assert.approximately(serverTime, now, 20000);
```

