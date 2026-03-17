---
id: 5e601bf95ac9d0ecd8b94afd
title: Risolutore di sudoku
challengeType: 4
forumTopicId: 462357
dashedName: sudoku-solver
---

# --description--

Crea un'app JavaScript full-stack che sia funzionalmente simile a questa: <a href="https://sudoku-solver.freecodecamp.rocks/" target="_blank" rel="noopener noreferrer nofollow">https://sudoku-solver.freecodecamp.rocks/</a>. Lavorare su questo progetto ti porterà a scrivere il tuo codice usando uno dei seguenti metodi:

-   Clona <a href="https://github.com/freecodecamp/boilerplate-project-sudoku-solver" target="_blank" rel="noopener noreferrer nofollow">questo repository GitHub</a> e completa il progetto localmente.
-   Usa un site builder a tua scelta per completare il progetto. Assicurati di incorporare tutti i file dal nostro repository GitHub.

# --instructions--

- Tutta la logica del puzzle può andare in `/controllers/sudoku-solver.js`
  - La funzione `validate` deve prendere una stringa di puzzle data e verificare se contiene 81 caratteri validi per l'input.
  - Le funzioni `check` devono validare rispetto allo stato *attuale* della griglia.
  - La funzione `solve` deve gestire la risoluzione di qualsiasi stringa di puzzle valida, non solo gli input e le soluzioni di test. Ti si chiede di scrivere la logica per risolverlo.
- Tutta la logica di routing può andare in `/routes/api.js`
- Vedi il file `puzzle-strings.js` in `/controllers` per alcuni puzzle di esempio che la tua applicazione dovrebbe risolvere
- Per eseguire i test della sfida su questa pagina, imposta `NODE_ENV` su `test` senza virgolette nel file `.env`
- Per eseguire i test in console, usa il comando `npm run test`

Scrivi i seguenti test in `tests/1_unit-tests.js`:

-   La logica gestisce una stringa di puzzle valida di 81 caratteri
-   La logica gestisce una stringa di puzzle con caratteri non validi (non 1-9 o `.`)
-   La logica gestisce una stringa di puzzle che non ha lunghezza 81
-   La logica gestisce un posizionamento valido in riga
-   La logica gestisce un posizionamento non valido in riga
-   La logica gestisce un posizionamento valido in colonna
-   La logica gestisce un posizionamento non valido in colonna
-   La logica gestisce un posizionamento valido in regione (griglia 3x3)
-   La logica gestisce un posizionamento non valido in regione (griglia 3x3)
-   Le stringhe di puzzle valide superano il risolutore
-   Le stringhe di puzzle non valide falliscono il risolutore
-   Il risolutore restituisce la soluzione attesa per un puzzle incompleto

Scrivi i seguenti test in `tests/2_functional-tests.js`

-   Risolvi un puzzle con stringa di puzzle valida: richiesta POST a `/api/solve`
-   Risolvi un puzzle con stringa di puzzle mancante: richiesta POST a `/api/solve`
-   Risolvi un puzzle con caratteri non validi: richiesta POST a `/api/solve`
-   Risolvi un puzzle con lunghezza errata: richiesta POST a `/api/solve`
-   Risolvi un puzzle che non può essere risolto: richiesta POST a `/api/solve`
-   Controlla un posizionamento di puzzle con tutti i campi: richiesta POST a `/api/check`
-   Controlla un posizionamento di puzzle con conflitto singolo: richiesta POST a `/api/check`
-   Controlla un posizionamento di puzzle con conflitti multipli: richiesta POST a `/api/check`
-   Controlla un posizionamento di puzzle con tutti i conflitti: richiesta POST a `/api/check`
-   Controlla un posizionamento di puzzle con campi obbligatori mancanti: richiesta POST a `/api/check`
-   Controlla un posizionamento di puzzle con caratteri non validi: richiesta POST a `/api/check`
-   Controlla un posizionamento di puzzle con lunghezza errata: richiesta POST a `/api/check`
-   Controlla un posizionamento di puzzle con coordinata di posizionamento non valida: richiesta POST a `/api/check`
-   Controlla un posizionamento di puzzle con valore di posizionamento non valido: richiesta POST a `/api/check`

# --hints--

Dovresti fornire il tuo progetto, non l'URL di esempio.

```js
  const url = code;
  assert(!/.*\/sudoku-solver\.freecodecamp\.rocks/.test(code));
```

Puoi `POST` `/api/solve` con dati di modulo contenenti `puzzle` che sarà una stringa contenente una combinazione di numeri (1-9) e punti `.` per rappresentare spazi vuoti. L'oggetto restituito conterrà una proprietà `solution` con il puzzle risolto.

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

Se l'oggetto inviato a `/api/solve` manca di `puzzle`, il valore restituito sarà `{ error: 'Required field missing' }`

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

Se il puzzle inviato a `/api/solve` contiene valori che non sono numeri o punti, il valore restituito sarà `{ error: 'Invalid characters in puzzle' }`

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

Se il puzzle inviato a `/api/solve` è più lungo o più corto di 81 caratteri, il valore restituito sarà `{ error: 'Expected puzzle to be 81 characters long' }`

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

Se il puzzle inviato a `/api/solve` è non valido o non può essere risolto, il valore restituito sarà `{ error: 'Puzzle cannot be solved' }`

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

Puoi `POST` a `/api/check` un oggetto contenente `puzzle`, `coordinate` e `value` dove `coordinate` è la lettera A-I che indica la riga, seguita da un numero 1-9 che indica la colonna, e `value` è un numero da 1 a 9.

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

Il valore di ritorno da `POST` a `/api/check` sarà un oggetto contenente una proprietà `valid`, che è `true` se il numero può essere posizionato nella coordinata fornita e `false` se non può. Se falso, l'oggetto restituito conterrà anche una proprietà `conflict` che è un array contenente le stringhe `"row"`, `"column"` e/o `"region"` a seconda di cosa rende il posizionamento non valido.

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

Se `value` inviato a `/api/check` è già posizionato in `puzzle` su quella `coordinate`, il valore restituito sarà un oggetto contenente una proprietà `valid` con `true` se `value` non è in conflitto.

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

Se il puzzle inviato a `/api/check` contiene valori che non sono numeri o punti, il valore restituito sarà `{ error: 'Invalid characters in puzzle' }`

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

Se il puzzle inviato a `/api/check` è più lungo o più corto di 81 caratteri, il valore restituito sarà `{ error: 'Expected puzzle to be 81 characters long' }`

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

Se l'oggetto inviato a `/api/check` manca di `puzzle`, `coordinate` o `value`, il valore restituito sarà `{ error: 'Required field(s) missing' }`

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

Se la coordinata inviata a `api/check` non punta a una cella esistente della griglia, il valore restituito sarà `{ error: 'Invalid coordinate'}`

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

Se `value` inviato a `/api/check` non è un numero tra 1 e 9, il valore restituito sarà `{ error: 'Invalid value' }`

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

Tutti i 12 test unitari sono completi e superati.

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

Tutti i 14 test funzionali sono completi e superati.

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
