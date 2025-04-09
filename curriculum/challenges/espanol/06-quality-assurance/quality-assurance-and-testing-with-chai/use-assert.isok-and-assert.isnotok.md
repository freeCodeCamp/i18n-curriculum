---
id: 587d824b367417b2b2512c48
title: Use Assert.isOK y Assert.isNotOK
challengeType: 2
forumTopicId: 301607
dashedName: use-assert-isok-and-assert-isnotok
---

# --description--

As a reminder, this project is being built upon the following starter project cloned from <a href="https://github.com/freeCodeCamp/boilerplate-mochachai/" target="_blank" rel="noopener noreferrer nofollow">GitHub</a>.

`isOk()` prueba un valor verdadero y `isNotOk()` prueba un valor falso.

Para aprender más sobre los valores verdaderos y falsos, prueba nuestro desafío de <a href="https://www.freecodecamp.org/learn/javascript-algorithms-and-data-structures/basic-algorithm-scripting/falsy-bouncer" target="_blank" rel="noopener noreferrer nofollow">Falsy Bouncer</a>.

# --instructions--

Dentro de `tests/1_unit-tests.js` bajo la prueba etiquetada `#3` en la suite `Basic Assertions`, cambia cada `assert` a `assert.isOk()` o a `assert.isNotOk()` para hacer que la prueba pase (debe evaluarse como `true`). No cambies los argumentos pasados a las aserciones.

# --hints--

Se deben pasar todos los tests.

```js
  $.get(code + '/_api/get-tests?type=unit&n=2').then(
    (data) => {
      assert.equal(data.state, 'passed');
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

Debe elegir el método correcto para la primera aserción - `isOk` vs `isNotOk`.

```js
  $.get(code + '/_api/get-tests?type=unit&n=2').then(
    (data) => {
      assert.equal(data.assertions[0].method, 'isNotOk', 'Null is falsy');
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

Debe elegir el método correcto para la segunda aserción - `isOk` vs `isNotOk`.

```js
  $.get(code + '/_api/get-tests?type=unit&n=2').then(
    (data) => {
      assert.equal(data.assertions[1].method, 'isOk', 'A string is truthy');
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

Debe elegir el método correcto para la tercera aserción - `isOk` vs `isNotOk`.

```js
  $.get(code + '/_api/get-tests?type=unit&n=2').then(
    (data) => {
      assert.equal(data.assertions[2].method, 'isOk', 'true is truthy');
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

