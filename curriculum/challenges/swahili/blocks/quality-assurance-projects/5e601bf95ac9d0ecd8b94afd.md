---
id: 5e601bf95ac9d0ecd8b94afd
title: Mtatua wa Sudoku
challengeType: 4
forumTopicId: 462357
dashedName: sudoku-solver
---

# --description--

Jenga programu kamili ya JavaScript inayofanya kazi kama hii: <a href="https://sudoku-solver.freecodecamp.rocks/" target="_blank" rel="noopener noreferrer nofollow">https://sudoku-solver.freecodecamp.rocks/</a>. Kufanya kazi kwenye mradi huu kutahusisha kuandika msimbo wako kwa kutumia mojawapo ya njia zifuatazo:

-   Nakili <a href="https://github.com/freecodecamp/boilerplate-project-sudoku-solver" target="_blank" rel="noopener noreferrer nofollow">hii repo ya GitHub</a> na ukamilishe mradi wako kwa ndani.
-   Tumia kivinjari cha kutengeneza tovuti unachotaka kukamilisha mradi. Hakikisha umejumuisha mafaili yote kutoka kwenye repo yetu ya GitHub.

# --instructions--

- Mantiq ya fumbo yote inaweza kuwekwa ndani ya `/controllers/sudoku-solver.js`
  - Kitendakazi cha `validate` kinapaswa kuchukua mfuatano wa herufi wa fumbo uliotolewa na kukagua kama una herufi halali 81 kwa ajili ya ingizo.
  - Njia za `check` zinapaswa kuthibitisha dhidi ya hali *ya sasa* ya ubao.
  - Kitendakazi cha `solve` kinapaswa kushughulikia kutatua fumbo lolote halali lililotolewa, si tu ingizo za mtihani na suluhisho. Unatarajiwa kuandika mantiq ya kutatua hili.
- Mantiq yote ya njia za maelekezo inaweza kuwekwa ndani ya `/routes/api.js`
- Tazama faili la `puzzle-strings.js` katika `/controllers` kwa fumbo za mfano ambazo programu yako inapaswa kutatua
- Ili kuendesha mitihani ya changamoto kwenye ukurasa huu, weka `NODE_ENV` kuwa `test` bila nukuu katika faili la `.env`
- Ili kuendesha mitihani kwenye konsoli, tumia amri `npm run test`.

Andika mitihani ifuatayo katika `tests/1_unit-tests.js`:

-   Mantiq inashughulikia mfuatano wa fumbo halali wa herufi 81
-   Mantiq inashughulikia mfuatano wa fumbo wenye herufi zisizo halali (si 1-9 au `.`)
-   Mantiq inashughulikia mfuatano wa fumbo usio na urefu wa herufi 81
-   Mantiq inashughulikia kuweka halali kwa safu
-   Mantiq inashughulikia kuweka batili kwa safu
-   Mantiq inashughulikia kuweka halali kwa nguzo
-   Mantiq inashughulikia kuweka batili kwa nguzo
-   Mantiq inashughulikia kuweka halali kwa eneo (gridi 3x3)
-   Mantiq inashughulikia kuweka batili kwa eneo (gridi 3x3)
-   Mfuatano wa fumbo halali hupita mtatua
-   Mfuatano wa fumbo batili haupiti mtatua
-   Mtatua hurudisha suluhisho linalotarajiwa kwa fumbo lisilokamilika

Andika mitihani ifuatayo katika `tests/2_functional-tests.js`

-   Tatua fumbo lenye mfuatano wa fumbo halali: ombi la POST kwa `/api/solve`
-   Tatua fumbo lenye mfuatano wa fumbo uliokosekana: ombi la POST kwa `/api/solve`
-   Tatua fumbo lenye herufi zisizo halali: ombi la POST kwa `/api/solve`
-   Tatua fumbo lenye urefu usio sahihi: ombi la POST kwa `/api/solve`
-   Tatua fumbo lisiloweza kutatuliwa: ombi la POST kwa `/api/solve`
-   Angalia kuweka fumbo kwa sehemu zote: ombi la POST kwa `/api/check`
-   Angalia kuweka fumbo na mgongano mmoja wa sehemu: ombi la POST kwa `/api/check`
-   Angalia kuweka fumbo na migongano mingi ya sehemu: ombi la POST kwa `/api/check`
-   Angalia kuweka fumbo na migongano yote ya sehemu: ombi la POST kwa `/api/check`
-   Angalia kuweka fumbo na sehemu zinazohitajika zilizokosekana: ombi la POST kwa `/api/check`
-   Angalia kuweka fumbo na herufi zisizo halali: ombi la POST kwa `/api/check`
-   Angalia kuweka fumbo na urefu usio sahihi: ombi la POST kwa `/api/check`
-   Angalia kuweka fumbo na kuratibu batili ya kuweka: ombi la POST kwa `/api/check`
-   Angalia kuweka fumbo na thamani batili ya kuweka: ombi la POST kwa `/api/check`

