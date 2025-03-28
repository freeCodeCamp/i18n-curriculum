---
id: 587d7fb7367417b2b2512c0c
title: Використайте model.findOne(), щоб повернути єдиний відповідний документ із бази даних
challengeType: 2
forumTopicId: 301545
dashedName: use-model-findone-to-return-a-single-matching-document-from-your-database
---

# --description--

`Model.findOne()` behaves like `Model.find()`, but it returns only one document (not an array), even if there are multiple items. It is especially useful when searching by properties that you have declared as unique.

# --instructions--

Змініть функцію `findOneByFood`, щоб знайти лише одну людину, якій подобається певна їжа, використовуючи `Model.findOne() -> Person`. Використайте аргумент функції `food` як ключ пошуку.

# --hints--

Пошук елемента має бути успішним

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

