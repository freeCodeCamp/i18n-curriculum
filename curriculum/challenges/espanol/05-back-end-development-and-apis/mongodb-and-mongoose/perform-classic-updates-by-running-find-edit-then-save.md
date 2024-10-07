---
id: 587d7fb8367417b2b2512c0e
title: 'Realiza las actualizaciones clásicas ejecutando "find", "edit" y "save"'
challengeType: 2
forumTopicId: 301541
dashedName: perform-classic-updates-by-running-find-edit-then-save
---

# --description--

In the good old days, this was what you needed to do if you wanted to edit a document, and be able to use it somehow (e.g. sending it back in a server response). Mongoose has a dedicated updating method: `Model.update()`. It is bound to the low-level mongo driver. It can bulk-edit many documents matching certain criteria, but it doesn’t send back the updated document, only a 'status' message. Furthermore, it makes model validations difficult, because it just directly calls the mongo driver.

# --instructions--

Modifica la función `findEditThenSave` para encontrar a una persona por `_id` (usa cualquiera de los métodos anteriores) con el parámetro `personId` como la clave de búsqueda. Añade `"hamburger"` a la lista de `favoriteFoods` (puedes usar `Array.push()`). Luego - dentro del callback de búsqueda: `save()` la `Person` actualizada.

**Nota:** Esto puede ser complicado, si está en tu esquema, declaraste `favoriteFoods` como un arreglo, sin especificar el tipo (por ejemplo `[String]`). En ese caso, `favoriteFoods` por defecto es de tipo Mixto, y tienes que marcarlo manualmente como editado usando `document.markModified('edited-field')`. Mira nuestro <a href="https://www.freecodecamp.org/news/introduction-to-mongoose-for-mongodb-d2a7aa593c57/" target="_blank" rel="noopener noreferrer nofollow">artículo sobre Mongoose </a>.

# --hints--

"Find-edit-update" un elemento debe ser exitoso

```js
(getUserInput) =>
  $.post(getUserInput('url') + '/_api/find-edit-save', {
    name: 'Poldo',
    age: 40,
    favoriteFoods: ['spaghetti']
  }).then(
    (data) => {
      assert.equal(data.name, 'Poldo', 'item.name is not what is expected');
      assert.equal(data.age, 40, 'item.age is not what expected');
      assert.deepEqual(
        data.favoriteFoods,
        ['spaghetti', 'hamburger'],
        'item.favoriteFoods is not what expected'
      );
      assert.equal(data.__v, 1, 'The item should be previously edited');
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

