---
id: 5e601c0d5ac9d0ecd8b94afe
title: Amerikanisch-britischer Übersetzer
challengeType: 4
forumTopicId: 462358
dashedName: american-british-translator
---

# --description--

Erstellen Sie eine Full-Stack-JavaScript-Anwendung, die funktional ähnlich ist wie diese: <a href="https://american-british-translator.freecodecamp.rocks/" target="_blank" rel="noopener noreferrer nofollow">https://american-british-translator.freecodecamp.rocks/</a>. Die Arbeit an diesem Projekt beinhaltet, dass Sie Ihren Code mit einer der folgenden Methoden schreiben:

-   Klonen Sie <a href="https://github.com/freeCodeCamp/boilerplate-project-american-british-english-translator/" target="_blank" rel="noopener noreferrer nofollow">dieses GitHub-Repository</a> und vervollständigen Sie Ihr Projekt lokal.
-   Verwenden Sie einen Website-Builder Ihrer Wahl, um das Projekt abzuschließen. Stellen Sie sicher, dass Sie alle Dateien aus unserem GitHub-Repository einbinden.

# --instructions--

-   Die gesamte Logik kann in `/components/translator.js` eingefügt werden
-   Vervollständigen Sie die `/api/translate`-Route in `/routes/api.js`
-   Erstellen Sie alle Unit-/funktionalen Tests in `tests/1_unit-tests.js` und `tests/2_functional-tests.js`
-   Sehen Sie sich die JavaScript-Dateien in `/components` an für die verschiedenen Schreibweisen und Begriffe, die Ihre Anwendung übersetzen soll
-   Um die Tests automatisch auszuführen, setzen Sie `NODE_ENV` in der `test`-Datei auf `.env` ohne Anführungszeichen
-   Um die Tests in der Konsole auszuführen, verwenden Sie den Befehl `npm run test`

Schreiben Sie die folgenden Tests in `tests/1_unit-tests.js`:

-   Übersetzen Sie `Mangoes are my favorite fruit.` ins britische Englisch
-   Übersetzen Sie `I ate yogurt for breakfast.` ins britische Englisch
-   Übersetzen Sie `We had a party at my friend's condo.` ins britische Englisch
-   Übersetzen Sie `Can you toss this in the trashcan for me?` ins britische Englisch
-   Übersetzen Sie `The parking lot was full.` ins britische Englisch
-   Übersetzen Sie `Like a high tech Rube Goldberg machine.` ins britische Englisch
-   Übersetzen Sie `To play hooky means to skip class or work.` ins britische Englisch
-   Übersetzen Sie `No Mr. Bond, I expect you to die.` ins britische Englisch
-   Übersetzen Sie `Dr. Grosh will see you now.` ins britische Englisch
-   Übersetzen Sie `Lunch is at 12:15 today.` ins britische Englisch
-   Übersetzen Sie `We watched the footie match for a while.` ins amerikanische Englisch
-   Übersetzen Sie `Paracetamol takes up to an hour to work.` ins amerikanische Englisch
-   Übersetzen Sie `First, caramelise the onions.` ins amerikanische Englisch
-   Übersetzen Sie `I spent the bank holiday at the funfair.` ins amerikanische Englisch
-   Übersetzen Sie `I had a bicky then went to the chippy.` ins amerikanische Englisch
-   Übersetzen Sie `I've just got bits and bobs in my bum bag.` ins amerikanische Englisch
-   Übersetzen Sie `The car boot sale at Boxted Airfield was called off.` ins amerikanische Englisch
-   Übersetzen Sie `Have you met Mrs Kalyani?` ins amerikanische Englisch
-   Übersetzen Sie `Prof Joyner of King's College, London.` ins amerikanische Englisch
-   Übersetzen Sie `Tea time is usually around 4 or 4.30.` ins amerikanische Englisch
-   Markieren Sie die Übersetzung in `Mangoes are my favorite fruit.`
-   Markieren Sie die Übersetzung in `I ate yogurt for breakfast.`
-   Markieren Sie die Übersetzung in `We watched the footie match for a while.`
-   Markieren Sie die Übersetzung in `Paracetamol takes up to an hour to work.`

