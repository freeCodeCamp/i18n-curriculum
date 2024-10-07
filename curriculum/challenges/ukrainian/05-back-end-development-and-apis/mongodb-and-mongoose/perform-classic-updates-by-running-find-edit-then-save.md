---
id: 587d7fb8367417b2b2512c0e
title: 'Виконайте класичні оновлення, виконавши пошук, редагування і збереження'
challengeType: 2
forumTopicId: 301541
dashedName: perform-classic-updates-by-running-find-edit-then-save
---

# --description--

In the good old days, this was what you needed to do if you wanted to edit a document, and be able to use it somehow (e.g. sending it back in a server response). Mongoose has a dedicated updating method: `Model.update()`. It is bound to the low-level mongo driver. It can bulk-edit many documents matching certain criteria, but it doesn’t send back the updated document, only a 'status' message. Furthermore, it makes model validations difficult, because it just directly calls the mongo driver.

# --instructions--

Змініть функцію `findEditThenSave`, щоб знайти людину за `_id` (використайте будь-який із вищезгаданих методів), з параметром `personId` як ключ пошуку. Додайте `"hamburger"` до списку `favoriteFoods` (можна використати `Array.push()`). Потім, всередині зворотного виклику пошуку, `save()` (збережіть) оновлений `Person`.

**Примітка:** це може бути складно, якщо у своїй схемі ви оголосили `favoriteFoods` як масив, не вказуючи тип (тобто `[String]`). В такому випадку `favoriteFoods` за замовчуванням приймає змішаний тип, і вам потрібно вручну позначити його як відредагований за допомогою `document.markModified('edited-field')`. Див. нашу <a href="https://www.freecodecamp.org/news/introduction-to-mongoose-for-mongodb-d2a7aa593c57/" target="_blank" rel="noopener noreferrer nofollow">публікацію про Mongoose</a>.

# --hints--

Пошук-редагування-оновлення елемента має бути успішним

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

