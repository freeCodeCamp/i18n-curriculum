---
id: bd7158d8c443edefaeb5bdef
title: Microservizio timestamp
challengeType: 4
forumTopicId: 301508
dashedName: timestamp-microservice
---

# --description--

Crea un'app JavaScript full-stack che sia funzionalmente simile a questa: <a href="https://timestamp-microservice.freecodecamp.rocks" target="_blank" rel="noopener noreferrer nofollow">https://timestamp-microservice.freecodecamp.rocks</a>. Lavorare su questo progetto ti porterà a scrivere il tuo codice usando uno dei seguenti metodi:

-   Clona <a href="https://github.com/freeCodeCamp/boilerplate-project-timestamp/"  target="_blank" rel="noopener noreferrer nofollow">questo repository GitHub</a> e completa il progetto localmente.
-   Usa un generatore di siti a tua scelta per completare il progetto. Assicurati di includere tutti i file dal nostro repository GitHub.

**Nota:** La conversione dei fusi orari non è uno scopo di questo progetto, quindi considera tutte le date valide inviate come date GMT da analizzare con `new Date()`. 

# --hints--

Dovresti fornire il tuo progetto, non l'URL di esempio.

```js
  assert(
    !/.*\/timestamp-microservice\.freecodecamp\.rocks/.test(code)
  );
```

Una richiesta a `/api/:date?` con una data valida dovrebbe restituire un oggetto JSON con una chiave `unix` che è un timestamp Unix della data di input in millisecondi (di tipo Number)

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

Una richiesta a `/api/:date?` con una data valida dovrebbe restituire un oggetto JSON con una chiave `utc` che è una stringa della data di input nel formato: `Thu, 01 Jan 1970 00:00:00 GMT`

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

Una richiesta a `/api/1451001600000` dovrebbe restituire `{ unix: 1451001600000, utc: "Fri, 25 Dec 2015 00:00:00 GMT" }`

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

Il tuo progetto può gestire date che possono essere analizzate con successo da `new Date(date_string)`

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

Se la stringa della data di input non è valida, l'API restituisce un oggetto con la struttura `{ error : "Invalid Date" }`

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

Un parametro data vuoto dovrebbe restituire l'ora corrente in un oggetto JSON con una chiave `unix`

```js
  const response = await fetch(code + '/api');
  if (!response.ok) {
    throw new Error(await response.text());
  }
  const data = await response.json();
  var now = Date.now();
  assert.approximately(data.unix, now, 20000);
```

Un parametro data vuoto dovrebbe restituire l'ora corrente in un oggetto JSON con una chiave `utc`

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