Schreiben Sie die folgenden Tests in `tests/2_functional-tests.js`:

-   Übersetzung mit Text- und Locale-Feldern: POST-Anfrage an `/api/translate`
-   Übersetzung mit Text- und ungültigem Locale-Feld: POST-Anfrage an `/api/translate`
-   Übersetzung mit fehlendem Textfeld: POST-Anfrage an `/api/translate`
-   Übersetzung mit fehlendem Locale-Feld: POST-Anfrage an `/api/translate`
-   Übersetzung mit leerem Text: POST-Anfrage an `/api/translate`
-   Übersetzung mit Text, der keine Übersetzung benötigt: POST-Anfrage an `/api/translate`

# --hints--

Sie sollten Ihr eigenes Projekt bereitstellen, nicht die Beispiel-URL.

```js
  assert(
    !/.*\/american-british-translator\.freecodecamp\.rocks/.test(
      code
    )
  );
```

Sie können `POST` an `/api/translate` senden mit einem Body, der `text` mit dem zu übersetzenden Text und `locale` mit entweder `american-to-british` oder `british-to-american` enthält. Das zurückgegebene Objekt sollte die übermittelten `text` und `translation` mit dem übersetzten Text enthalten.

```js
  try {
    const text = 'Mangoes are my favorite fruit.';
    const locale = 'american-to-british';
    const output = {
      text: 'Mangoes are my favorite fruit.',
      translation:
        'Mangoes are my <span class="highlight">favourite</span> fruit.'
    };
    let data = await fetch(code + '/api/translate', {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ text, locale })
    });
    let parsed = await data.json();
    assert.isObject(parsed);
    assert.property(parsed, 'text');
    assert.property(parsed, 'translation');
    assert.deepEqual(parsed, output);
  } catch (err) {
    throw new Error(err.responseText || err.message);
  }
```

Die `/api/translate`-Route sollte die unterschiedliche Schreibweise der Zeit im amerikanischen und britischen Englisch behandeln. Zum Beispiel wird zehn Uhr dreißig als „10.30“ im britischen Englisch und als „10:30“ im amerikanischen Englisch geschrieben. Das `span`-Element sollte den gesamten Zeitstring umschließen, also `<span class="highlight">10:30</span>`.

```js
  try {
    const text = 'Lunch is at 12:15 today.';
    const locale = 'american-to-british';
    const output = {
      text: text,
      translation: 'Lunch is at <span class="highlight">12.15</span> today.'
    };
    let data = await fetch(code + '/api/translate', {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ text, locale })
    });
    let parsed = await data.json();
    assert.isObject(parsed);
    assert.property(parsed, 'text');
    assert.property(parsed, 'translation');
    assert.deepEqual(parsed, output);
  } catch (err) {
    throw new Error(err.responseText || err.message);
  }
```

Die `/api/translate`-Route sollte auch die unterschiedliche Abkürzung von Titeln/Honorifics im amerikanischen und britischen Englisch behandeln. Zum Beispiel wird Doctor Wright als „Dr Wright“ im britischen Englisch und als „Dr. Wright“ im amerikanischen Englisch abgekürzt. Siehe `/components/american-to-british-titles.js` für die verschiedenen Titel, die Ihre Anwendung behandeln soll.

```js
  try {
    const text = 'Dr. Grosh will see you now.';
    const locale = 'american-to-british';
    const output = {
      text: text,
      translation: '<span class="highlight">Dr</span> Grosh will see you now.'
    };
    let data = await fetch(code + '/api/translate', {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ text, locale })
    });
    let parsed = await data.json();
    assert.isObject(parsed);
    assert.property(parsed, 'text');
    assert.property(parsed, 'translation');
    assert.deepEqual(parsed, output);
  } catch (err) {
    throw new Error(err.responseText || err.message);
  }
```

