---
id: bd7158d8c443edefaeb5bdff
title: Microservizio parser per intestazioni di richiesta
challengeType: 4
forumTopicId: 301507
dashedName: request-header-parser-microservice
---

# --description--

Crea un'app JavaScript full-stack che sia funzionalmente simile a questa: <a href="https://request-header-parser-microservice.freecodecamp.rocks/" target="_blank" rel="noopener noreferrer nofollow">https://request-header-parser-microservice.freecodecamp.rocks/</a>. Lavorare su questo progetto ti richiederà di scrivere il tuo codice usando uno dei seguenti metodi:

-   Clona <a href="https://github.com/freeCodeCamp/boilerplate-project-headerparser/" target="_blank" rel="noopener noreferrer nofollow">questo repository GitHub</a> e completa il progetto localmente.
-   Usa un generatore di siti a tua scelta per completare il progetto. Assicurati di includere tutti i file dal nostro repository GitHub.

# --hints--

Dovresti fornire il tuo progetto, non l'URL di esempio.

```js
  assert(
    !/.*\/request-header-parser-microservice\.freecodecamp\.rocks/.test(
      code
    )
  );
```

Una richiesta a `/api/whoami` dovrebbe restituire un oggetto JSON con il tuo indirizzo IP nella chiave `ipaddress`.

```js
  const response = await fetch(code + '/api/whoami');
  if (!response.ok) {
    throw new Error(await response.text());
  }
  const data = await response.json();
  assert(data.ipaddress && data.ipaddress.length > 0);
```

Una richiesta a `/api/whoami` dovrebbe restituire un oggetto JSON con la tua lingua preferita nella chiave `language`.

```js
  const response = await fetch(code + '/api/whoami');
  if (!response.ok) {
    throw new Error(await response.text());
  }
  const data = await response.json();
  assert(data.language && data.language.length > 0);
```

Una richiesta a `/api/whoami` dovrebbe restituire un oggetto JSON con il tuo software nella chiave `software`.

```js
  const response = await fetch(code + '/api/whoami');
  if (!response.ok) {
    throw new Error(await response.text());
  }
  const data = await response.json();
  assert(data.software && data.software.length > 0);
```
