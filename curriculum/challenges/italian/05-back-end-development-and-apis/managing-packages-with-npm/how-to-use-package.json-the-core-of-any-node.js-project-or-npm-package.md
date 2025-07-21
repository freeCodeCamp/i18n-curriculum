---
id: 587d7fb3367417b2b2512bfb
title: 'Come utilizzare package.json, il nucleo di qualsiasi progetto Node.js o pacchetto npm'
challengeType: 2
forumTopicId: 301528
dashedName: how-to-use-package-json-the-core-of-any-node-js-project-or-npm-package
---

# --description--

Working on these challenges will involve you writing your code using one of the following methods:

- Clone <a href="https://github.com/freeCodeCamp/boilerplate-npm/" target="_blank" rel="noopener noreferrer nofollow">this GitHub repo</a> and complete these challenges locally.
- Usare un costruttore di siti di tua scelta per completare il progetto. Assicurati di incorporare tutti i file del nostro repository GitHub.

The `package.json` file is the center of any Node.js project or npm package. It stores information about your project. It consists of a single JSON object where information is stored in key-value pairs. There are only two required fields; `name` and `version`, but it’s good practice to provide additional information.

You can create the `package.json` file from the terminal using the `npm init` command. This will run a guided setup. Using `npm init` with the `-y` flag will generate the file without having it ask any questions, `npm init -y`.

If you look at the file tree of your project, you will find the `package.json` file on the top level of the tree. Questo è il file che andremo a migliorare nelle prossime due sfide.

Una delle informazioni più comuni in questo file è il campo `author`. Specifica chi ha creato il progetto e può consistere in una stringa o un oggetto con informazioni di contatto o altri dettagli. Un oggetto è consigliato per progetti più grandi, ma una semplice stringa come l'esempio seguente farà al caso nostro per questo progetto.

```json
"author": "Jane Doe",
```

# --instructions--

Add your name as the `author` of the project in the `package.json` file.

**Nota:** Ricorda che stai scrivendo JSON, quindi tutti i nomi dei campi devono usare virgolette doppie (") ed essere separati con una virgola (,).

# --hints--

`package.json` dovrebbe avere una chiave "author" valida

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
