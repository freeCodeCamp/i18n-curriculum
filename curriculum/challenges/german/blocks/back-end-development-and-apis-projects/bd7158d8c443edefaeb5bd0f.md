---
id: bd7158d8c443edefaeb5bd0f
title: Datei-Metadaten-Microservice
challengeType: 4
forumTopicId: 301506
dashedName: file-metadata-microservice
---

# --description--

Erstellen Sie eine Full-Stack-JavaScript-App, die funktional ähnlich ist wie diese: <a href="https://file-metadata-microservice.freecodecamp.rocks" target="_blank" rel="noopener noreferrer nofollow">https://file-metadata-microservice.freecodecamp.rocks</a>. Bei der Arbeit an diesem Projekt schreiben Sie Ihren Code mit einer der folgenden Methoden:

-   Klonen Sie <a href="https://github.com/freeCodeCamp/boilerplate-project-filemetadata/" target="_blank" rel="noopener noreferrer nofollow">dieses GitHub-Repository</a> und vervollständigen Sie Ihr Projekt lokal.
-   Verwenden Sie einen Website-Builder Ihrer Wahl, um das Projekt abzuschließen. Stellen Sie sicher, dass Sie alle Dateien aus unserem GitHub-Repository einbinden.

# --instructions--

**HINWEIS:** Sie können das `multer` npm-Paket verwenden, um das Hochladen von Dateien zu verwalten.

# --hints--

Sie sollten Ihr eigenes Projekt bereitstellen, nicht die Beispiel-URL.

```js
  assert(
    !/.*\/file-metadata-microservice\.freecodecamp\.rocks/.test(
      code
    )
  );
```

Sie können ein Formular absenden, das einen Datei-Upload enthält.

```js
  const site = await fetch(code);
  const data = await site.text();
  const doc = new DOMParser().parseFromString(data, 'text/html');
  assert(doc.querySelector('input[type="file"]'));
```

Das Eingabefeld für die Datei im Formular hat das `name`-Attribut auf `upfile` gesetzt.

```js
  const site = await fetch(code);
  const data = await site.text();
  const doc = new DOMParser().parseFromString(data, 'text/html');
  assert(doc.querySelector('input[name="upfile"]'));
```

Wenn Sie eine Datei absenden, erhalten Sie die Datei-`name`, `type` und `size` in Bytes innerhalb der JSON-Antwort.

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

