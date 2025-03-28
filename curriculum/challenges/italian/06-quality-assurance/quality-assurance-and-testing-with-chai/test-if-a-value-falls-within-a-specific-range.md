---
id: 587d824c367417b2b2512c4f
title: Verificare se un valore cade all'interno di uno specifico intervallo
challengeType: 2
forumTopicId: 301598
dashedName: test-if-a-value-falls-within-a-specific-range
---

# --description--

As a reminder, this project is being built upon the following starter project on <a href="https://gitpod.io/?autostart=true#https://github.com/freeCodeCamp/boilerplate-mochachai/" target="_blank" rel="noopener noreferrer nofollow">Gitpod</a>, or cloned from <a href="https://github.com/freeCodeCamp/boilerplate-mochachai/" target="_blank" rel="noopener noreferrer nofollow">GitHub</a>. Learn <a href="https://forum.freecodecamp.org/t/how-to-use-gitpod-in-the-curriculum/668669#how-can-i-share-my-workspace-to-get-help-8" target="_blank" rel="noopener noreferrer nofollow">how to share your Gitpod workspace to get help</a>.

```javascript
.approximately(actual, expected, delta, [message])
```

Asserisce che `actual` sia uguale a `expected`, all'interno di un intervallo di +/- `delta`.

# --instructions--

All'interno di `tests/1_unit-tests.js`, sotto il test etichettato con `#10`, nella suite `Comparisons`, cambia ogni asserzione `assert` in `assert.approximately` per far passare il test (dovrebbe risultare `true`).

Scegli l'intervallo minimo (terzo parametro) per far passare sempre il test. Dovrebbe essere inferiore a 1.

# --hints--

Tutti i test dovrebbero essere superati.

```js
  $.get(code + '/_api/get-tests?type=unit&n=9').then(
    (data) => {
      assert.equal(data.state, 'passed');
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

Dovresti scegliere l'intervallo corretto per la prima asserzione - `approximately(actual, expected, range)`.

```js
  $.get(code + '/_api/get-tests?type=unit&n=9').then(
    (data) => {
      assert.equal(data.assertions[0].method, 'approximately');
      assert.equal(
        data.assertions[0].args[2],
        0.5,
        "weirdNumbers(0.5) is in the range (0.5, 1.5]. It's within 1 +/- 0.5"
      );
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

Dovresti scegliere l'intervallo corretto per la seconda asserzione - `approximately(actual, expected, range)`.

```js
  $.get(code + '/_api/get-tests?type=unit&n=9').then(
    (data) => {
      assert.equal(data.assertions[1].method, 'approximately');
      assert.equal(
        data.assertions[1].args[2],
        0.8,
        "weirdNumbers(0.2) is in the range (0.2, 1.2]. It's within 1 +/- 0.8"
      );
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

