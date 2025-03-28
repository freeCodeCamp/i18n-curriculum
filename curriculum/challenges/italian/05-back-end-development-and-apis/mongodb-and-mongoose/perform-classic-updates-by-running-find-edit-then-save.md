---
id: 587d7fb8367417b2b2512c0e
title: 'Eseguire classici aggiornamenti eseguendo Find, Edit e Save'
challengeType: 2
forumTopicId: 301541
dashedName: perform-classic-updates-by-running-find-edit-then-save
---

# --description--

In the good old days, this was what you needed to do if you wanted to edit a document, and be able to use it somehow (e.g. sending it back in a server response). Mongoose has a dedicated updating method: `Model.update()`. It is bound to the low-level mongo driver. It can bulk-edit many documents matching certain criteria, but it doesn’t send back the updated document, only a 'status' message. Furthermore, it makes model validations difficult, because it just directly calls the mongo driver.

# --instructions--

Modifica la funzione `findEditThenSave` per trovare una persona in base al suo `_id` (utilizza uno qualsiasi dei metodi visti in precedenza) con il parametro `personId` come chiave di ricerca. Aggiungi `"hamburger"` alla lista dei `favoriteFoods` della persona (puoi usare `Array.push()`). Quindi - all'interno della callback find - salva (`save()`) la `Person` aggiornata.

**Nota:** Potrebbe essere complicato, se nel tuo Schema, hai dichiarato `favoriteFoods` come Array, senza specificare il tipo (cioè `[String]`). In questo caso, `favoriteFoods` prende di default il tipo misto, e devi contrassegnarlo manualmente come modificato utilizzando `document.markModified('edited-field')`. Vedi il nostro <a href="https://www.freecodecamp.org/news/introduction-to-mongoose-for-mongodb-d2a7aa593c57/" target="_blank" rel="noopener noreferrer nofollow">articolo su Mongoose</a>.

# --hints--

Il Find-edit-update di un elemento dovrebbe avere successo

```js
  $.post(code + '/_api/find-edit-save', {
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

