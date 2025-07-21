---
id: 587d7fb3367417b2b2512bfb
title: 'Wie man package.json, den Kern eines jeden Node.js-Projekts oder npm-Pakets, verwendet'
challengeType: 2
forumTopicId: 301528
dashedName: how-to-use-package-json-the-core-of-any-node-js-project-or-npm-package
---

# --description--

Working on these challenges will involve you writing your code using one of the following methods:

- Clone <a href="https://github.com/freeCodeCamp/boilerplate-npm/" target="_blank" rel="noopener noreferrer nofollow">this GitHub repo</a> and complete these challenges locally.
- Benutze einen Website-Builder deiner Wahl, um das Projekt abzuschließen. Achte darauf, alle Dateien von unserem GitHub-Repo zu integrieren.

The `package.json` file is the center of any Node.js project or npm package. Es speichert Informationen über dein Projekt. It consists of a single JSON object where information is stored in key-value pairs. There are only two required fields; `name` and `version`, but it’s good practice to provide additional information.

You can create the `package.json` file from the terminal using the `npm init` command. This will run a guided setup. Die Verwendung von `npm init` mit dem `-y`-Flag erzeugt die Datei ohne Fragen stellen zu müssen `npm init -y`.

If you look at the file tree of your project, you will find the `package.json` file on the top level of the tree. Das ist die Datei, die du in den nächsten paar Aufgaben verbessern wirst.

Eine der häufigsten Angaben in dieser Datei stellt das Feld `author` dar. Sie gibt an, wer das Projekt erstellt hat, und kann aus einem String oder einem Objekt mit Kontakt- oder anderen Informationen bestehen. Für größere Projekte wird ein Objekt empfohlen, aber ein einfacher String wie das folgende Beispiel ist für dieses Projekt ausreichend.

```json
"author": "Jane Doe",
```

# --instructions--

Add your name as the `author` of the project in the `package.json` file.

**Hinweis:** Denk daran, dass du JSON schreibst, daher müssen alle Feldnamen in Anführungszeichen (") gesetzt und durch ein Komma (,) getrennt werden.

# --hints--

`package.json` sollte über einen gültigen "Autor"-Schlüssel verfügen

```js
fetch(code + '/_api/package.json')
  .then(response => response.json())
  .then(
    data => {
      assert.exists(data.author, '"author" is missing');
    },
    error => {
      throw new Error(error.message || error.responseText);
    }
  );
```
