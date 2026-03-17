---
id: bd7158d8c443edefaeb5bd0e
title: Microservizio per accorciare URL
challengeType: 4
forumTopicId: 301509
dashedName: url-shortener-microservice
---

# --description--

Crea un'app JavaScript full-stack che sia funzionalmente simile a questa: <a href="https://url-shortener-microservice.freecodecamp.rocks" target="_blank" rel="noopener noreferrer nofollow">https://url-shortener-microservice.freecodecamp.rocks</a>. Lavorare su questo progetto richiederà di scrivere il tuo codice usando uno dei seguenti metodi:

-   Clona <a href="https://github.com/freeCodeCamp/boilerplate-project-urlshortener/" target="_blank" rel="noopener noreferrer nofollow">questo repository GitHub</a> e completa il progetto localmente.
-   Usa un generatore di siti a tua scelta per completare il progetto. Assicurati di includere tutti i file dal nostro repository GitHub.

# --instructions--

**SUGGERIMENTO:** Non dimenticare di usare un middleware per il parsing del body per gestire le richieste POST. Inoltre, puoi usare la funzione `dns.lookup(host, cb)` dal modulo core `dns` per verificare un URL inviato.

# --hints--

Dovresti fornire il tuo progetto, non l'URL di esempio.

```js
  assert(
    !/.*\/url-shortener-microservice\.freecodecamp\.rocks/.test(
      code
    )
  );
```

Puoi inviare un URL con POST a `/api/shorturl` e ottenere una risposta JSON con le proprietà `original_url` e `short_url`. Ecco un esempio: `{ original_url : 'https://freeCodeCamp.org', short_url : 1}`

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

Quando visiti `/api/shorturl/<short_url>`, verrai reindirizzato all'URL originale.

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
  const getResponse = await fetch(
    url + '/api/shorturl/' + shortenedUrlVariable
  );
  if (getResponse) {
    const { redirected, url } = getResponse;
    assert.isTrue(redirected);
    assert.strictEqual(url,fullUrl);
  } else {
    throw new Error(`${getResponse.status} ${getResponse.statusText}`);
  }
```

Se invii un URL non valido che non segue il formato `http://www.example.com` valido, la risposta JSON conterrà `{ error: 'invalid url' }`

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
