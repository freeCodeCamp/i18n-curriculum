---
id: 587d7fb7367417b2b2512c0b
title: Використайте model.find(), щоб обшукати базу даних
challengeType: 2
forumTopicId: 301543
dashedName: use-model-find-to-search-your-database
---

# --description--

In its simplest usage, `Model.find()` accepts a query document (a JSON object) as the first argument, then a callback. It returns an array of matches. It supports an extremely wide range of search options. Read more in the docs.

# --instructions--

Змініть функцію `findPeopleByName`, щоб знайти всіх людей з даним іменем, використовуючи <code>Model.find() -\> [Person]</code>

Використайте аргумент функції `personName` як ключ пошуку.

# --hints--

Пошук усіх елементів, що відповідають критеріям, має бути успішними

```js
(getUserInput) =>
  $.post(getUserInput('url') + '/_api/find-all-by-name', {
    name: 'r@nd0mN4m3',
    age: 24,
    favoriteFoods: ['pizza']
  }).then(
    (data) => {
      assert.isArray(data, 'the response should be an Array');
      assert.equal(
        data[0].name,
        'r@nd0mN4m3',
        'item.name is not what expected'
      );
      assert.equal(data[0].__v, 0, 'The item should be not previously edited');
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

