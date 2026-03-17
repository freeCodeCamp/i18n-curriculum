---
id: 5e601c0d5ac9d0ecd8b94afe
title: Traduttore americano britannico
challengeType: 4
forumTopicId: 462358
dashedName: american-british-translator
---

# --description--

Crea un'app JavaScript full-stack che sia funzionalmente simile a questa: <a href="https://american-british-translator.freecodecamp.rocks/" target="_blank" rel="noopener noreferrer nofollow">https://american-british-translator.freecodecamp.rocks/</a>. Lavorare su questo progetto ti porterà a scrivere il tuo codice usando uno dei seguenti metodi:

-   Clona <a href="https://github.com/freeCodeCamp/boilerplate-project-american-british-english-translator/" target="_blank" rel="noopener noreferrer nofollow">questo repository GitHub</a> e completa il progetto localmente.
-   Usa un site builder a tua scelta per completare il progetto. Assicurati di includere tutti i file dal nostro repository GitHub.

# --instructions--

-   Tutta la logica può andare in `/components/translator.js`
-   Completa la rotta `/api/translate` in `/routes/api.js`
-   Crea tutti i test unitari/funzionali in `tests/1_unit-tests.js` e `tests/2_functional-tests.js`
-   Consulta i file JavaScript in `/components` per i diversi modi di scrivere e i termini che la tua applicazione dovrebbe tradurre
-   Per eseguire i test automaticamente, imposta `NODE_ENV` su `test` senza virgolette nel file `.env`
-   Per eseguire i test in console, usa il comando `npm run test`

Scrivi i seguenti test in `tests/1_unit-tests.js`:

-   Traduci `Mangoes are my favorite fruit.` in inglese britannico
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

-   Traduzione con campi text e locale: richiesta POST a `/api/translate`
-   Traduzione con campi text e locale non valido: richiesta POST a `/api/translate`
-   Traduzione con campo text mancante: richiesta POST a `/api/translate`
-   Traduzione con campo locale mancante: richiesta POST a `/api/translate`
-   Traduzione con text vuoto: richiesta POST a `/api/translate`
-   Traduzione con text che non necessita traduzione: richiesta POST a `/api/translate`

# --hints--

Dovresti fornire il tuo progetto, non l'URL di esempio.

```js
  assert(
    !/.*\/american-british-translator\.freecodecamp\.rocks/.test(
      code
    )
  );
```

Puoi `POST` a `/api/translate` con un body contenente `text` con il testo da tradurre e `locale` con `american-to-british` o `british-to-american`. L'oggetto restituito dovrebbe contenere il `text` inviato e `translation` con il testo tradotto.

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

La rotta `/api/translate` dovrebbe gestire il modo in cui si scrive l'ora in inglese americano e britannico. Per esempio, le dieci e mezza si scrivono "10.30" in inglese britannico e "10:30" in inglese americano. L'elemento `span` dovrebbe racchiudere l'intera stringa dell'ora, cioè `<span class="highlight">10:30</span>`.

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

La rotta `/api/translate` dovrebbe anche gestire il modo in cui i titoli/onorifici sono abbreviati in inglese americano e britannico. Per esempio, Doctor Wright si abbrevia "Dr Wright" in inglese britannico e "Dr. Wright" in inglese americano. Consulta `/components/american-to-british-titles.js` per i diversi titoli che la tua applicazione dovrebbe gestire.

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

Racchiudi qualsiasi ortografia o termine tradotto con tag `<span class="highlight">...</span>` in modo che appaia in verde.

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

Se uno o più campi obbligatori manca, restituisci `{ error: 'Required field(s) missing' }`.

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

Se `text` è vuoto, restituisci `{ error: 'No text to translate' }`

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

Se `locale` non corrisponde a una delle due località specificate, restituisci `{ error: 'Invalid value for locale field' }`.

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

Se `text` non necessita traduzione, restituisci `"Everything looks good to me!"` per il valore `translation`.

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

Tutti i 24 test unitari sono completi e superati.

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

Tutti i 6 test funzionali sono completi e superati.

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
