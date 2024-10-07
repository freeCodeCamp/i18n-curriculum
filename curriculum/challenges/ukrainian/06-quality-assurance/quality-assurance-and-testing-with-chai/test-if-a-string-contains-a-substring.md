---
id: 587d824d367417b2b2512c53
title: Перевірте, чи рядок містить підрядок
challengeType: 2
forumTopicId: 301597
dashedName: test-if-a-string-contains-a-substring
---

# --description--

As a reminder, this project is being built upon the following starter project on <a href="https://gitpod.io/?autostart=true#https://github.com/freeCodeCamp/boilerplate-mochachai/" target="_blank" rel="noopener noreferrer nofollow">Gitpod</a>, or cloned from <a href="https://github.com/freeCodeCamp/boilerplate-mochachai/" target="_blank" rel="noopener noreferrer nofollow">GitHub</a>.

`include()` та `notInclude()` працюють й для рядків! `include()` підтверджує, що рядок містить очікуваний підрядок.

# --instructions--

У межах `tests/1_unit-tests.js` під тестом з міткою `#14` в наборі `Strings` змініть кожний `assert` на `assert.include` або `assert.notInclude`, щоб пройти тест (повинен дорівнювати `true`). Не змінюйте аргументи, передані до тверджень.

# --hints--

Усі тести повинні пройти.

```js
(getUserInput) =>
  $.get(getUserInput('url') + '/_api/get-tests?type=unit&n=13').then(
    (data) => {
      assert.equal(data.state, 'passed');
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

Ви повинні обрати правильний метод для першого твердження: `include` або `notInclude`.

```js
(getUserInput) =>
  $.get(getUserInput('url') + '/_api/get-tests?type=unit&n=13').then(
    (data) => {
      assert.equal(
        data.assertions[0].method,
        'include',
        "'Arrow' contains 'row'..."
      );
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

Ви повинні обрати правильний метод для другого твердження: `include` або `notInclude`.

```js
(getUserInput) =>
  $.get(getUserInput('url') + '/_api/get-tests?type=unit&n=13').then(
    (data) => {
      assert.equal(
        data.assertions[1].method,
        'notInclude',
        "... a 'dart' doesn't contain a 'queue'"
      );
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

