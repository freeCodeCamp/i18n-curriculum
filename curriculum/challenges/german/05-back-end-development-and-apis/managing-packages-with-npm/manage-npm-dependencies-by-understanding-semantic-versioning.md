---
id: 587d7fb5367417b2b2512c01
title: Verwalte npm-Abhängigkeiten durch das Verstehen semantischer Versionierung
challengeType: 2
forumTopicId: 301529
dashedName: manage-npm-dependencies-by-understanding-semantic-versioning
---

# --description--

`Versions` of the npm packages in the dependencies section of your package.json file follow what’s called Semantic Versioning (SemVer), an industry standard for software versioning aiming to make it easier to manage dependencies. Libraries, frameworks or other tools published on npm should use SemVer in order to clearly communicate what kind of changes projects can expect if they update.

Die Kenntnis von SemVer kann nützlich sein, wenn du eine Software entwickelst, die externe Abhängigkeiten nutzt (was du fast immer tust). Eines Tages wird dein Verständnis dieser Zahlen dich davor bewahren, versehentlich Änderungen an deinem Projekt vorzunehmen, ohne zu verstehen, warum Dinge, die gestern noch funktionierten, heute plötzlich nicht mehr funktionieren. So funktioniert Semantic Versioning laut der offiziellen Website:

```json
"package": "MAJOR.MINOR.PATCH"
```

Die MAJOR-Version sollte erhöht werden, wenn du inkompatible API-Änderungen vornimmst. Die MINOR-Version sollte erhöht werden, wenn du eine Funktionalität auf eine rückwärtskompatible Weise hinzufügst. Die PATCH-Version sollte erhöht werden, wenn du rückwärtskompatible Fehlerkorrekturen vornimmst. Das bedeutet, dass PATCHes Fehlerkorrekturen sind und MINORs neue Funktionen hinzufügen, aber keine der beiden Programme beschädigt etwas was vorher funktionierte. Schließlich fügen MAJORs Änderungen hinzu, die mit früheren Versionen nicht funktionieren.

# --instructions--

Ändere im Abschnitt "dependencies" (Abhängigkeiten) deiner `package.json`-Datei die Version von `@freecodecamp/example`, sodass sie sich an MAJOR Version 1, MINOR Version 2 und PATCH Version 13 anpasst

# --hints--

`"dependencies"` sollte `"@freecodecamp/example"` enthalten.

```js
fetch(code + '/_api/package.json')
  .then(response => response.json())
  .then(
    data => {
      assert.property(
        data.dependencies,
        '@freecodecamp/example',
        '"dependencies" does not include "@freecodecamp/example"'
      );
    },
    error => {
      throw new Error(error.message || error.responseText);
    }
  );
```

Die `"@freecodecamp/example"`-Version sollte `"1.2.13"` sein.

```js
fetch(code + '/_api/package.json')
  .then(response => response.json())
  .then(
    data => {
      assert.equal(
        data.dependencies['@freecodecamp/example'],
        '1.2.13',
        'Wrong version of "@freecodecamp/example". It should be 1.2.13'
      );
    },
    error => {
      throw new Error(error.message || error.responseText);
    }
  );
```
