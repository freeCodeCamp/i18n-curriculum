---
id: 587d824d367417b2b2512c51
title: Testar se um array contém um item
challengeType: 2
forumTopicId: 301603
dashedName: test-if-an-array-contains-an-item
---

# --description--

As a reminder, this project is being built upon the following starter project on <a href="https://gitpod.io/?autostart=true#https://github.com/freeCodeCamp/boilerplate-mochachai/" target="_blank" rel="noopener noreferrer nofollow">Gitpod</a>, or cloned from <a href="https://github.com/freeCodeCamp/boilerplate-mochachai/" target="_blank" rel="noopener noreferrer nofollow">GitHub</a>. Learn <a href="https://forum.freecodecamp.org/t/how-to-use-gitpod-in-the-curriculum/668669#how-can-i-share-my-workspace-to-get-help-8" target="_blank" rel="noopener noreferrer nofollow">how to share your Gitpod workspace to get help</a>.

# --instructions--

Em `tests/1_unit-tests.js`, no teste de número `#12`, no grupo de testes `Arrays`, modifique cada `assert` para `assert.include` ou para `assert.notInclude`, de maneira que cada teste passe (seja `true`). Não altere os argumentos passados para as assertivas.

# --hints--

Todos os testes devem passar.

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

Você deve escolher o método correto para a primeira afirmação - `include` ou `notInclude`.

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

Você deve escolher o método correto para a segunda afirmação - `include` ou `notInclude`.

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

