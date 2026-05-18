---
id: 5e601bf95ac9d0ecd8b94afd
title: Sudoku-Löser
challengeType: 4
forumTopicId: 462357
dashedName: sudoku-solver
---

# --description--

Erstellen Sie eine Full-Stack-JavaScript-Anwendung, die funktional ähnlich ist wie diese: <a href="https://sudoku-solver.freecodecamp.rocks/" target="_blank" rel="noopener noreferrer nofollow">https://sudoku-solver.freecodecamp.rocks/</a>. Die Arbeit an diesem Projekt beinhaltet, dass Sie Ihren Code mit einer der folgenden Methoden schreiben:

-   Klonen Sie <a href="https://github.com/freecodecamp/boilerplate-project-sudoku-solver" target="_blank" rel="noopener noreferrer nofollow">dieses GitHub-Repository</a> und vervollständigen Sie Ihr Projekt lokal.
-   Verwenden Sie einen Website-Builder Ihrer Wahl, um das Projekt abzuschließen. Stellen Sie sicher, dass Sie alle Dateien aus unserem GitHub-Repository einbinden.

# --instructions--

- Alle Logik für das Puzzle kann in `/controllers/sudoku-solver.js` geschrieben werden
  - Die `validate`-Funktion soll einen gegebenen Puzzle-String entgegennehmen und prüfen, ob er 81 gültige Zeichen für die Eingabe enthält.
  - Die `check`-Funktionen sollen gegen den *aktuellen* Zustand des Spielfelds validieren.
  - Die `solve`-Funktion soll das Lösen eines beliebigen gültigen Puzzle-Strings übernehmen, nicht nur der Testeingaben und Lösungen. Sie sollen die Logik zum Lösen selbst schreiben.
- Alle Routing-Logik kann in `/routes/api.js` geschrieben werden
- Sehen Sie sich die `puzzle-strings.js`-Datei in `/controllers` für einige Beispielpuzzles an, die Ihre Anwendung lösen soll
- Um die Tests für diese Aufgabe auf dieser Seite auszuführen, setzen Sie `NODE_ENV` in der `test`-Datei auf `.env` ohne Anführungszeichen
- Um die Tests in der Konsole auszuführen, verwenden Sie den Befehl `npm run test`.

Schreiben Sie die folgenden Tests in `tests/1_unit-tests.js`:

-   Die Logik verarbeitet einen gültigen Puzzle-String mit 81 Zeichen
-   Die Logik verarbeitet einen Puzzle-String mit ungültigen Zeichen (nicht 1-9 oder `.`)
-   Die Logik verarbeitet einen Puzzle-String, der nicht 81 Zeichen lang ist
-   Die Logik verarbeitet eine gültige Zeilenplatzierung
-   Die Logik verarbeitet eine ungültige Zeilenplatzierung
-   Die Logik verarbeitet eine gültige Spaltenplatzierung
-   Die Logik verarbeitet eine ungültige Spaltenplatzierung
-   Die Logik verarbeitet eine gültige Region (3x3-Gitter) Platzierung
-   Die Logik verarbeitet eine ungültige Region (3x3-Gitter) Platzierung
-   Gültige Puzzle-Strings bestehen den Löser
-   Ungültige Puzzle-Strings schlagen beim Löser fehl
-   Der Löser liefert die erwartete Lösung für ein unvollständiges Puzzle

Schreiben Sie die folgenden Tests in `tests/2_functional-tests.js`

