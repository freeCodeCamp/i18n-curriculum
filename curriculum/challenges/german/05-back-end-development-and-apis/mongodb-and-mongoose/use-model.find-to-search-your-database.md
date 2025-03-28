---
id: 587d7fb7367417b2b2512c0b
title: Verwende model.find(), um deine Datenbank zu durchsuchen
challengeType: 2
forumTopicId: 301543
dashedName: use-model-find-to-search-your-database
---

# --description--

In its simplest usage, `Model.find()` accepts a query document (a JSON object) as the first argument, then a callback. It returns an array of matches. It supports an extremely wide range of search options. Read more in the docs.

# --instructions--

Verändere die `findPeopleByName`-Funktion so, dass mithilfe von <code>Model.find -\> [Person]</code> alle Personen mit einem bestimmten Namen gefunden werden.

Verwende das Funktionsargument `personName` als Suchbegriff.

# --hints--

Die Suche nach allen Elementen, auf die bestimmte Kriterien zutreffen, sollte erfolgreich sein

```js
  $.post(code + '/_api/find-all-by-name', {
    name: 'r@nd0mN4m3',
    age: 24,
    favoriteFoods: ['pizza']
  }).then(
    (data) => {
      assert.isArray(data, 'the response should be an Array');
      assert.equal(
        data[0].name,
        'r@nd0mN4m3',
        'item.name is not what expected'
      );
      assert.equal(data[0].__v, 0, 'The item should be not previously edited');
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