Umschließen Sie jede übersetzte Schreibweise oder jeden Begriff mit `<span class="highlight">...</span>`-Tags, damit sie grün angezeigt werden.

```js
  try {
    const text = 'Mangoes are my favorite fruit.';
    const locale = 'american-to-british';
    const output = {
      text: 'Mangoes are my favorite fruit.',
      translation:
        'Mangoes are my <span class="highlight">favourite</span> fruit.'
    };
    let data = await fetch(code + '/api/translate', {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ text, locale })
    });
    let parsed = await data.json();
    assert.isObject(parsed);
    assert.property(parsed, 'text');
    assert.property(parsed, 'translation');
    assert.deepEqual(parsed, output);
  } catch (err) {
    throw new Error(err.responseText || err.message);
  }
```

Wenn eines oder mehrere der Pflichtfelder fehlen, geben Sie `{ error: 'Required field(s) missing' }` zurück.

```js
  try {
    const locale = 'american-to-british';
    let data = await fetch(code + '/api/translate', {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ locale })
    });
    let parsed = await data.json();
    assert.isObject(parsed);
    assert.property(parsed, 'error');
    assert.equal(parsed.error, 'Required field(s) missing');
  } catch (err) {
    throw new Error(err.responseText || err.message);
  }
```

Wenn `text` leer ist, geben Sie `{ error: 'No text to translate' }` zurück.

```js
  try {
    const locale = 'american-to-british';
    let data = await fetch(code + '/api/translate', {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ text: '', locale })
    });
    let parsed = await data.json();
    assert.isObject(parsed);
    assert.property(parsed, 'error');
    assert.equal(parsed.error, 'No text to translate');
  } catch (err) {
    throw new Error(err.responseText || err.message);
  }
```

Wenn `locale` nicht mit einem der beiden angegebenen Locales übereinstimmt, geben Sie `{ error: 'Invalid value for locale field' }` zurück.

```js
  try {
    const text = "Ceci n'est pas une pipe";
    const locale = 'french-to-american';
    let data = await fetch(code + '/api/translate', {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ text, locale })
    });
    let parsed = await data.json();
    assert.isObject(parsed);
    assert.property(parsed, 'error');
    assert.equal(parsed.error, 'Invalid value for locale field');
  } catch (err) {
    throw new Error(err.responseText || err.message);
  }
```

Wenn `text` keine Übersetzung benötigt, geben Sie `"Everything looks good to me!"` für den `translation`-Wert zurück.

```js
  try {
    const locale = 'british-to-american';
    const output = {
      text: 'SaintPeter and nhcarrigan give their regards!',
      translation: 'Everything looks good to me!'
    };
    let data = await fetch(code + '/api/translate', {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ text: output.text, locale })
    });
    let parsed = await data.json();
    assert.isObject(parsed);
    assert.isObject(parsed);
    assert.property(parsed, 'text');
    assert.property(parsed, 'translation');
    assert.deepEqual(parsed, output);
  } catch (err) {
    throw new Error(err.responseText || err.message);
  }
```

Alle 24 Unit-Tests sind vollständig und erfolgreich.

```js
  try {
    const response = await fetch(code + '/_api/get-tests');
    if (!response.ok) {
      throw Error(await response.text());
    }
    const getTests = await response.json();
    assert.isArray(getTests);
    const unitTests = getTests.filter((test) => {
      return !!test.context.match(/Unit Tests/gi);
    });
    assert.isAtLeast(unitTests.length, 24, 'At least 24 tests passed');
    unitTests.forEach((test) => {
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
```

Alle 6 funktionalen Tests sind vollständig und erfolgreich.

```js
  try {
    const response = await fetch(code + '/_api/get-tests');
    if (!response.ok) {
      throw Error(await response.text());
    }
    const getTests = await response.json();
    assert.isArray(getTests);
    const functTests = getTests.filter((test) => {
      return !!test.context.match(/Functional Tests/gi);
    });
    assert.isAtLeast(functTests.length, 6, 'At least 6 tests passed');
    functTests.forEach((test) => {
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
```
