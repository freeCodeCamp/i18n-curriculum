---
id: 5e601c0d5ac9d0ecd8b94afe
title: Amerikanisch-Britischer Übersetzer
challengeType: 4
forumTopicId: 462358
dashedName: american-british-translator
---

# --description--

Build a full stack JavaScript app that is functionally similar to this: <a href="https://american-british-translator.freecodecamp.rocks/" target="_blank" rel="noopener noreferrer nofollow">https://american-british-translator.freecodecamp.rocks/</a>. Working on this project will involve you writing your code using one of the following methods:

-   Clone <a href="https://github.com/freeCodeCamp/boilerplate-project-american-british-english-translator/" target="_blank" rel="noopener noreferrer nofollow">this GitHub repo</a> and complete your project locally.
-   Use a site builder of your choice to complete the project. Be sure to incorporate all the files from our GitHub repo.

# --instructions--

-   All logic can go into `/components/translator.js`
-   Vervollständige den `/api/translate` eingefügt in `/routes/api.js`
-   Erstelle alle unit/functional Tests in `tests/1_unit-tests.js` und `tests/2_functional-tests.js`
-   In den JavaScript-Dateien unter `/components` findest du verschiedene Schreibweisen und Begriffe, die deine App übersetzen soll
-   Um die Tests automatisch auszuführen, setze in der `.env`-Datei `NODE_ENV` auf `test` ohne Anführungszeichen
-   To run the tests in the console, use the command `npm run test`.

Write the following tests in `tests/1_unit-tests.js`:

-   Translate `Mangoes are my favorite fruit.` to British English
-   Übersetze `I ate yogurt for breakfast.` in Britisches Englisch
-   Übersetze `We had a party at my friend's condo.` in Britisches Englisch
-   Übersetze `Can you toss this in the trashcan for me?` in Britisches Englisch
-   Übersetze `The parking lot was full.` in Britisches Englisch
-   Übersetze `Like a high tech Rube Goldberg machine.` in Britisches Englisch
-   Übersetze `To play hooky means to skip class or work.` in Britisches Englisch
-   Übersetze `No Mr. Bond, I expect you to die.` in Britisches Englisch
-   Übersetze `Dr. Grosh will see you now.` in Britisches Englisch
-   Übersetze `Lunch is at 12:15 today.` in Britisches Englisch
-   Übersetze `We watched the footie match for a while.` in Amerikanisches Englisch
-   Übersetze `Paracetamol takes up to an hour to work.` in Amerikanisches Englisch
-   Übersetze `First, caramelise the onions.` in Amerikanisches Englisch
-   Übersetze `I spent the bank holiday at the funfair.` in Amerikanisches Englisch
-   Übersetze `I had a bicky then went to the chippy.` in Amerikanisches Englisch
-   Übersetze `I've just got bits and bobs in my bum bag.` in Amerikanisches Englisch
-   Übersetze `The car boot sale at Boxted Airfield was called off.` in Amerikanisches Englisch
-   Übersetze `Have you met Mrs Kalyani?` in Amerikanisches Englisch
-   Übersetze `Prof Joyner of King's College, London.` in Amerikanisches Englisch
-   Übersetze ` die Tee-Zeit ist normalwerweise um 4 or 4.30.` in amerikanisches Englisch
-   Übersetzung hervorheben in `Mangos sind meine Lieblingsfrucht.`
-   Übersetzung hervorheben in `Ich habe Joghurt zum Frühstück gegessen.`
-   Übersetzung hervorheben in `Wir haben uns das Fußballspiel eine Weile angesehen.`
-   Übersetzung hervorheben in `Paracetamol braucht bis zu einer Stunde, um zu wirken.`

Schreibe die folgenden Tests in `tests/2_functional-tests.js`:

-   Translation with text and locale fields: POST request to `/api/translate`
-   Übersetzung mit Text und ungültigem lokalen Feld: POST-Anfrage an `/api/translate`
-   Übersetzung mit fehlendem Textfeld: POST-Anfrage an `/api/translate`
-   Übersetzung mit fehlendem lokalen Feld: POST-Anfrage an `/api/translate`
-   Übersetzung mit Text, die keine Übersetzung erfordert: POST-Anfrage an `/api/translate`
-   Übersetzung mit Text, die keine Übersetzung erfordert: POST-Anfrage an `/api/translate`

# --hints--

Du solltest dein eigenes Projekt angeben und nicht die Beispiel-URL.

```js
  assert(
    !/.*\/american-british-translator\.freecodecamp\.rocks/.test(
      code
    )
  );
```

You can `POST` to `/api/translate` with a body containing `text` with the text to translate and `locale` with either `american-to-british` or `british-to-american`. The returned object should contain the submitted `text` and `translation` with the translated text.

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

The `/api/translate` route should handle the way time is written in American and British English. For example, ten thirty is written as "10.30" in British English and "10:30" in American English. The `span` element should wrap the entire time string, i.e. `<span class="highlight">10:30</span>`.

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

The `/api/translate` route should also handle the way titles/honorifics are abbreviated in American and British English. For example, Doctor Wright is abbreviated as "Dr Wright" in British English and "Dr. Wright" in American English. See `/components/american-to-british-titles.js` for the different titles your application should handle.

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

Wrap any translated spelling or terms with `<span class="highlight">...</span>` tags so they appear in green.

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

If one or more of the required fields is missing, return `{ error: 'Required field(s) missing' }`.

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

If `text` is empty, return `{ error: 'No text to translate' }`

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

If `locale` does not match one of the two specified locales, return `{ error: 'Invalid value for locale field' }`.

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

If `text` requires no translation, return `"Everything looks good to me!"` for the `translation` value.

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

All 24 unit tests are complete and passing.

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

All 6 functional tests are complete and passing.

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