-   Lösen eines Puzzles mit gültigem Puzzle-String: POST-Anfrage an `/api/solve`
-   Lösen eines Puzzles mit fehlendem Puzzle-String: POST-Anfrage an `/api/solve`
-   Lösen eines Puzzles mit ungültigen Zeichen: POST-Anfrage an `/api/solve`
-   Lösen eines Puzzles mit falscher Länge: POST-Anfrage an `/api/solve`
-   Lösen eines Puzzles, das nicht gelöst werden kann: POST-Anfrage an `/api/solve`
-   Überprüfen einer Puzzle-Platzierung mit allen Feldern: POST-Anfrage an `/api/check`
-   Überprüfen einer Puzzle-Platzierung mit einem einzelnen Konflikt: POST-Anfrage an `/api/check`
-   Überprüfen einer Puzzle-Platzierung mit mehreren Konflikten: POST-Anfrage an `/api/check`
-   Überprüfen einer Puzzle-Platzierung mit allen Konflikten: POST-Anfrage an `/api/check`
-   Überprüfen einer Puzzle-Platzierung mit fehlenden Pflichtfeldern: POST-Anfrage an `/api/check`
-   Überprüfen einer Puzzle-Platzierung mit ungültigen Zeichen: POST-Anfrage an `/api/check`
-   Überprüfen einer Puzzle-Platzierung mit falscher Länge: POST-Anfrage an `/api/check`
-   Überprüfen einer Puzzle-Platzierung mit ungültiger Platzierungskoordinate: POST-Anfrage an `/api/check`
-   Überprüfen einer Puzzle-Platzierung mit ungültigem Platzierungswert: POST-Anfrage an `/api/check`

# --hints--

Sie sollten Ihr eigenes Projekt bereitstellen, nicht die Beispiel-URL.

```js
  const url = code;
  assert(!/.*\/sudoku-solver\.freecodecamp\.rocks/.test(code));
```

Sie können `POST` `/api/solve` mit Formulardaten verwenden, die `puzzle` enthalten, welcher ein String mit einer Kombination aus Zahlen (1-9) und Punkten `.` zur Darstellung leerer Felder ist. Das zurückgegebene Objekt enthält eine `solution`-Eigenschaft mit dem gelösten Puzzle.

```js
  const input =
    '..9..5.1.85.4....2432......1...69.83.9.....6.62.71...9......1945....4.37.4.3..6..';
  const output =
    '769235418851496372432178956174569283395842761628713549283657194516924837947381625';
  const data = await fetch(code + '/api/solve', {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify({ puzzle: input })
  });
  const parsed = await data.json();
  assert.property(parsed, 'solution');
  assert.equal(parsed.solution, output);
```

Wenn das an `/api/solve` übergebene Objekt `puzzle` fehlt, ist der zurückgegebene Wert `{ error: 'Required field missing' }`

```js
  const input =
    '..9..5.1.85.4....2432......1...69.83.9.....6.62.71...9......1945....4.37.4.3..6..';
  const output = 'Required field missing';
  const data = await fetch(code + '/api/solve', {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify({ notpuzzle: input })
  });
  const parsed = await data.json();
  assert.property(parsed, 'error');
  assert.equal(parsed.error, output);
```

Wenn das an `/api/solve` übergebene Puzzle Werte enthält, die keine Zahlen oder Punkte sind, ist der zurückgegebene Wert `{ error: 'Invalid characters in puzzle' }`

```js
  const input =
    'AA9..5.1.85.4....2432......1...69.83.9.....6.62.71...9......1945....4.37.4.3..6..';
  const output = 'Invalid characters in puzzle';
  const data = await fetch(code + '/api/solve', {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify({ puzzle: input })
  });
  const parsed = await data.json();
  assert.property(parsed, 'error');
  assert.equal(parsed.error, output);
```

Wenn das an `/api/solve` übergebene Puzzle mehr oder weniger als 81 Zeichen enthält, ist der zurückgegebene Wert `{ error: 'Expected puzzle to be 81 characters long' }`

```js
  const inputs = [
    '..9..5.1.85.4....2432......1...69.83.9.....6.62.71...9......1945....4.37.4.3..6.',
    '..9..5.1.85.4....2432......1...69.83.9.....6.62.71...9......1945....4.37.4.3..6...'
  ];
  const output = 'Expected puzzle to be 81 characters long';
  for (const input of inputs) {
    const data = await fetch(code + '/api/solve', {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ puzzle: input })
    });
    const parsed = await data.json();
    assert.property(parsed, 'error');
    assert.equal(parsed.error, output);
  }
```

Wenn das an `/api/solve` übergebene Puzzle ungültig ist oder nicht gelöst werden kann, ist der zurückgegebene Wert `{ error: 'Puzzle cannot be solved' }`

