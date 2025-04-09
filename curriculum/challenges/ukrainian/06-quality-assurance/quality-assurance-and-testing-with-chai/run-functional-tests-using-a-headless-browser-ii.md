---
id: 5f8884f4c46685731aabfc41
title: Запустіть функціональні тести за допомогою headless браузера II
challengeType: 2
forumTopicId: 301594
dashedName: run-functional-tests-using-a-headless-browser-ii
---

# --description--

As a reminder, this project is being built upon the following starter project cloned from <a href="https://github.com/freeCodeCamp/boilerplate-mochachai/" target="_blank" rel="noopener noreferrer nofollow">GitHub</a>.

# --instructions--

У межах `tests/2_functional-tests.js` у тесті `'Submit the surname "Vespucci" in the HTML form'` (`// #6`) автоматизуйте наступне:

1.  Fill in the form with the surname `Vespucci`
2.  Press the submit button

У межах кнопки зворотного виклику `pressButton`:

1.  Assert that status is OK `200`
2.  Підтвердьте, що текстом всередині елемента `span#name` є `'Amerigo'`
3.  Підтвердьте, що текстом всередині елемента `span#surname` є `'Vespucci'`
4.  Підтвердьте, що елемент(и) `span#dates` існують та їхня кількість дорівнює `1`

Не забудьте видалити виклик `assert.fail()`.

# --hints--

Всі тести повинні бути успішно пройдені.

```js
  $.get(code + '/_api/get-tests?type=functional&n=6').then(
    (data) => {
      assert.equal(data.state, 'passed');
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

Ви повинні підтвердити, що запит headless браузера був успішним.

```js
  $.get(code + '/_api/get-tests?type=functional&n=6').then(
    (data) => {
      assert.equal(data.assertions[0].method, 'browser.success');
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

Ви повинні підтвердити, що текстом всередині елемента `span#name` є `'Amerigo'`.

```js
  $.get(code + '/_api/get-tests?type=functional&n=6').then(
    (data) => {
      assert.equal(data.assertions[1].method, 'browser.text');
      assert.match(data.assertions[1].args[0], /('|")span#name\1/);
      assert.match(data.assertions[1].args[1], /('|")Amerigo\1/);
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

Ви повинні підтвердити, що текстом всередині елемента `span#surname` є `'Vespucci'`.

```js
  $.get(code + '/_api/get-tests?type=functional&n=6').then(
    (data) => {
      assert.equal(data.assertions[2].method, 'browser.text');
      assert.match(data.assertions[2].args[0], /('|")span#surname\1/);
      assert.match(data.assertions[2].args[1], /('|")Vespucci\1/);
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

Ви повинні підтвердити, що існує лише один елемент `span#dates`.

```js
  $.get(code + '/_api/get-tests?type=functional&n=6').then(
    (data) => {
      assert.equal(data.assertions[3].method, 'browser.elements');
      assert.match(data.assertions[3].args[0], /('|")span#dates\1/);
      assert.equal(data.assertions[3].args[1], 1);
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

