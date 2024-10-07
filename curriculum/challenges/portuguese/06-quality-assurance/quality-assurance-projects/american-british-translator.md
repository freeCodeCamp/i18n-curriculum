---
id: 5e601c0d5ac9d0ecd8b94afe
title: Tradutor americano britânico
challengeType: 4
forumTopicId: 462358
dashedName: american-british-translator
---

# --description--

Build a full stack JavaScript app that is functionally similar to this: <a href="https://american-british-translator.freecodecamp.rocks/" target="_blank" rel="noopener noreferrer nofollow">https://american-british-translator.freecodecamp.rocks/</a>. Trabalhar nesse projeto vai fazer com que você escreva o código usando um dos seguintes métodos:

-   Clone <a href="https://github.com/freeCodeCamp/boilerplate-project-american-british-english-translator/" target="_blank" rel="noopener noreferrer nofollow">this GitHub repo</a> and complete your project locally.
-   Use <a href="https://gitpod.io/?autostart=true#https://github.com/freeCodeCamp/boilerplate-project-american-british-english-translator/" target="_blank" rel="noopener noreferrer nofollow">our Gitpod starter project</a> to complete your project.
-   Use a site builder of your choice to complete the project. Be sure to incorporate all the files from our GitHub repo.

# --instructions--

-   All logic can go into `/components/translator.js`
-   Complete a rota `/api/translate` em `/routes/api.js`
-   Crie todos os testes unitários/funcionais em `tests/1_unit-tests.js` e `tests/2_functional-tests.js`
-   Veja os arquivos JavaScript em `/components` para diferentes ortografias e termos que sua aplicação deve traduzir
-   Para executar os testes automaticamente, defina `NODE_ENV` como `test` sem aspas no arquivo `.env`
-   To run the tests in the console, use the command `npm run test`.

Write the following tests in `tests/1_unit-tests.js`:

-   Translate `Mangoes are my favorite fruit.` to British English
-   Traduza `I ate yogurt for breakfast.` para o inglês britânico
-   Traduza `We had a party at my friend's condo.` para o inglês britânico
-   Traduza `Can you toss this in the trashcan for me?` para o inglês britânico
-   Traduza `The parking lot was full.` para o inglês britânico
-   Traduza `Like a high tech Rube Goldberg machine.` para o inglês britânico
-   Traduza `To play hooky means to skip class or work.` para o inglês britânico
-   Traduza `No Mr. Bond, I expect you to die.` para o inglês britânico
-   Traduza `Dr. Grosh will see you now.` para o inglês britânico
-   Traduza `Lunch is at 12:15 today.` para o inglês britânico
-   Traduza `We watched the footie match for a while.` para o inglês americano
-   Traduza `Paracetamol takes up to an hour to work.` para o inglês americano
-   Traduza `First, caramelise the onions.` para o inglês americano
-   Traduza `I spent the bank holiday at the funfair.` para o inglês americano
-   Traduza `I had a bicky then went to the chippy.` para o inglês americano
-   Traduza `I've just got bits and bobs in my bum bag.` para o inglês americano
-   Traduza `The car boot sale at Boxted Airfield was called off.` para o inglês americano
-   Traduza `Have you met Mrs Kalyani?` para o inglês americano
-   Traduza `Prof Joyner of King's College, London.` para o inglês americano
-   Traduza `Tea time is usually around 4 or 4.30.` para o inglês americano
-   Destaque a tradução em `Mangoes are my favorite fruit.`
-   Destaque a tradução em `I ate yogurt for breakfast.`
-   Destaque a tradução em `We watched the footie match for a while.`
-   Destaque a tradução em `Paracetamol takes up to an hour to work.`

Escreva os testes a seguir em `tests/2_functional-tests.js`:

-   Translation with text and locale fields: POST request to `/api/translate`
-   A tradução com o campo de texto e o campo de localização inválida: solicitação de POST para `/api/translate`
-   A tradução com o campos de texto ausente: solicitação de POST para `/api/translate`
-   A tradução com o campo de localização ausente: solicitação de POST para `/api/translate`
-   A tradução com o campo vazio: solicitação de POST para `/api/translate`
-   A tradução com texto que não precisa de tradução: solicitação de POST para `/api/translate`

# --hints--

Você deve fornecer seu próprio projeto, não o exemplo de URL.

```js
(getUserInput) => {
  assert(
    !/.*\/american-british-translator\.freecodecamp\.rocks/.test(
      getUserInput('url')
    )
  );
};
```

You can `POST` to `/api/translate` with a body containing `text` with the text to translate and `locale` with either `american-to-british` or `british-to-american`. The returned object should contain the submitted `text` and `translation` with the translated text.

```js
async (getUserInput) => {
  try {
    const text = 'Mangoes are my favorite fruit.';
    const locale = 'american-to-british';
    const output = {
      text: 'Mangoes are my favorite fruit.',
      translation:
        'Mangoes are my <span class="highlight">favourite</span> fruit.'
    };
    let data = await fetch(getUserInput('url') + '/api/translate', {
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
async (getUserInput) => {
  try {
    const text = 'Lunch is at 12:15 today.';
    const locale = 'american-to-british';
    const output = {
      text: text,
      translation: 'Lunch is at <span class="highlight">12.15</span> today.'
    };
    let data = await fetch(getUserInput('url') + '/api/translate', {
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
async (getUserInput) => {
  try {
    const text = 'Dr. Grosh will see you now.';
    const locale = 'american-to-british';
    const output = {
      text: text,
      translation: '<span class="highlight">Dr</span> Grosh will see you now.'
    };
    let data = await fetch(getUserInput('url') + '/api/translate', {
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
async (getUserInput) => {
  try {
    const text = 'Mangoes are my favorite fruit.';
    const locale = 'american-to-british';
    const output = {
      text: 'Mangoes are my favorite fruit.',
      translation:
        'Mangoes are my <span class="highlight">favourite</span> fruit.'
    };
    let data = await fetch(getUserInput('url') + '/api/translate', {
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
async (getUserInput) => {
  try {
    const locale = 'american-to-british';
    let data = await fetch(getUserInput('url') + '/api/translate', {
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
async (getUserInput) => {
  try {
    const locale = 'american-to-british';
    let data = await fetch(getUserInput('url') + '/api/translate', {
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
async (getUserInput) => {
  try {
    const text = "Ceci n'est pas une pipe";
    const locale = 'french-to-american';
    let data = await fetch(getUserInput('url') + '/api/translate', {
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
async (getUserInput) => {
  try {
    const locale = 'british-to-american';
    const output = {
      text: 'SaintPeter and nhcarrigan give their regards!',
      translation: 'Everything looks good to me!'
    };
    let data = await fetch(getUserInput('url') + '/api/translate', {
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
async (getUserInput) => {
  try {
    const getTests = await $.get(getUserInput('url') + '/_api/get-tests');
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
async (getUserInput) => {
  try {
    const getTests = await $.get(getUserInput('url') + '/_api/get-tests');
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
