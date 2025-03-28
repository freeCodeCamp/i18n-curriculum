---
id: 587d7fb8367417b2b2512c10
title: Ein Dokument mithilfe von model.findByIdAndRemove löschen
challengeType: 2
forumTopicId: 301539
dashedName: delete-one-document-using-model-findbyidandremove
---

# --description--

`findByIdAndRemove` and `findOneAndRemove` are like the previous update methods. They pass the removed document to the db. As usual, use the function argument `personId` as the search key.

# --instructions--

Ändere die `removeById`-Funktion so, dass sie eine Person anhand derer `_id` löscht. Du solltest eine der folgenden Methoden verwenden: `findByIdAndRemove()` oder `findOneAndRemove()`.

# --hints--

Das Löschen eines Eintrags sollte funktionieren

```js
  $.post(code + '/_api/remove-one-person', {
    name: 'Jason Bourne',
    age: 36,
    favoriteFoods: ['apples']
  }).then(
    (data) => {
      assert.equal(data.name, 'Jason Bourne', 'item.name is not what expected');
      assert.equal(data.age, 36, 'item.age is not what expected');
      assert.deepEqual(
        data.favoriteFoods,
        ['apples'],
        'item.favoriteFoods is not what expected'
      );
      assert.equal(data.__v, 0);
      assert.equal(data.count, 0, 'the db items count is not what expected');
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

