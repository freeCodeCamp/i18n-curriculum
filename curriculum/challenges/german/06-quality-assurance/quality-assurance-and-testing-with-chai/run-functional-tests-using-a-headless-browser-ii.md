---
id: 5f8884f4c46685731aabfc41
title: Funktionstests mit einem Headless Browser II durchführen
challengeType: 2
forumTopicId: 301594
dashedName: run-functional-tests-using-a-headless-browser-ii
---

# --description--

As a reminder, this project is being built upon the following starter project on <a href="https://gitpod.io/?autostart=true#https://github.com/freeCodeCamp/boilerplate-mochachai/" target="_blank" rel="noopener noreferrer nofollow">Gitpod</a>, or cloned from <a href="https://github.com/freeCodeCamp/boilerplate-mochachai/" target="_blank" rel="noopener noreferrer nofollow">GitHub</a>. Learn <a href="https://forum.freecodecamp.org/t/how-to-use-gitpod-in-the-curriculum/668669#how-can-i-share-my-workspace-to-get-help-8" target="_blank" rel="noopener noreferrer nofollow">how to share your Gitpod workspace to get help</a>.

# --instructions--

Automatisiere Folgendes innerhalb von `tests/2_functional-tests.js`, in dem `'Submit the surname "Vespucci" in the HTML form'` Test (`// #6`):

1.  Fill in the form with the surname `Vespucci`
2.  Press the submit button

Und innerhalb des `pressButton` Callback:

1.  Assert that status is OK `200`
2.  Prüfe, ob der Text innerhalb des Elements `span#name` `'Amerigo'` ist
3.  Prüfe, ob der Text innerhalb des Elements `span#surname` `'Vespucci'` ist
4.  Überprüfe, ob das/die Element(e) `span#dates` existieren und deren Zahl `1` ist

Vergiss nicht, den `assert.fail()`-Aufruf zu entfernen.

# --hints--

Alle Tests sollten erfolgreich sein.

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

Du solltest überprüfen, ob die Anfrage des Headless Browsers erfolgreich war.

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

Prüfe, ob der Text innerhalb des Elements `span#name` `'Amerigo'` ist.

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

Prüfe, ob der Text innerhalb des Elements `span#surname` `'Vespucci'` ist.

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

Du solltest überprüfen, ob das Element `span#dates` existiert und seine Anzahl 1 ist.

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

