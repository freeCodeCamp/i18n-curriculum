---
id: 5e601c0d5ac9d0ecd8b94afe
title: 美式英語英式英語轉換器
challengeType: 4
forumTopicId: 462358
dashedName: american-british-translator
---

# --description--

Build a full stack JavaScript app that is functionally similar to this: <a href="https://american-british-translator.freecodecamp.rocks/" target="_blank" rel="noopener noreferrer nofollow">https://american-british-translator.freecodecamp.rocks/</a>. Working on this project will involve you writing your code using one of the following methods:

-   克隆 <a href="https://github.com/freeCodeCamp/boilerplate-project-american-british-english-translator/" target="_blank" rel="noopener noreferrer nofollow">GitHub 倉庫</a> 並完成您的本地項目。
-   Use a site builder of your choice to complete the project. Be sure to incorporate all the files from our GitHub repo.

# --instructions--

-   All logic can go into `/components/translator.js`
-   在 `/routes/api.js` 中完成 `/api/translate` 路由
-   在 `tests/1_unit-tests.js` 和 `tests/2_functional-tests.js` 中創建所有 unit/functional 測試
-   查看 `/components` 中的 JavaScript 文件以獲取應用程序應該翻譯的條款以及不同的拼寫
-   在 `.env` 文件中將 `NODE_ENV` 設置爲 `test`（沒有引號），以此自動運行測試
-   To run the tests in the console, use the command `npm run test`.

Write the following tests in `tests/1_unit-tests.js`:

-   Translate `Mangoes are my favorite fruit.` to British English
-   將 `I ate yogurt for breakfast.` 轉換成英式英語。
-   將 `We had a party at my friend's condo.` 轉換成英式英語。
-   將 `Can you toss this in the trashcan for me?` 轉換成英式英語。
-   將 `The parking lot was full.` 轉換成英式英語。
-   將 `Like a high tech Rube Goldberg machine.` 轉換成英式英語。
-   將 `To play hooky means to skip class or work.` 轉換成英式英語。
-   將 `No Mr. Bond, I expect you to die.` 轉換成英式英語。
-   將 `Dr. Grosh will see you now.` 轉換成英式英語。
-   將 `Lunch is at 12:15 today.` 轉換成英式英語。
-   將 `We watched the footie match for a while.` 轉換成美式英語。
-   將 `Paracetamol takes up to an hour to work.` 轉換成美式英語。
-   將 `First, caramelise the onions.` 轉換成美式英語。
-   將 `I spent the bank holiday at the funfair.` 轉換成美式英語。
-   將 `I had a bicky then went to the chippy.` 轉換成美式英語。
-   將 `I've just got bits and bobs in my bum bag.` 轉換成美式英語。
-   將 `The car boot sale at Boxted Airfield was called off.` 轉換成美式英語。
-   將 `Have you met Mrs Kalyani?` 轉換成美式英語。
-   將 `Prof Joyner of King's College, London.` 轉換成美式英語。
-   將 `Tea time is usually around 4 or 4.30.` 轉換成美式英語。
-   將 `Mangoes are my favorite fruit.` 裏的轉換高亮。
-   高亮 `I ate yogurt for breakfast.` 裏的轉換。
-   高亮 `We watched the footie match for a while.` 裏的轉換。
-   高亮 `Paracetamol takes up to an hour to work.` 裏的轉換。

在 `tests/2_functional-tests.js` 中編寫下以下測試：

-   Translation with text and locale fields: POST request to `/api/translate`
-   翻譯文本字段和無效的本地化字段: POST 請求到 `/api/translate`
-   翻譯缺失的文本字段: POST 請求到 `/api/translate`
-   翻譯缺失的本地化字段: POST 請求到 `/api/translate`
-   翻譯空的文本: POST 請求到 `/api/translate`
-   翻譯無需翻譯的文本: POST 請求到 `/api/translate`

# --hints--

你應該提交自己的項目，而不是示例的 URL。

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

The `/api/translate` route should handle the way time is written in American and British English. For example, ten thirty is written as "10.30" in British English and "10:30" in American English. `span` 元素應該包裹整個時間字符串，即 `<span class="highlight">10:30</span>`。

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

將任何翻譯過的拼寫或條目放在 `<span class="highlight">...</span>` 標籤內以使其顯示爲綠色。

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
