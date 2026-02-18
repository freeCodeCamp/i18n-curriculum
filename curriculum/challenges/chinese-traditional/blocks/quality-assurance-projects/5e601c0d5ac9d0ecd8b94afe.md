---
id: 5e601c0d5ac9d0ecd8b94afe
title: 美式英式翻譯器
challengeType: 4
forumTopicId: 462358
dashedName: american-british-translator
---

# --description--

建置一個功能上類似於此的全端 JavaScript 應用程式：<a href="https://american-british-translator.freecodecamp.rocks/" target="_blank" rel="noopener noreferrer nofollow">https://american-british-translator.freecodecamp.rocks/</a>。進行此專案將需要你使用以下其中一種方法來撰寫你的程式碼：

-   複製<a href="https://github.com/freeCodeCamp/boilerplate-project-american-british-english-translator/" target="_blank" rel="noopener noreferrer nofollow">這個 GitHub 倉庫</a>，並在區域完成你的專案。
-   使用你選擇的網站建置工具來完成專案。務必將我們 GitHub 倉庫中的所有檔案納入其中。

# --instructions--

-   所有邏輯都可以放入 `/components/translator.js`
-   完成 `/routes/api.js` 中的 `/api/translate` 路由
-   在 `tests/1_unit-tests.js` 和 `tests/2_functional-tests.js` 中創建所有的單元測試和功能測試。
-   請參閱 `/components` 中的 JavaScript 檔案，以了解你的應用程式應該翻譯的不同拼寫和術語。
-   要自動執行測試，請在 `.env` 檔案中將 `NODE_ENV` 設定為不帶引號的 `test`。
-   要在主控台中執行測試，請使用指令 `npm run test`。

將以下測試寫入 `tests/1_unit-tests.js`：

-   將 `Mangoes are my favorite fruit.` 翻譯成英式英語
-   將 `I ate yogurt for breakfast.` 翻譯成英式英語
-   `We had a party at my friend's condo.`
-   將 `Can you toss this in the trashcan for me?` 翻譯成英式英語
-   將 `The parking lot was full.` 翻譯成英式英語
-   像高科技的魯布·戈德堡機械裝置。
-   跳課意指逃避上課或工作。
-   將 `No Mr. Bond, I expect you to die.` 翻譯成英式英語
-   將 `Dr. Grosh will see you now.` 翻譯成英式英語
-   將 `Lunch is at 12:15 today.` 翻譯成英式英語
-   將 `We watched the footie match for a while.` 翻譯成美式英語
-   `Paracetamol takes up to an hour to work.` 翻譯成美式英語
-   將 `First, caramelise the onions.` 翻譯成美式英語
-   將 `I spent the bank holiday at the funfair.` 翻譯成美式英語
-   Translate `I had a bicky then went to the chippy.` to American English
-   Translate `I've just got bits and bobs in my bum bag.` to American English
-   Translate `The car boot sale at Boxted Airfield was called off.` to American English
-   Translate `Have you met Mrs Kalyani?` to American English
-   將 `Prof Joyner of King's College, London.` 翻譯成美式英語
-   `Tea time is usually around 4 or 4.30.`
-   凸顯標示 `Mangoes are my favorite fruit.` 的翻譯
-   在 `I ate yogurt for breakfast.` 中凸顯標示翻譯
-   在 `We watched the footie match for a while.` 中凸顯標示翻譯
-   在 `Paracetamol takes up to an hour to work.` 中凸顯標示翻譯

將以下測試寫入 `tests/2_functional-tests.js`：

-   帶有文字和區域的翻譯欄位：對 `/api/translate` 發出 POST 請求
-   帶有文字和無效區域的欄位的翻譯：對 `/api/translate` 發出 POST 請求
-   翻譯缺少文字欄位：對 `/api/translate` 的 POST 請求
-   缺少區域的欄位的翻譯：對 `/api/translate` 發出 POST 請求
-   POST 請求至 `/api/translate`
-   帶有不需翻譯文字的翻譯：POST 請求到 `/api/translate`

# --hints--

你應該提供你自己的專案，而不是範例 URL。

```js
  assert(
    !/.*\/american-british-translator\.freecodecamp\.rocks/.test(
      code
    )
  );
```

你可以對 `/api/translate` 使用 `POST`，並在主體中包含帶有要翻譯文字的 `text` 以及 `locale`，其值為 `american-to-british` 或 `british-to-american`。傳回的物件應包含提交的 `text` 和帶有翻譯文字的 `translation`。

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

`/api/translate` 路由應該控制代碼美式和英式英語中時間的書寫方式。例如，十點三十分在英式英語中寫作 "10.30"，在美式英語中寫作 "10:30"。`span` 元素應該包覆整個時間字串，即 `<span class="highlight">10:30</span>`。

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

`/api/translate` 路由也應該控制代碼美式和英式英語中稱謂縮寫的方式。例如，Doctor Wright 在英式英語中縮寫為 "Dr Wright"，而在美式英語中縮寫為 "Dr. Wright"。請參閱 `/components/american-to-british-titles.js` 了解你的應用程式應該控制代碼的不同稱謂。

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

將任何翻譯過的拼寫或術語以 `<span class="highlight">...</span>` 標籤包裹，使其以綠色顯示。

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

如果遺漏一個或多個必填欄，傳回 `{ error: 'Required field(s) missing' }`。

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

如果 `text` 為空，則傳回 `{ error: 'No text to translate' }`

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

如果 `locale` 不符合兩個指定的區域的其中一個，傳回 `{ error: 'Invalid value for locale field' }`。

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

如果 `text` 不需要翻譯，請為 `translation` 值傳回 `"Everything looks good to me!"`。

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

所有 24 個單元測試均已完成並通過。

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

所有 6 項功能測試均已完成且通過。

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
