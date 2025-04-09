---
id: 5f8884f4c46685731aabfc41
title: 使用 無頭瀏覽器 II 運行功能測試
challengeType: 2
forumTopicId: 301594
dashedName: run-functional-tests-using-a-headless-browser-ii
---

# --description--

As a reminder, this project is being built upon the following starter project cloned from <a href="https://github.com/freeCodeCamp/boilerplate-mochachai/" target="_blank" rel="noopener noreferrer nofollow">GitHub</a>.

# --instructions--

在 `tests/2_functional-tests.js` 中，在 `'Submit the surname "Vespucci" in the HTML form'` 測試（`// #6`），自動執行以下操作：

1.  Fill in the form with the surname `Vespucci`
2.  Press the submit button

在 `pressButton` 回調中：

1.  Assert that status is OK `200`
2.  斷言元素 `span#name` 中的文本是 `'Amerigo'`。
3.  斷言元素 `span#surname` 元素中的文本是 `'Vespucci'`。
4.  斷言有 `span#dates` 元素，它們的計數是 `1`。

不要忘記刪除 `assert.fail()` 調用。

# --hints--

應通過所有測試。

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

應斷言無頭瀏覽器成功執行請求。

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

應斷言元素 `span#name` 中的文本是 `'Amerigo'`。

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

應斷言元素 `span#surname` 中的文本是 `'Vespucci'`。

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

應該斷言元素 `span#dates` 存在，且它的值爲 1。

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

