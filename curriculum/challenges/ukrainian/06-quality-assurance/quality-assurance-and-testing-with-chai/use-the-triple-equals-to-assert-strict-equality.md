---
id: 587d824b367417b2b2512c4b
title: Використайте потрійну рівність для підтвердження строгої рівності
challengeType: 2
forumTopicId: 301610
dashedName: use-the-triple-equals-to-assert-strict-equality
---

# --description--

As a reminder, this project is being built upon the following starter project on <a href="https://gitpod.io/?autostart=true#https://github.com/freeCodeCamp/boilerplate-mochachai/" target="_blank" rel="noopener noreferrer nofollow">Gitpod</a>, or cloned from <a href="https://github.com/freeCodeCamp/boilerplate-mochachai/" target="_blank" rel="noopener noreferrer nofollow">GitHub</a>. Learn <a href="https://forum.freecodecamp.org/t/how-to-use-gitpod-in-the-curriculum/668669#how-can-i-share-my-workspace-to-get-help-8" target="_blank" rel="noopener noreferrer nofollow">how to share your Gitpod workspace to get help</a>.

`strictEqual()` порівнює об’єкти за допомогою `===`.

# --instructions--

У межах `tests/1_unit-tests.js` під тестом з міткою `#6` в наборі `Equality` змініть кожний `assert` на `assert.strictEqual` або `assert.notStrictEqual`, щоб пройти тест (повинен дорівнювати `true`). Не змінюйте аргументи, передані до тверджень.

# --hints--

Усі тести повинні пройти.

```js
  $.get(code + '/_api/get-tests?type=unit&n=5').then(
    (data) => {
      assert.equal(data.state, 'passed');
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

Ви повинні обрати правильний метод для першого твердження: `strictEqual` або `notStrictEqual`.

```js
  $.get(code + '/_api/get-tests?type=unit&n=5').then(
    (data) => {
      assert.equal(
        data.assertions[0].method,
        'notStrictEqual',
        'with strictEqual the type must match'
      );
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

Ви повинні обрати правильний метод для другого твердження: `strictEqual` або `notStrictEqual`.

```js
  $.get(code + '/_api/get-tests?type=unit&n=5').then(
    (data) => {
      assert.equal(data.assertions[1].method, 'strictEqual', '3*2 = 6...');
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

Ви повинні обрати правильний метод для третього твердження: `strictEqual` або `notStrictEqual`.

```js
  $.get(code + '/_api/get-tests?type=unit&n=5').then(
    (data) => {
      assert.equal(
        data.assertions[2].method,
        'strictEqual',
        "6 * '2' is 12. Types match !"
      );
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

Ви повинні обрати правильний метод для четвертого твердження: `strictEqual` або `notStrictEqual`.

```js
  $.get(code + '/_api/get-tests?type=unit&n=5').then(
    (data) => {
      assert.equal(
        data.assertions[3].method,
        'notStrictEqual',
        'Even if they have the same elements, the Arrays are notStrictEqual'
      );
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

