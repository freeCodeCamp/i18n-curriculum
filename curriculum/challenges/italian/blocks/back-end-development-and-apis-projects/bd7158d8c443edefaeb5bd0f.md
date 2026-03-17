---
id: bd7158d8c443edefaeb5bd0f
title: Microservizio per i metadati dei file
challengeType: 4
forumTopicId: 301506
dashedName: file-metadata-microservice
---

# --description--

Crea un'app JavaScript full-stack che sia funzionalmente simile a questa: <a href="https://file-metadata-microservice.freecodecamp.rocks" target="_blank" rel="noopener noreferrer nofollow">https://file-metadata-microservice.freecodecamp.rocks</a>. Lavorare su questo progetto richiederà di scrivere il tuo codice usando uno dei seguenti metodi:

-   Clona <a href="https://github.com/freeCodeCamp/boilerplate-project-filemetadata/" target="_blank" rel="noopener noreferrer nofollow">questo repository GitHub</a> e completa il progetto localmente.
-   Usa un site builder a tua scelta per completare il progetto. Assicurati di includere tutti i file dal nostro repository GitHub.

# --instructions--

**SUGGERIMENTO:** Puoi usare il pacchetto npm `multer` per gestire il caricamento dei file.

# --hints--

Dovresti fornire il tuo progetto, non l'URL di esempio.

```js
  assert(
    !/.*\/file-metadata-microservice\.freecodecamp\.rocks/.test(
      code
    )
  );
```

Puoi inviare un modulo che include un caricamento di file.

```js
  const site = await fetch(code);
  const data = await site.text();
  const doc = new DOMParser().parseFromString(data, 'text/html');
  assert(doc.querySelector('input[type="file"]'));
```

Il campo di input file del modulo ha l'attributo `name` impostato su `upfile`.

```js
  const site = await fetch(code);
  const data = await site.text();
  const doc = new DOMParser().parseFromString(data, 'text/html');
  assert(doc.querySelector('input[name="upfile"]'));
```

Quando invii un file, ricevi il `name`, `type` e `size` del file in byte all'interno della risposta JSON.

```js
  const formData = new FormData();
  const fileData = await fetch(
    'https://cdn.freecodecamp.org/weather-icons/01d.png'
  );
  const file = await fileData.blob();
  formData.append('upfile', file, 'icon');
  const data = await fetch(code + '/api/fileanalyse', {
    method: 'POST',
    body: formData
  });
  const parsed = await data.json();
  assert.property(parsed, 'size');
  assert.equal(parsed.name, 'icon');
  assert.equal(parsed.type, 'image/png');
```
