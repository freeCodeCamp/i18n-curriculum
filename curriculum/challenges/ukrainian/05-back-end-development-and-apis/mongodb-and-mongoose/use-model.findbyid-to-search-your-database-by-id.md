---
id: 587d7fb7367417b2b2512c0d
title: Використайте model.findById(), щоб обшукати базу даних за _id
challengeType: 2
forumTopicId: 301544
dashedName: use-model-findbyid-to-search-your-database-by-id
---

# --description--

When saving a document, MongoDB automatically adds the field `_id`, and set it to a unique alphanumeric key. Searching by `_id` is an extremely frequent operation, so Mongoose provides a dedicated method for it.

# --instructions--

Змініть `findPersonById`, щоб знайти лише одну людину, яка має заданий `_id`, використовуючи `Model.findById() -> Person`. Використайте аргумент функції `personId` як ключ пошуку.

# --hints--

Пошук елемента за Id має бути успішним

```js
  $.get(code + '/_api/find-by-id').then(
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

