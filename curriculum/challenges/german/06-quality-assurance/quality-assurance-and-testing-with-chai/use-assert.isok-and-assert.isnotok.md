---
id: 587d824b367417b2b2512c48
title: Verwende Assert.isOK und Assert.isNotOK
challengeType: 2
forumTopicId: 301607
dashedName: use-assert-isok-and-assert-isnotok
---

# --description--

As a reminder, this project is being built upon the following starter project cloned from <a href="https://github.com/freeCodeCamp/boilerplate-mochachai/" target="_blank" rel="noopener noreferrer nofollow">GitHub</a>.

`isOk()` prüft auf einen "wahren" Wert und `isNotOk()` prüft auf einen "falschen" Wert.

Um mehr über wahre und falsche Werte zu erfahren, versuche unsere <a href="https://www.freecodecamp.org/learn/javascript-algorithms-and-data-structures/basic-algorithm-scripting/falsy-bouncer" target="_blank" rel="noopener noreferrer nofollow">Falsy Bouncer</a> Aufgabe.

# --instructions--

Ändere innerhalb `tests/1_unit-tests.js` unter dem Test mit der Beschriftung `#3` in der `Basic Assertions`-Suite, jeden `assert` in `assert.isOk()` oder `assert.isNotOk()` um, damit der Test bestanden wird (sollte `true` ausgeben). Die an die Asserts übergebenen Argumente dürfen nicht verändert werden.

# --hints--

Alle Tests sollten erfolgreich sein.

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

Du solltest die richtige Methode für die erste Behauptung wählen - `isOk` vs. `isNotOk`.

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

Du solltest die richtige Methode für die zweite Behauptung wählen - `isOk` vs. `isNotOk`.

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

Du solltest die richtige Methode für die dritte Behauptung wählen - `isOk` vs. `isNotOk`.

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

