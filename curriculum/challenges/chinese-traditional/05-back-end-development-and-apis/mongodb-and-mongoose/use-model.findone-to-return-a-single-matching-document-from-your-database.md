---
id: 587d7fb7367417b2b2512c0c
title: 使用 model.findOne() 從數據庫中返回一個單一匹配的 Document
challengeType: 2
forumTopicId: 301545
dashedName: use-model-findone-to-return-a-single-matching-document-from-your-database
---

# --description--

`Model.findOne()` behaves like `Model.find()`, but it returns only one document (not an array), even if there are multiple items. It is especially useful when searching by properties that you have declared as unique.

# --instructions--

修改 `findOneByFood` 函數，用 `Model.findOne() -> Person` 來查詢在收藏夾中有某種食物的一個人。 將函數參數中的 `food` 作爲檢索條件。

# --hints--

應成功地找到一個數據

```js
  $.post(code + '/_api/find-one-by-food', {
    name: 'Gary',
    age: 46,
    favoriteFoods: ['chicken salad']
  }).then(
    (data) => {
      assert.equal(data.name, 'Gary', 'item.name is not what expected');
      assert.deepEqual(
        data.favoriteFoods,
        ['chicken salad'],
        'item.favoriteFoods is not what expected'
      );
      assert.equal(data.__v, 0, 'The item should be not previously edited');
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

