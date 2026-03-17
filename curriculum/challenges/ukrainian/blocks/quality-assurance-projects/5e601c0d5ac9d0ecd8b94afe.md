---
id: 5e601c0d5ac9d0ecd8b94afe
title: Американсько-британський перекладач
challengeType: 4
forumTopicId: 462358
dashedName: american-british-translator
---

# --description--

Створіть повноцінний JavaScript-застосунок, який функціонально схожий на цей: <a href="https://american-british-translator.freecodecamp.rocks/" target="_blank" rel="noopener noreferrer nofollow">https://american-british-translator.freecodecamp.rocks/</a>. Робота над цим проєктом передбачає написання коду одним із таких способів:

-   Клонуйте <a href="https://github.com/freeCodeCamp/boilerplate-project-american-british-english-translator/" target="_blank" rel="noopener noreferrer nofollow">цей репозиторій GitHub</a> і завершіть проєкт локально.
-   Використайте будь-який конструктор сайтів на свій вибір для завершення проєкту. Обов’язково включіть усі файли з нашого репозиторію GitHub.

# --instructions--

-   Вся логіка може бути розміщена у `/components/translator.js`
-   Завершіть маршрут `/api/translate` у `/routes/api.js`
-   Створіть усі модульні/функціональні тести у `tests/1_unit-tests.js` та `tests/2_functional-tests.js`
-   Перегляньте JavaScript-файли у `/components` для різних варіантів написання та термінів, які ваш застосунок має перекладати
-   Щоб автоматично запускати тести, встановіть `NODE_ENV` у `test` без лапок у файлі `.env`
-   Щоб запускати тести у консолі, використайте команду `npm run test`

Напишіть такі тести у `tests/1_unit-tests.js`:

-   Переклад `Mangoes are my favorite fruit.` на британську англійську
-   Переклад `I ate yogurt for breakfast.` на британську англійську
-   Переклад `We had a party at my friend's condo.` на британську англійську
-   Переклад `Can you toss this in the trashcan for me?` на британську англійську
-   Переклад `The parking lot was full.` на британську англійську
-   Переклад `Like a high tech Rube Goldberg machine.` на британську англійську
-   Переклад `To play hooky means to skip class or work.` на британську англійську
-   Переклад `No Mr. Bond, I expect you to die.` на британську англійську
-   Переклад `Dr. Grosh will see you now.` на британську англійську
-   Переклад `Lunch is at 12:15 today.` на британську англійську
-   Переклад `We watched the footie match for a while.` на американську англійську
-   Переклад `Paracetamol takes up to an hour to work.` на американську англійську
-   Переклад `First, caramelise the onions.` на американську англійську
-   Переклад `I spent the bank holiday at the funfair.` на американську англійську
-   Переклад `I had a bicky then went to the chippy.` на американську англійську
-   Переклад `I've just got bits and bobs in my bum bag.` на американську англійську
-   Переклад `The car boot sale at Boxted Airfield was called off.` на американську англійську
-   Переклад `Have you met Mrs Kalyani?` на американську англійську
-   Переклад `Prof Joyner of King's College, London.` на американську англійську
-   Переклад `Tea time is usually around 4 or 4.30.` на американську англійську
-   Виділення перекладу у `Mangoes are my favorite fruit.`
-   Виділення перекладу у `I ate yogurt for breakfast.`
-   Виділення перекладу у `We watched the footie match for a while.`
-   Виділення перекладу у `Paracetamol takes up to an hour to work.`

Напишіть такі тести у `tests/2_functional-tests.js`:

-   Переклад із полями text і locale: POST-запит до `/api/translate`
-   Переклад із полем text і некоректним locale: POST-запит до `/api/translate`
-   Переклад із відсутнім полем text: POST-запит до `/api/translate`
-   Переклад із відсутнім полем locale: POST-запит до `/api/translate`
-   Переклад із порожнім текстом: POST-запит до `/api/translate`
-   Переклад тексту, який не потребує перекладу: POST-запит до `/api/translate`

# --hints--

Ви маєте надати власний проєкт, а не приклад за URL.

```js
  assert(
    !/.*\/american-british-translator\.freecodecamp\.rocks/.test(
      code
    )
  );
```

Ви можете `POST` до `/api/translate` з тілом, що містить `text` з текстом для перекладу та `locale` з `american-to-british` або `british-to-american`. Повернений об’єкт має містити надіслані `text` і `translation` із перекладеним текстом.

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

Маршрут `/api/translate` має обробляти спосіб запису часу в американській і британській англійській. Наприклад, десять тридцять записується як "10.30" у британській англійській і "10:30" в американській. Елемент `span` має охоплювати весь рядок часу, тобто `<span class="highlight">10:30</span>`.

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

Маршрут `/api/translate` також має обробляти спосіб скорочення титулів/звертань в американській і британській англійській. Наприклад, Doctor Wright скорочується як "Dr Wright" у британській англійській і "Dr. Wright" в американській. Дивіться `/components/american-to-british-titles.js` для різних титулів, які має обробляти ваш застосунок.

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

Обгорніть будь-які перекладені написання або терміни тегами `<span class="highlight">...</span>`, щоб вони відображалися зеленим.

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

Якщо одне або кілька обов’язкових полів відсутні, поверніть `{ error: 'Required field(s) missing' }`.

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

Якщо `text` порожній, поверніть `{ error: 'No text to translate' }`

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

Якщо `locale` не відповідає одному з двох вказаних локалей, поверніть `{ error: 'Invalid value for locale field' }`.

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

Якщо `text` не потребує перекладу, поверніть `"Everything looks good to me!"` для значення `translation`.

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

Всі 24 модульні тести завершені і проходять.

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

Всі 6 функціональних тестів завершені і проходять.

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
