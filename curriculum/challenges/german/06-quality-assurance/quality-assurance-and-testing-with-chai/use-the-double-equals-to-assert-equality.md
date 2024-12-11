---
id: 587d824b367417b2b2512c4a
title: Verwende das Doppel-Gleichheitszeichen, um Gleichheit zu bestätigen
challengeType: 2
forumTopicId: 301609
dashedName: use-the-double-equals-to-assert-equality
---

# --description--

As a reminder, this project is being built upon the following starter project on <a href="https://gitpod.io/?autostart=true#https://github.com/freeCodeCamp/boilerplate-mochachai/" target="_blank" rel="noopener noreferrer nofollow">Gitpod</a>, or cloned from <a href="https://github.com/freeCodeCamp/boilerplate-mochachai/" target="_blank" rel="noopener noreferrer nofollow">GitHub</a>. Learn <a href="https://forum.freecodecamp.org/t/how-to-use-gitpod-in-the-curriculum/668669#how-can-i-share-my-workspace-to-get-help-8" target="_blank" rel="noopener noreferrer nofollow">how to share your Gitpod workspace to get help</a>.

`equal()` vergleicht Objekte unter Verwendung von `==`.

# --instructions--

Ändere innerhalb `tests/1_unit-tests.js` unter dem Test mit der Beschriftung `#5` in der `Equality`-Suite, jeden `assert` in `assert.equal` oder `assert.notEqual` um, damit der Test bestanden wird (sollte `true` ausgeben). Ändere nicht die Argumente, die an die Assertions übergeben werden.

# --hints--

Alle Tests sollten bestehen.

```js
(getUserInput) =>
  $.get(getUserInput('url') + '/_api/get-tests?type=unit&n=4').then(
    (data) => {
      assert.equal(data.state, 'passed');
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

Du solltest die richtige Methode für die erste Behauptung wählen - `equal` vs. `notEqual`.

```js
(getUserInput) =>
  $.get(getUserInput('url') + '/_api/get-tests?type=unit&n=4').then(
    (data) => {
      assert.equal(
        data.assertions[0].method,
        'equal',
        'Numbers are coerced into strings with == '
      );
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

Du solltest die richtige Methode für die zweite Behauptung wählen - `equal` vs. `notEqual`.

```js
(getUserInput) =>
  $.get(getUserInput('url') + '/_api/get-tests?type=unit&n=4').then(
    (data) => {
      assert.equal(
        data.assertions[1].method,
        'notEqual',
        ' == compares object references'
      );
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

Du solltest die richtige Methode für die dritte Behauptung wählen - `equal` vs. `notEqual`.

```js
(getUserInput) =>
  $.get(getUserInput('url') + '/_api/get-tests?type=unit&n=4').then(
    (data) => {
      assert.equal(
        data.assertions[2].method,
        'equal',
        "6 * '2' is 12 ! It should be equal to '12'"
      );
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

Du solltest die richtige Methode für die vierte Behauptung wählen - `equal` vs. `notEqual`.

```js
(getUserInput) =>
  $.get(getUserInput('url') + '/_api/get-tests?type=unit&n=4').then(
    (data) => {
      assert.equal(data.assertions[3].method, 'notEqual', "6 + '2' is '62'...");
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

