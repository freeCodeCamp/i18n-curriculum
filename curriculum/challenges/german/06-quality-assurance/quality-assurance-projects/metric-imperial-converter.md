---
id: 587d8249367417b2b2512c41
title: Metric-Imperial Converter
challengeType: 4
forumTopicId: 301570
dashedName: metric-imperial-converter
---

# --description--

Build a full stack JavaScript app that is functionally similar to this: <a href="https://metric-imperial-converter.freecodecamp.rocks/" target="_blank" rel="noopener noreferrer nofollow">https://metric-imperial-converter.freecodecamp.rocks/</a>. Working on this project will involve you writing your code using one of the following methods:

- Clone <a href="https://github.com/freeCodeCamp/boilerplate-project-metricimpconverter/" target="_blank" rel="noopener noreferrer nofollow">this GitHub repo</a> and complete your project locally.
- Use <a href="https://gitpod.io/?autostart=true#https://github.com/freeCodeCamp/boilerplate-project-metricimpconverter/" target="_blank" rel="noopener noreferrer nofollow">our Gitpod starter project</a> to complete your project. Learn <a href="https://forum.freecodecamp.org/t/how-to-use-gitpod-in-the-curriculum/668669#how-can-i-share-my-workspace-to-get-help-8" target="_blank" rel="noopener noreferrer nofollow">how to share your Gitpod workspace to get help</a>.
- Use a site builder of your choice to complete the project. Be sure to incorporate all the files from our GitHub repo.

**Note:** This project's tests do not work when using `glitch.com`.

# --instructions--

- Complete the necessary conversion logic in `/controllers/convertHandler.js`
- Vervollständige die notwendigen Pfade in `/routes/api.js`
- Kopiere die `sample.env`-Datei in `.env` und setze die Variablen entsprechend
- Um die Test atomatisch auszuführeb, fügen Sie `NODE_ENV=test` in deiner `.env`-Datei hinzu
- To run the tests in the console, use the command `npm run test`.

Schreibe die folgenden Tests in `tests/1_unit-tests.js`:

- `convertHandler` should correctly read a whole number input.
- `convertHandler` sollte eine Dezimalzahl korrekt lesen.
- `convertHandler` sollte eine Bruchzahl-Eingabe korrekt lesen.
- `convertHandler` sollte eine die Eingabe einer Bruchzahl mit einer Dezimalzahl korrekt lesen.
- `convertHandler` sollte einen Fehler bei einem doppelten Bruch ausgeben (z.B. `3/2/3`).
- `convertHandler` sollte korrekt auf eine numerische Eingabe von `1` eingestellt werden, wenn keine numerische Eingabe angegeben wird.
- `convertHandler` sollte jede gültige Eingabeeinheit korrekt lesen.
- `convertHandler` sollte einen Fehler für eine ungültige Eingabeeinheit korrekt zurückgeben.
- `convertHandler` sollte die korrekte Rückgabewert für jede gültige Eingabeeinheit zurückgeben.
- `convertHandler` sollte für jede gültige Eingabeeinheit die buchstabierte String-Einheit korrekt zurückgeben.
- `convertHandler` sollte `gal` zu `L` korrekt umwandeln.
- `convertHandler` sollte `L` zu `gal` korrekt umwandeln.
- `convertHandler` sollte `mi` zu `km` korrekt umwandeln.
- `convertHandler` sollte `km` zu `mi` korrekt umwandeln.
- `convertHandler` sollte `lbs` zu `kg` korrekt umwandeln.
- `convertHandler` sollte `kg` zu `lbs` korrekt umwandeln.

Schreibe die folgenden Tests in `tests/2_functional-tests.js`:

- Convert a valid input such as `10L`: `GET` request to `/api/convert`.
- Konvertiere eine ungültige Eingabe wie `32g`: `GET` Anfrage in `/api/convert`.
- Konvertiere eine ungültige Zahl wie `3/7.2/4kg`: `GET` Anfrage zu `/api/convert`.
- Konvertiere eine ungültige Zahl UND Einheit wie `3/7.2/4kilomegagram`: `GET` Anfrage zu `/api/convert`.
- Konvertiere mit keiner Nummer wie `kg`: `GET` Anfrage zu `/api/convert`.

# --hints--

Du kannst dein eigenes Projekt angeben, nicht die URL des Beispiels.

```js
getUserInput => {
  assert(
    !/.*\/metric-imperial-converter\.freecodecamp\.rocks/.test(
      getUserInput('url')
    )
  );
};
```

Du kannst `GET` `/api/convert` mit einem einzigen Parameter, der eine angenommene Zahl und Einheit enthält und konvertieren. (Tipp: Teile die Eingabe auf, indem du nach dem Index des ersten Zeichens suchst, das den Beginn der Einheit markiert)

