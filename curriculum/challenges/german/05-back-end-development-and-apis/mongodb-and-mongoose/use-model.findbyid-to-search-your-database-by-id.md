---
id: 587d7fb7367417b2b2512c0d
title: Verwende model.findById() um deine Datenbank anhand der _id zu durchsuchen
challengeType: 2
forumTopicId: 301544
dashedName: use-model-findbyid-to-search-your-database-by-id
---

# --description--

When saving a document, MongoDB automatically adds the field `_id`, and set it to a unique alphanumeric key. Searching by `_id` is an extremely frequent operation, so Mongoose provides a dedicated method for it.

# --instructions--

Modifiziere die `findPersonById`, um die einzige Person mit der gegebenen `_id` zu finden, indem du `Model.findById() -> Person` verwendest. Verwende das Funktionsargument `personId` als Suchbegriff.

# --hints--

Die Suche nach einem Element anhand der Id sollte erfolgreich sein

```js
(getUserInput) =>
  $.get(getUserInput('url') + '/_api/find-by-id').then(
    (data) => {
      assert.equal(data.name, 'test', 'item.name is not what expected');
      assert.equal(data.age, 0, 'item.age is not what expected');
      assert.deepEqual(
        data.favoriteFoods,
        ['none'],
        'item.favoriteFoods is not what expected'
      );
      assert.equal(data.__v, 0, 'The item should be not previously edited');
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

