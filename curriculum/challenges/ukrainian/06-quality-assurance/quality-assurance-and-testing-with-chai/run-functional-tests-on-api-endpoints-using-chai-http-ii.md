---
id: 587d824f367417b2b2512c59
title: Запустіть функціональні тести на кінцевих точках API за допомогою Chai-HTTP II
challengeType: 2
forumTopicId: 301592
dashedName: run-functional-tests-on-api-endpoints-using-chai-http-ii
---

# --description--

As a reminder, this project is being built upon the following starter project on <a href="https://gitpod.io/?autostart=true#https://github.com/freeCodeCamp/boilerplate-mochachai/" target="_blank" rel="noopener noreferrer nofollow">Gitpod</a>, or cloned from <a href="https://github.com/freeCodeCamp/boilerplate-mochachai/" target="_blank" rel="noopener noreferrer nofollow">GitHub</a>. Learn <a href="https://forum.freecodecamp.org/t/how-to-use-gitpod-in-the-curriculum/668669#how-can-i-share-my-workspace-to-get-help-8" target="_blank" rel="noopener noreferrer nofollow">how to share your Gitpod workspace to get help</a>.

# --instructions--

У межах `tests/2_functional-tests.js` змініть `'Test GET /hello with your name'` тесту (`// #2`) для підтвердження `status` та `text`, щоб пройти тест.

Надішліть своє ім’я як запит URL, додавши `?name=<your_name>` до маршруту. Кінцева точка відповідає `'hello <your_name>'`.

# --hints--

Всі тести повинні бути успішно пройдені

```js
  $.get(code + '/_api/get-tests?type=functional&n=1').then(
    (data) => {
      assert.equal(data.state, 'passed');
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

Ви повинні перевірити, чи `res.status` == 200

```js
  $.get(code + '/_api/get-tests?type=functional&n=1').then(
    (data) => {
      assert.equal(data.assertions[0].method, 'equal');
      assert.equal(data.assertions[0].args[0], 'res.status');
      assert.equal(data.assertions[0].args[1], '200');
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

Ви повинні перевірити, чи `res.text` == `'hello <your_name>'`

```js
  $.get(code + '/_api/get-tests?type=functional&n=1').then(
    (data) => {
      assert.equal(data.assertions[1].method, 'equal');
      assert.equal(data.assertions[1].args[0], 'res.text');
      assert.match(data.assertions[1].args[1], /hello [\w\d_-]/);
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

