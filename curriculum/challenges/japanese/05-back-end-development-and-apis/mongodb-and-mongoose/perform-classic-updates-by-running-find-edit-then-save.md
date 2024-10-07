---
id: 587d7fb8367417b2b2512c0e
title: '検索、編集、保存により古典的な更新を実行する'
challengeType: 2
forumTopicId: 301541
dashedName: perform-classic-updates-by-running-find-edit-then-save
---

# --description--

In the good old days, this was what you needed to do if you wanted to edit a document, and be able to use it somehow (e.g. sending it back in a server response). Mongoose has a dedicated updating method: `Model.update()`. It is bound to the low-level mongo driver. It can bulk-edit many documents matching certain criteria, but it doesn’t send back the updated document, only a 'status' message. Furthermore, it makes model validations difficult, because it just directly calls the mongo driver.

# --instructions--

`findEditThenSave` 関数を変更し、パラメーター `personId` を検索キーとして `_id` で個人を検索してください (上記メソッドのいずれかを使用してください) 。 検索したその個人の `favoriteFoods` リストに、`"hamburger"` を追加してください (`Array.push()` を使用することが可能です)。 そして、検索コールバックの中で、更新した `Person` を `save()` してください。

**注:** スキーマでタイプ (たとえば、`[String]`) を指定せずに `favoriteFoods` を配列として宣言した場合は、多少わかりにくくなるかもしれません。 その場合、`favoriteFoods` はデフォルトで Mixed タイプに設定されるので、`document.markModified('edited-field')` を使用して手動で編集済みにマークする必要があります。 <a href="https://www.freecodecamp.org/news/introduction-to-mongoose-for-mongodb-d2a7aa593c57/" target="_blank" rel="noopener noreferrer nofollow">Mongoose の記事</a>を参照してください。

# --hints--

アイテムの検索、編集、更新を正しく行う必要があります。

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

