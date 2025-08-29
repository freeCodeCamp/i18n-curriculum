---
id: 5e601c0d5ac9d0ecd8b94afe
title: Перекладач з американської на британську
challengeType: 4
forumTopicId: 462358
dashedName: american-british-translator
---

# --description--

Створіть JavaScript застосунок повного стека, який функціонально схожий до цього: <a href="https://american-british-translator.freecodecamp.rocks/" target="_blank" rel="noopener noreferrer nofollow"> https://american-british-translator.freecodecamp.rocks </a>. Робота над цим проєктом передбачає написання коду за допомогою одного з наступних методів:

-   Клонуйте <a href="https://github.com/freeCodeCamp/boilerplate-project-american-british-english-translator/" target="_blank" rel="noopener noreferrer nofollow">цей GitHub репо</a> та завершіть свій проєкт локально.
-   Use a site builder of your choice to complete the project. Be sure to incorporate all the files from our GitHub repo.

# --instructions--

-   Уся логіка може йти у `/components/translator.js`
-   Завершіть маршрут `/api/translate` в `/routes/api.js`
-   Створіть усі сегменти/функціональні тести в `tests/1_unit-tests.js` та `tests/2_functional-tests.js`
-   Перегляньте файли JavaScript у `/components` для різного правопису і термінів вашого застосунку, які він повинен перекладати
-   Щоб запустити тести автоматично, встановіть `NODE_ENV` на `test` без лапок у файлі `.env`
-   Щоб запустити тести на консолі, використайте команду `npm run test`.

Напишіть наступні тести в `tests/1_unit-tests.js`:

-   Перекладіть `Mangoes are my favorite fruit.` на британську англійську
-   Перекладіть британською англійською `I ate yogurt for breakfast.`
-   Перекладіть британською англійською `We had a party at my friend's condo.`
-   Перекладіть британською англійською `Can you toss this in the trashcan for me?`
-   Перекладіть британською англійською `The parking lot was full.`
-   Перекладіть британською англійською `Like a high tech Rube Goldberg machine.`
-   Перекладіть британською англійською `To play hooky means to skip class or work.`
-   Перекладіть британською англійською `No Mr. Bond, I expect you to die.`
-   Перекладіть британською англійською `Dr. Grosh will see you now.`
-   Перекладіть британською англійською `Lunch is at 12:15 today.`
-   Перекладіть американською англійською `We watched the footie match for a while.`
-   Перекладіть американською англійською `Paracetamol takes up to an hour to work.`
-   Перекладіть американською англійською `First, caramelise the onions.`
-   Перекладіть американською англійською `I spent the bank holiday at the funfair.`
-   Перекладіть американською англійською `I had a bicky then went to the chippy.`
-   Перекладіть американською англійською `I've just got bits and bobs in my bum bag.`
-   Перекладіть американською англійською `The car boot sale at Boxted Airfield was called off.`
-   Перекладіть американською англійською `Have you met Mrs Kalyani?`
-   Перекладіть американською англійською `Prof Joyner of King's College, London.`
-   Перекладіть американською англійською `Tea time is usually around 4 or 4.30.`
-   Виділіть переклад в `Mangoes are my favorite fruit.`
-   Виділіть переклад в `I ate yogurt for breakfast.`
-   Виділіть переклад в `We watched the footie match for a while.`
-   Виділіть переклад в `Paracetamol takes up to an hour to work.`

Напишіть наступні тести в `tests/2_functional-tests.js`:

-   Переклад із полями тексту та локалі: запит POST до `/api/translate`
-   Переклад тексту з недопустимими полями локалізації: запит POST на `/api/translate`
-   Переклад з пропущеним текстовим полем: запит POST на `/api/translate`
-   Переклад з пропущеним полем локалізації: запит POST на `/api/translate`
-   Переклад з порожнім текстом: запит POST на `/api/translate`
-   Переклад тексту, який не потребує перекладу: запит POST на `/api/translate`

# --hints--

Ви повинні надати власний проєкт, а не URL-адресу прикладу.

```js
  assert(
    !/.*\/american-british-translator\.freecodecamp\.rocks/.test(
      code
    )
  );
```

Ви можете надіслати запит `POST` до `/api/translate` із тілом, що містить `text` з текстом для перекладу та `locale` з `american-to-british` або `british-to-american`. Повернений об’єкт міститиме наданий `text` та `translation` з перекладеним текстом.

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

Маршрут `/api/translate` повинен обробляти те, як написаний час американською та британською англійською. Наприклад, пів на десяту пишеться «10.30» британською та «10:30» американською. Елемент `span` повинен повністю обгорнути рядок часу, тобто `<span class="highlight">10:30</span>`.

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

Маршрут `/api/translate` також повинен обробляти скорочення титулів та гоноративів американською та британською. Наприклад, Доктор Райт пишеться «Dr Wright» британською та «Dr. Wright» американською. Перегляньте `/components/american-to-british-titles.js` для різних титулів, які повинен обробляти ваш застосунок.

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

Обгорніть будь-які перекладені правописи чи терміни тегами `<span class="highlight">...</span>`, щоб вони були зеленими.

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

Якщо одне чи більше необхідних полів відсутні, поверніть `{ error: 'Required field(s) missing' }`.

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

Якщо `text` порожній, поверніть `{ error: 'No text to translate' }`

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

Якщо `locale` не відповідає одній із вказаних локалей, поверніть `{ error: 'Invalid value for locale field' }`.

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

Якщо `text` не потрібен переклад, поверніть `"Everything looks good to me!"` для значення `translation`.

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

Усі 24 модульних тестів завершено та успішно пройдено.

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

Усі 6 функціональних тестів завершено та успішно пройдено.

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