```js
  const input =
    '9.9..5.1.85.4....2432......1...69.83.9.....6.62.71...9......1945....4.37.4.3..6..';
  const output = 'Puzzle cannot be solved';
  const data = await fetch(code + '/api/solve', {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify({ puzzle: input })
  });
  const parsed = await data.json();
  assert.property(parsed, 'error');
  assert.equal(parsed.error, output);
```

Sie können `POST` an `/api/check` ein Objekt übergeben, das `puzzle`, `coordinate` und `value` enthält, wobei `coordinate` der Buchstabe A-I ist, der die Zeile angibt, gefolgt von einer Zahl 1-9, die die Spalte angibt, und `value` eine Zahl von 1-9 ist.

```js
  const input =
    '..9..5.1.85.4....2432......1...69.83.9.....6.62.71...9......1945....4.37.4.3..6..';
  const coordinate = 'A1';
  const value = '7';
  const data = await fetch(code + '/api/check', {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify({ puzzle: input, coordinate, value })
  });
  const parsed = await data.json();
  assert.property(parsed, 'valid');
  assert.isTrue(parsed.valid);
```

Der Rückgabewert von `POST` an `/api/check` ist ein Objekt mit einer `valid`-Eigenschaft, die `true` ist, wenn die Zahl an der angegebenen Koordinate platziert werden darf, und `false`, wenn die Zahl nicht platziert werden darf. Falls false, enthält das zurückgegebene Objekt außerdem eine `conflict`-Eigenschaft, die ein Array mit den Strings `"row"`, `"column"` und/oder `"region"` enthält, je nachdem, was die Platzierung ungültig macht.

```js
  const input =
    '..9..5.1.85.4....2432......1...69.83.9.....6.62.71...9......1945....4.37.4.3..6..';
  const coordinate = 'A1';
  const value = '1';
  const conflict = ['row', 'column'];
  const data = await fetch(code + '/api/check', {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify({ puzzle: input, coordinate, value })
  });
  const parsed = await data.json();
  assert.property(parsed, 'valid');
  assert.isFalse(parsed.valid);
  assert.property(parsed, 'conflict');
  assert.include(parsed.conflict, 'row');
  assert.include(parsed.conflict, 'column');
```

Wenn `value`, das an `/api/check` übergeben wurde, bereits in `puzzle` auf diesem `coordinate` platziert ist, enthält der zurückgegebene Wert ein Objekt mit einer `valid`-Eigenschaft mit `true`, falls `value` nicht im Konflikt steht.

```js
  const input =
  '..9..5.1.85.4....2432......1...69.83.9.....6.62.71...9......1945....4.37.4.3..6..';
  const coordinate = 'C3';
  const value = '2';
  const data = await fetch(code + '/api/check', {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify({ puzzle: input, coordinate, value })
  });
  const parsed = await data.json();
  assert.property(parsed, 'valid');
  assert.isTrue(parsed.valid);
```

Wenn das an `/api/check` übergebene Puzzle Werte enthält, die keine Zahlen oder Punkte sind, ist der zurückgegebene Wert `{ error: 'Invalid characters in puzzle' }`

```js
  const input =
    'AA9..5.1.85.4....2432......1...69.83.9.....6.62.71...9......1945....4.37.4.3..6..';
  const coordinate = 'A1';
  const value = '1';
  const output = 'Invalid characters in puzzle';
  const data = await fetch(code + '/api/check', {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify({ puzzle: input, coordinate, value })
  });
  const parsed = await data.json();
  assert.property(parsed, 'error');
  assert.equal(parsed.error, output);
```

Wenn das an `/api/check` übergebene Puzzle mehr oder weniger als 81 Zeichen enthält, ist der zurückgegebene Wert `{ error: 'Expected puzzle to be 81 characters long' }`

```js
  const inputs = [
    '..9..5.1.85.4....2432......1...69.83.9.....6.62.71...9......1945....4.37.4.3..6.',
    '..9..5.1.85.4....2432......1...69.83.9.....6.62.71...9......1945....4.37.4.3..6...'
  ];
  const coordinate = 'A1';
  const value = '1';
  const output = 'Expected puzzle to be 81 characters long';
  for (const input of inputs) {
    const data = await fetch(code + '/api/check', {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ puzzle: input, coordinate, value })
    });
    const parsed = await data.json();
    assert.property(parsed, 'error');
    assert.equal(parsed.error, output);
  }
```

