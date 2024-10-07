---
id: 587d7fb7367417b2b2512c0a
title: Crea muchos registros con model.create()
challengeType: 2
forumTopicId: 301537
dashedName: create-many-records-with-model-create
---

# --description--

Sometimes you need to create many instances of your models, e.g. when seeding a database with initial data. `Model.create()` takes an array of objects like `[{name: 'John', ...}, {...}, ...]` as the first argument, and saves them all in the db.

# --instructions--

Modifica la función `createManyPeople` para crear muchas personas usando `Model.create()` con el argumento `arrayOfPeople`.

**Nota:** Puedes reutilizar el modelo que has instanciado en el ejercicio anterior.

# --hints--

La creación de muchos elementos de la base de datos a la vez debe ser exitoso

```js
(getUserInput) =>
  $.ajax({
    url: getUserInput('url') + '/_api/create-many-people',
    type: 'POST',
    contentType: 'application/json',
    data: JSON.stringify([
      { name: 'John', age: 24, favoriteFoods: ['pizza', 'salad'] },
      { name: 'Mary', age: 21, favoriteFoods: ['onions', 'chicken'] }
    ])
  }).then(
    (data) => {
      assert.isArray(data, 'the response should be an array');
      assert.equal(
        data.length,
        2,
        'the response does not contain the expected number of items'
      );
      assert.equal(data[0].name, 'John', 'The first item is not correct');
      assert.equal(
        data[0].__v,
        0,
        'The first item should be not previously edited'
      );
      assert.equal(data[1].name, 'Mary', 'The second item is not correct');
      assert.equal(
        data[1].__v,
        0,
        'The second item should be not previously edited'
      );
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

