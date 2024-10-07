---
id: 587d7fb8367417b2b2512c10
title: Model.findByIdAndRemove を使用して 1 つのドキュメントを削除する
challengeType: 2
forumTopicId: 301539
dashedName: delete-one-document-using-model-findbyidandremove
---

# --description--

`findByIdAndRemove` and `findOneAndRemove` are like the previous update methods. They pass the removed document to the db. As usual, use the function argument `personId` as the search key.

# --instructions--

`removeById` 関数を変更して、1 人の個人を `_id` で削除してください。 `findByIdAndRemove()` または `findOneAndRemove()` メソッドのいずれかを使用する必要があります。

# --hints--

アイテムを正しく削除する必要があります。

```js
(getUserInput) =>
  $.post(getUserInput('url') + '/_api/remove-one-person', {
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