# --hints--

Unapaswa kutoa mradi wako mwenyewe, si URL ya mfano.

```js
  const url = code;
  assert(!/.*\/sudoku-solver\.freecodecamp\.rocks/.test(code));
```

Unaweza `POST` `/api/solve` na data ya fomu yenye `puzzle` ambayo itakuwa mfuatano wa herufi unaojumuisha nambari (1-9) na nukta `.` kuwakilisha nafasi tupu. Kitu kilichorejeshwa kitakuwa na sifa ya `solution` yenye fumbo lililotatuliwa.

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

Ikiwa kitu kilichowasilishwa kwa `/api/solve` kinakosa `puzzle`, thamani iliyorejeshwa itakuwa `{ error: 'Required field missing' }`

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

Ikiwa fumbo lililowasilishwa kwa `/api/solve` lina thamani zisizo nambari au nukta, thamani iliyorejeshwa itakuwa `{ error: 'Invalid characters in puzzle' }`

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

Ikiwa fumbo lililowasilishwa kwa `/api/solve` lina urefu zaidi au chini ya herufi 81, thamani iliyorejeshwa itakuwa `{ error: 'Expected puzzle to be 81 characters long' }`

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

Ikiwa fumbo lililowasilishwa kwa `/api/solve` ni batili au haliwezi kutatuliwa, thamani iliyorejeshwa itakuwa `{ error: 'Puzzle cannot be solved' }`

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

Unaweza `POST` kwa `/api/check` kitu chenye `puzzle`, `coordinate`, na `value` ambapo `coordinate` ni herufi A-I inayoashiria safu, ikifuatiwa na nambari 1-9 inayoashiria nguzo, na `value` ni nambari kutoka 1-9.

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

Thamani ya return kutoka `POST` kwa `/api/check` itakuwa kitu chenye sifa ya `valid`, ambayo ni `true` ikiwa nambari inaweza kuwekwa kwenye kuratibu iliyotolewa na `false` ikiwa haiwezi. Ikiwa ni false, kitu kilichorejeshwa pia kitakuwa na sifa ya `conflict` ambayo ni safu yenye mfuatano wa herufi `"row"`, `"column"`, na/au `"region"` kulingana na sababu za kuweka kuwa batili.

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

Ikiwa `value` iliyowasilishwa kwa `/api/check` tayari imewekwa katika `puzzle` kwenye `coordinate`, thamani iliyorejeshwa itakuwa kitu chenye sifa ya `valid` yenye `true` ikiwa `value` haiko na mgongano.

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

Ikiwa fumbo lililowasilishwa kwa `/api/check` lina thamani zisizo nambari au nukta, thamani iliyorejeshwa itakuwa `{ error: 'Invalid characters in puzzle' }`

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

Ikiwa fumbo lililowasilishwa kwa `/api/check` lina urefu zaidi au chini ya herufi 81, thamani iliyorejeshwa itakuwa `{ error: 'Expected puzzle to be 81 characters long' }`

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

Ikiwa kitu kilichowasilishwa kwa `/api/check` kinakosa `puzzle`, `coordinate` au `value`, thamani iliyorejeshwa itakuwa `{ error: 'Required field(s) missing' }`

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

Ikiwa kuratibu kilichowasilishwa kwa `api/check` hakielekezi kwenye seli halali ya gridi, thamani iliyorejeshwa itakuwa `{ error: 'Invalid coordinate'}`

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

Ikiwa `value` iliyowasilishwa kwa `/api/check` si nambari kati ya 1 na 9, thamani iliyorejeshwa itakuwa `{ error: 'Invalid value' }`

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

Mitihani yote 12 ya kitengo imekamilika na kupita.

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

Mitihani yote 14 ya utendaji imekamilika na kupita.

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