```js

```

Du kannst `'gal'` in `'L'` konvertieren und umgekehrt. (1 gal zu 3.78541 L)

```js
async getUserInput => {
  try {
    const data1 = await $.get(getUserInput('url') + '/api/convert?input=1gal');
    assert.equal(data1.returnNum, 3.78541);
    assert.equal(data1.returnUnit, 'L');
    const data2 = await $.get(getUserInput('url') + '/api/convert?input=10gal');
    assert.equal(data2.returnNum, 37.8541);
    assert.equal(data2.returnUnit, 'L');
    const data3 = await $.get(getUserInput('url') + '/api/convert?input=1l');
    assert.equal(data3.returnNum, 0.26417);
    assert.equal(data3.returnUnit, 'gal');
    const data4 = await $.get(getUserInput('url') + '/api/convert?input=10l');
    assert.equal(data4.returnNum, 2.64172);
    assert.equal(data4.returnUnit, 'gal');
  } catch (xhr) {
    throw new Error(xhr.responseText || xhr.message);
  }
};
```

Du kannst `'lbs'` in `'kg'` umwandeln und umgekehrt. (1 lbs zu 0.453592 kg)

```js
async getUserInput => {
  try {
    const data1 = await $.get(getUserInput('url') + '/api/convert?input=1lbs');
    assert.equal(data1.returnNum, 0.45359);
    assert.equal(data1.returnUnit, 'kg');
    const data2 = await $.get(getUserInput('url') + '/api/convert?input=10lbs');
    assert.equal(data2.returnNum, 4.53592);
    assert.equal(data2.returnUnit, 'kg');
    const data3 = await $.get(getUserInput('url') + '/api/convert?input=1kg');
    assert.equal(data3.returnNum, 2.20462);
    assert.equal(data3.returnUnit, 'lbs');
    const data4 = await $.get(getUserInput('url') + '/api/convert?input=10kg');
    assert.equal(data4.returnNum, 22.04624);
    assert.equal(data4.returnUnit, 'lbs');
  } catch (xhr) {
    throw new Error(xhr.responseText || xhr.message);
  }
};
```

Du kannst `'mi'` in `'km'` umwandeln und umgekehrt. (1 mi zu 1,60934 km)

```js
async getUserInput => {
  try {
    const data1 = await $.get(getUserInput('url') + '/api/convert?input=1mi');
    assert.equal(data1.returnNum, 1.60934);
    assert.equal(data1.returnUnit, 'km');
    const data2 = await $.get(getUserInput('url') + '/api/convert?input=10mi');
    assert.equal(data2.returnNum, 16.0934);
    assert.equal(data2.returnUnit, 'km');
    const data3 = await $.get(getUserInput('url') + '/api/convert?input=1km');
    assert.equal(data3.returnNum, 0.62137);
    assert.equal(data3.returnUnit, 'mi');
    const data4 = await $.get(getUserInput('url') + '/api/convert?input=10km');
    assert.equal(data4.returnNum, 6.21373);
    assert.equal(data4.returnUnit, 'mi');
  } catch (xhr) {
    throw new Error(xhr.responseText || xhr.message);
  }
};
```

Alle eingehenden Einheiten sollten in Groß- und Kleinbuchstaben akzeptiert werden, aber sollten mit Ausnahme von Liter, was als Großbuchstabe dargestellt werden sollte `'L'`, sowohl in der `initUnit` als auch `returnUnit` in Kleinbuchstaben zurückgegeben werden.

```js
async getUserInput => {
  try {
    const data1 = await $.get(getUserInput('url') + '/api/convert?input=1gal');
    assert.equal(data1.initUnit, 'gal');
    assert.equal(data1.returnUnit, 'L');
    const data2 = await $.get(getUserInput('url') + '/api/convert?input=10L');
    assert.equal(data2.initUnit, 'L');
    assert.equal(data2.returnUnit, 'gal');
    const data3 = await $.get(getUserInput('url') + '/api/convert?input=1l');
    assert.equal(data3.initUnit, 'L');
    assert.equal(data3.returnUnit, 'gal');
    const data4 = await $.get(getUserInput('url') + '/api/convert?input=10KM');
    assert.equal(data4.initUnit, 'km');
    assert.equal(data4.returnUnit, 'mi');
  } catch (xhr) {
    throw new Error(xhr.responseText || xhr.message);
  }
};
```

Wenn die Maßeinheit ungültig ist, wird `'invalid unit'` zurückgegeben.

```js
async getUserInput => {
  try {
    const data = await $.get(getUserInput('url') + '/api/convert?input=1min');
    assert(data.error === 'invalid unit' || data === 'invalid unit');
  } catch (xhr) {
    throw new Error(xhr.responseText || xhr.message);
  }
};
```

