---
id: 587d824d367417b2b2512c51
title: Перевірте, чи масив містить предмет
challengeType: 2
forumTopicId: 301603
dashedName: test-if-an-array-contains-an-item
---

# --description--

As a reminder, this project is being built upon the following starter project cloned from <a href="https://github.com/freeCodeCamp/boilerplate-mochachai/" target="_blank" rel="noopener noreferrer nofollow">GitHub</a>.

# --instructions--

У межах `tests/1_unit-tests.js` під тестом з міткою `#12` в наборі `Arrays` змініть кожний `assert` на `assert.include` або `assert.notInclude`, щоб пройти тест (повинен дорівнювати `true`). Не змінюйте аргументи, які передаються до тверджень.

# --hints--

Всі тести повинні бути успішно пройдені.

```js
  $.get(code + '/_api/get-tests?type=unit&n=11').then(
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
  $.get(code + '/_api/get-tests?type=unit&n=11').then(
    (data) => {
      assert.equal(
        data.assertions[0].method,
        'notInclude',
        "It's summer in july..."
      );
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

Ви повинні обрати правильний метод для другого твердження: `include` або `notInclude`.

```js
  $.get(code + '/_api/get-tests?type=unit&n=11').then(
    (data) => {
      assert.equal(
        data.assertions[1].method,
        'include',
        'JavaScript is a backend language !!'
      );
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

