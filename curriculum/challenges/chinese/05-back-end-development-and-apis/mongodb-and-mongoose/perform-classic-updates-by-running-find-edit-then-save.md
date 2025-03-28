---
id: 587d7fb8367417b2b2512c0e
title: '通过执行查询、编辑、保存来执行经典更新流程'
challengeType: 2
forumTopicId: 301541
dashedName: perform-classic-updates-by-running-find-edit-then-save
---

# --description--

In the good old days, this was what you needed to do if you wanted to edit a document, and be able to use it somehow (e.g. sending it back in a server response). Mongoose has a dedicated updating method: `Model.update()`. It is bound to the low-level mongo driver. It can bulk-edit many documents matching certain criteria, but it doesn’t send back the updated document, only a 'status' message. Furthermore, it makes model validations difficult, because it just directly calls the mongo driver.

# --instructions--

在这个挑战中，请使用参数 `personId` 作为字段，修改 `findEditThenSave` 方法，以在数据库中通过 `_id` 找到相应的 person（你可以使用之前挑战中的任何一种方法）。 将 `"hamburger"` 添加到它的 `favoriteFoods` 清单中（你可以使用 `Array.push()`）。 然后，在查询数据库的方法的回调里通过 `save()` 方法更新 `Person` 的数据。

**提示：** 如果你在 Schema 中将 `favoriteFoods` 声明为一个 Array（数组）并且没有指定数组的类型(如 `[String]`)， 那么此时，`favoriteFoods` 就会是默认的 Mixed 类型。如果想编辑它，就必须执行 `document.markModified('edited-field')`。 查看我们的 <a href="https://www.freecodecamp.org/news/introduction-to-mongoose-for-mongodb-d2a7aa593c57/" target="_blank" rel="noopener noreferrer nofollow">Mongoose 文章</a>。

# --hints--

应成功地对一条数据进行查找、编辑和更新

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