Wenn die Nummer ungültig ist, wird `'invalid number'` zurückgegeben.

```js
async getUserInput => {
  try {
    const data = await $.get(
      getUserInput('url') + '/api/convert?input=1//2gal'
    );
    assert(data.error === 'invalid number' || data === 'invalid number');
  } catch (xhr) {
    throw new Error(xhr.responseText || xhr.message);
  }
};
```

Wenn sowohl die Einheit als auch die Nummer ungültig sind, wird `'invalid number and unit'` zurückgegeben.

```js
async getUserInput => {
  try {
    const data = await $.get(
      getUserInput('url') + '/api/convert?input=1//2min'
    );
    assert(
      data.error === 'invalid number and unit' ||
        data === 'invalid number and unit'
    );
  } catch (xhr) {
    throw new Error(xhr.responseText || xhr.message);
  }
};
```

Du kannst Brüche, Dezimalzahlen oder beides in dem Parameter verwenden (z. B. 5, 1/2, 2.5/6), aber wenn nichts angegeben wird, wird er standardmäßig auf 1 gesetzt.

```js
async getUserInput => {
  try {
    const data1 = await $.get(getUserInput('url') + '/api/convert?input=mi');
    assert.approximately(data1.initNum, 1, 0.001);
    assert.approximately(data1.returnNum, 1.60934, 0.001);
    assert.equal(data1.returnUnit, 'km');
    const data2 = await $.get(getUserInput('url') + '/api/convert?input=1/5mi');
    assert.approximately(data2.initNum, 1 / 5, 0.1);
    assert.approximately(data2.returnNum, 0.32187, 0.001);
    assert.equal(data2.returnUnit, 'km');
    const data3 = await $.get(
      getUserInput('url') + '/api/convert?input=1.5/7km'
    );
    assert.approximately(data3.initNum, 1.5 / 7, 0.001);
    assert.approximately(data3.returnNum, 0.13315, 0.001);
    assert.equal(data3.returnUnit, 'mi');
    const data4 = await $.get(
      getUserInput('url') + '/api/convert?input=3/2.7km'
    );
    assert.approximately(data4.initNum, 3 / 2.7, 0.001);
    assert.approximately(data4.returnNum, 0.69041, 0.001);
    assert.equal(data4.returnUnit, 'mi');
  } catch (err) {
    throw new Error(err.responseText || err.message);
  }
};
```

Die Rückgabe besteht aus `initNum`, `initUnit`, `returnNum`, `returnUnit` und `string`, wobei die Einheiten im Format `'{initNum} {initUnitString} converts to {returnNum} {returnUnitString}'` angegeben und das Ergebnis auf 5 Dezimalstellen gerundet wird.

```js
async getUserInput => {
  try {
    const data = await $.get(getUserInput('url') + '/api/convert?input=2mi');
    assert.equal(data.initNum, 2);
    assert.equal(data.initUnit, 'mi');
    assert.approximately(data.returnNum, 3.21868, 0.001);
    assert.equal(data.returnUnit, 'km', 'returnUnit did not match');
    assert.equal(data.string, '2 miles converts to 3.21868 kilometers');
  } catch (xhr) {
    throw new Error(xhr.responseText || xhr.message);
  }
};
```

Alle 16 Tests zu den Einheiten sind abgeschlossen und wurden bestanden.

```js
async getUserInput => {
  try {
    const getTests = await $.get(getUserInput('url') + '/_api/get-tests');
    assert.isArray(getTests);
    const unitTests = getTests.filter(test => {
      return !!test.context.match(/Unit Tests/gi);
    });
    assert.isAtLeast(unitTests.length, 16, 'At least 16 tests passed');
    unitTests.forEach(test => {
      assert.equal(test.state, 'passed', 'Tests in Passed State');
      assert.isAtLeast(
        test.assertions.length,
        1,
        'At least one assertion per test'
      );
    });
  } catch (err) {
    throw new Error(err.responseText || err.message);
  }
};
```

Alle 5 Funktionstests sind abgeschlossen und wurden bestanden.

```js
async getUserInput => {
  try {
    const getTests = await $.get(getUserInput('url') + '/_api/get-tests');
    assert.isArray(getTests);
    const functTests = getTests.filter(test => {
      return !!test.context.match(/Functional Tests/gi);
    });
    assert.isAtLeast(functTests.length, 5, 'At least 5 tests passed');
    functTests.forEach(test => {
      assert.equal(test.state, 'passed', 'Tests in Passed State');
      assert.isAtLeast(
        test.assertions.length,
        1,
        'At least one assertion per test'
      );
    });
  } catch (err) {
    throw new Error(err.responseText || err.message);
  }
};
```

