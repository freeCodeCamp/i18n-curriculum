---
id: 587d7fb5367417b2b2512c03
title: Benutze das Caret-Zeichen, um die neueste Nebenversion einer Abhängigkeit zu verwenden
challengeType: 2
forumTopicId: 301531
dashedName: use-the-caret-character-to-use-the-latest-minor-version-of-a-dependency
---

# --description--

Similar to how the tilde we learned about in the last challenge allows npm to install the latest PATCH for a dependency, the caret (`^`) allows npm to install future updates as well. The difference is that the caret will allow both MINOR updates and PATCHes.

Deine aktuelle Version von `@freecodecamp/example` sollte `~1.2.13` lauten, was es npm erlaubt, auf die neueste Version `1.2.x` zu aktualisieren. Wenn du stattdessen das Zirkumflex (^) als Versionspräfix verwendest, dürfte npm auf jede Version von `1.x.x` aktualisieren.

```json
"package": "^1.3.8"
```

Dies würde Aktualisierungen auf jede `1.x.x`-Version des Pakets ermöglichen.

# --instructions--

Verwende das Caret (`^`), um die Version von `@freecodecamp/example` in deinen Abhängigkeiten voranzustellen und erlaube npm auf jede neue MINOR-Version zu aktualisieren.

**Hinweis:** Die Versionsnummern selbst sollten nicht geändert werden.

# --hints--

`"dependencies"` sollte `"@freecodecamp/example"` enthalten.

```js
(getUserInput) =>
  $.get(getUserInput('url') + '/_api/package.json').then(
    (data) => {
      var packJson = JSON.parse(data);
      assert.property(
        packJson.dependencies,
        '@freecodecamp/example',
        '"dependencies" does not include "@freecodecamp/example"'
      );
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

`"@freecodecamp/example"`-Version sollte `"^1.x.x"` entsprechen.

```js
(getUserInput) =>
  $.get(getUserInput('url') + '/_api/package.json').then(
    (data) => {
      var packJson = JSON.parse(data);
      assert.match(
        packJson.dependencies["@freecodecamp/example"],
        /^\^1\./,
        'Wrong version of "@freecodecamp/example". It should be ^1.2.13'
      );
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

