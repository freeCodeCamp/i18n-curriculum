---
id: 5e601c0d5ac9d0ecd8b94afe
title: Traduttore Americano Britannico
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
-   Completa la rotta `/api/translate` in `/routes/api.js`
-   Crea tutti i test delle unità/funzionali in `tests/1_unit-tests.js` e `tests/2_functional-tests.js`
-   Vedi i file JavaScript in `/components` per la diversa ortografia e i termini che la tua applicazione dovrebbe tradurre
-   To run the tests automatically, set `NODE_ENV` to `test` without quotes in the `.env` file
-   To run the tests in the console, use the command `npm run test`.

Write the following tests in `tests/1_unit-tests.js`:

-   Translate `Mangoes are my favorite fruit.` to British English
-   Traduci `I ate yogurt for breakfast.` in inglese britannico
-   Traduci `We had a party at my friend's condo.` in inglese britannico
-   Traduci `Can you toss this in the trashcan for me?` in inglese britannico
-   Traduci `The parking lot was full.` in inglese britannico
-   Traduci `Like a high tech Rube Goldberg machine.` in inglese britannico
-   Traduci `To play hooky means to skip class or work.` in inglese britannico
-   Traduci `No Mr. Bond, I expect you to die.` in inglese britannico
-   Traduci `Dr. Grosh will see you now.` in inglese britannico
-   Traduci `Lunch is at 12:15 today.` in inglese britannico
-   Traduci `We watched the footie match for a while.` in inglese americano
-   Traduci `Paracetamol takes up to an hour to work.` in inglese americano
-   Traduci `First, caramelise the onions.` in inglese americano
-   Traduci `I spent the bank holiday at the funfair.` in inglese americano
-   Traduci `I had a bicky then went to the chippy.` in inglese americano
-   Traduci `I've just got bits and bobs in my bum bag.` in inglese americano
-   Traduci `The car boot sale at Boxted Airfield was called off.` in inglese americano
-   Traduci `Have you met Mrs Kalyani?` in inglese americano
-   Traduci `Prof Joyner of King's College, London.` in inglese americano
-   Traduci `Tea time is usually around 4 or 4.30.` in inglese americano
-   Evidenzia la traduzione in `Mangoes are my favorite fruit.`
-   Evidenzia la traduzione in `I ate yogurt for breakfast.`
-   Evidenzia la traduzione in `We watched the footie match for a while.`
-   Evidenzia la traduzione in `Paracetamol takes up to an hour to work.`

Scrivi i seguenti test in `tests/2_functional-tests.js`:

-   Translation with text and locale fields: POST request to `/api/translate`
-   Traduzione con i campi testo e localizzazione non validi: richiesta POST a `/api/translate`
-   Traduzione con il campo testo mancante: richiesta POST a `/api/translate`
-   Traduzione con il campo localizzazione mancante: richiesta POST a `/api/translate`
-   Traduzione con il testo vuoto: richiesta POST a `/api/translate`
-   Traduzione con testo che non ha bisogno di traduzione: richiesta POST a `/api/translate`

# --hints--

È necessario fornire il proprio progetto, non l'URL di esempio.

```js
  assert(
    !/.*\/american-british-translator\.freecodecamp\.rocks/.test(
      code
    )
  );
```

You can `POST` to `/api/translate` with a body containing `text` with the text to translate and `locale` with either `american-to-british` or `british-to-american`. The returned object should contain the submitted `text` and `translation` with the translated text.

```js
async () => {
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
};
```

The `/api/translate` route should handle the way time is written in American and British English. For example, ten thirty is written as "10.30" in British English and "10:30" in American English. The `span` element should wrap the entire time string, i.e. `<span class="highlight">10:30</span>`.

```js
async () => {
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
};
```

The `/api/translate` route should also handle the way titles/honorifics are abbreviated in American and British English. For example, Doctor Wright is abbreviated as "Dr Wright" in British English and "Dr. Wright" in American English. See `/components/american-to-british-titles.js` for the different titles your application should handle.

```js
async () => {
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
};
```

Wrap any translated spelling or terms with `<span class="highlight">...</span>` tags so they appear in green.

```js
async () => {
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
};
```

If one or more of the required fields is missing, return `{ error: 'Required field(s) missing' }`.

```js
async () => {
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
};
```

If `text` is empty, return `{ error: 'No text to translate' }`

```js
async () => {
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
};
```

If `locale` does not match one of the two specified locales, return `{ error: 'Invalid value for locale field' }`.

```js
async () => {
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
};
```

If `text` requires no translation, return `"Everything looks good to me!"` for the `translation` value.

```js
async () => {
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
};
```

All 24 unit tests are complete and passing.

```js
async () => {
  try {
    const getTests = await $.get(code + '/_api/get-tests');
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
};
```

All 6 functional tests are complete and passing.

```js
async () => {
  try {
    const getTests = await $.get(code + '/_api/get-tests');
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
};
```
