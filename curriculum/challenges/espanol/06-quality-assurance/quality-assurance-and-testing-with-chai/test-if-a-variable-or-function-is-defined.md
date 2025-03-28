---
id: 587d824b367417b2b2512c47
title: Comprueba si una variable o función está definida
challengeType: 2
forumTopicId: 301602
dashedName: test-if-a-variable-or-function-is-defined
---

# --description--

As a reminder, this project is being built upon the following starter project on <a href="https://gitpod.io/?autostart=true#https://github.com/freeCodeCamp/boilerplate-mochachai/" target="_blank" rel="noopener noreferrer nofollow">Gitpod</a>, or cloned from <a href="https://github.com/freeCodeCamp/boilerplate-mochachai/" target="_blank" rel="noopener noreferrer nofollow">GitHub</a>. Learn <a href="https://forum.freecodecamp.org/t/how-to-use-gitpod-in-the-curriculum/668669#how-can-i-share-my-workspace-to-get-help-8" target="_blank" rel="noopener noreferrer nofollow">how to share your Gitpod workspace to get help</a>.

# --instructions--

Dentro de `tests/1_unit-tests.js` bajo el test etiquetado `#2` en el suite `Basic Assertions`, cambia cada `assert` a `assert.isDefined()` o `assert.isUndefined()` para hacer que el test pase (debe evaluarse como `true`). No modifiques los argumentos pasados ​​a los verificadores.

# --hints--

Todas los test deben pasar.

```js
  $.get(code + '/_api/get-tests?type=unit&n=1').then(
    (data) => {
      assert.equal(data.state, 'passed');
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

Debe elegir el método correcto para la primera aserción - `isDefined` vs `isUndefined`.

```js
  $.get(code + '/_api/get-tests?type=unit&n=1').then(
    (data) => {
      assert.equal(
        data.assertions[0].method,
        'isDefined',
        'Null is not undefined'
      );
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

Debe elegir el método correcto para la segunda aserción - `isDefined` vs `isUndefined`.

```js
  $.get(code + '/_api/get-tests?type=unit&n=1').then(
    (data) => {
      assert.equal(
        data.assertions[1].method,
        'isUndefined',
        'Undefined is undefined'
      );
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

Debe elegir el método correcto para la tercera aserción - `isDefined` vs `isUndefined`.

```js
  $.get(code + '/_api/get-tests?type=unit&n=1').then(
    (data) => {
      assert.equal(
        data.assertions[2].method,
        'isDefined',
        'A string is not undefined'
      );
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

