---
id: 587d7fb9367417b2b2512c12
title: 通过链式调用辅助查询函数来缩小搜索结果
challengeType: 2
forumTopicId: 301533
dashedName: chain-search-query-helpers-to-narrow-search-results
---

# --description--

If you don’t pass the callback as the last argument to `Model.find()` (or to the other search methods), the query is not executed. You can store the query in a variable for later use. This kind of object enables you to build up a query using chaining syntax. The actual db search is executed when you finally chain the method `.exec()`. You always need to pass your callback to this last method. There are many query helpers, here we'll use the most commonly used.

# --instructions--

修改 `queryChain` 函数来查询喜欢 `foodToSearch` 食物的人。 同时，需要将查询结果按 `name` 属性排序， 查询结果应限制在两个 document 内，并隐藏 age 属性。 请链式调用 `.find()`、`.sort()`、`.limit()` 和 `.select()`，并在最后调用 `.exec()`， 并将 `done(err, data)` 回调函数传入 `exec()`。

# --hints--

应该成功地链式调用辅助查询函数。

```js
  $.ajax({
    url: code + '/_api/query-tools',
    type: 'POST',
    contentType: 'application/json',
    data: JSON.stringify([
      { name: 'Pablo', age: 26, favoriteFoods: ['burrito', 'hot-dog'] },
      { name: 'Bob', age: 23, favoriteFoods: ['pizza', 'nachos'] },
      { name: 'Ashley', age: 32, favoriteFoods: ['steak', 'burrito'] },
      { name: 'Mario', age: 51, favoriteFoods: ['burrito', 'prosciutto'] }
    ])
  }).then(
    (data) => {
      assert.isArray(data, 'the response should be an Array');
      assert.equal(
        data.length,
        2,
        'the data array length is not what expected'
      );
      assert.notProperty(
        data[0],
        'age',
        'The returned first item has too many properties'
      );
      assert.equal(
        data[0].name,
        'Ashley',
        'The returned first item name is not what expected'
      );
      assert.notProperty(
        data[1],
        'age',
        'The returned second item has too many properties'
      );
      assert.equal(
        data[1].name,
        'Mario',
        'The returned second item name is not what expected'
      );
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