Wenn das an `/api/check` übergebene Objekt `puzzle`, `coordinate` oder `value` fehlt, ist der zurückgegebene Wert `{ error: 'Required field(s) missing' }`

```js
  const inputs = [
    {
      puzzle: '..9..5.1.85.4....2432......1...69.83.9.....6.62.71...9......1945....4.37.4.3..6..',
      value: '1',
    },
    {
      puzzle: '..9..5.1.85.4....2432......1...69.83.9.....6.62.71...9......1945....4.37.4.3..6..',
      coordinate: 'A1',
    },
    {
      coordinate: 'A1',
      value: '1'
    }
  ];
  for (const input of inputs) {
    const output = 'Required field(s) missing';
    const data = await fetch(code + '/api/check', {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify(input)
    });
    const parsed = await data.json();
    assert.property(parsed, 'error');
    assert.equal(parsed.error, output);
  }
```

Wenn die an `api/check` übergebene Koordinate nicht auf eine existierende Gitterzelle zeigt, ist der zurückgegebene Wert `{ error: 'Invalid coordinate'}`

```js
  const input =
    '..9..5.1.85.4....2432......1...69.83.9.....6.62.71...9......1945....4.37.4.3..6..';
  const output = 'Invalid coordinate';
  const coordinates = ['A0', 'A10', 'J1', 'A', '1', 'XZ18'];
  const value = '7';
  for (const coordinate of coordinates) {
    const data = await fetch(code + '/api/check', {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ puzzle: input, coordinate, value })
    });
    const parsed = await data.json();
    assert.property(parsed, 'error');
    assert.equal(parsed.error, output);
  }
```

Wenn der an `value` übergebene `/api/check` keine Zahl zwischen 1 und 9 ist, ist der zurückgegebene Wert `{ error: 'Invalid value' }`

```js
  const input =
    '..9..5.1.85.4....2432......1...69.83.9.....6.62.71...9......1945....4.37.4.3..6..';
  const output = 'Invalid value';
  const coordinate = 'A1';
  const values = ['0', '10', 'A'];
  for (const value of values) {
    const data = await fetch(code + '/api/check', {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ puzzle: input, coordinate, value })
    });
    const parsed = await data.json();
    assert.property(parsed, 'error');
    assert.equal(parsed.error, output);
  }
```

Alle 12 Unit-Tests sind abgeschlossen und bestanden.

```js
  try {
    const response = await fetch(code + '/_api/get-tests');
    if (!response.ok) {
      throw Error(await response.text());
    }
    const getTests = await response.json();
    assert.isArray(getTests);
    const unitTests = getTests.filter((test) => {
      return !!test.context.match(/Unit\s*Tests/gi);
    });
    assert.isAtLeast(unitTests.length, 12, 'At least 12 tests passed');
    unitTests.forEach((test) => {
      assert.equal(test.state, 'passed', 'Test in Passed State');
      assert.isAtLeast(
        test.assertions.length,
        1,
        'At least one assertion per test'
      );
    });
  } catch (err) {
    throw new Error(err.responseText || err.message);
  }
```

Alle 14 Funktionstests sind abgeschlossen und bestanden.

```js
  try {
    const response = await fetch(code + '/_api/get-tests');
    if (!response.ok) {
      throw Error(await response.text());
    }
    const getTests = await response.json();
    assert.isArray(getTests);
    const functTests = getTests.filter((test) => {
      return !!test.context.match(/Functional\s*Tests/gi);
    });
    assert.isAtLeast(functTests.length, 14, 'At least 14 tests passed');
    functTests.forEach((test) => {
      assert.equal(test.state, 'passed', 'Test in Passed State');
      assert.isAtLeast(
        test.assertions.length,
        1,
        'At least one assertion per test'
      );
    });
  } catch (err) {
    throw new Error(err.responseText || err.message);
  }
```
