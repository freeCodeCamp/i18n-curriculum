---
id: 5e601c0d5ac9d0ecd8b94afe
title: 美式英语与英式英语转换器
challengeType: 4
forumTopicId: 462358
dashedName: american-british-translator
---

# --description--

构建一个功能上类似于此的全栈 JavaScript 应用程序：<a href="https://american-british-translator.freecodecamp.rocks/" target="_blank" rel="noopener noreferrer nofollow">https://american-british-translator.freecodecamp.rocks/</a>。在此项目中，你将使用以下方法之一编写你的代码：

-   克隆<a href="https://github.com/freeCodeCamp/boilerplate-project-american-british-english-translator/" target="_blank" rel="noopener noreferrer nofollow">这个 GitHub 仓库</a>，并在本地完成你的项目。
-   你可以选择任何网站构建工具完成该项目。 需要包含我们 GitHub 仓库的所有文件。

# --instructions--

-   所有逻辑都可以进入 `/components/translator.js`
-   在 `/routes/api.js` 中完成 `/api/translate` 路由
-   在 `tests/1_unit-tests.js` 和 `tests/2_functional-tests.js` 中创建所有单元/功能测试
-   查看 `/components` 中的 JavaScript 文件以获取应用程序应该翻译的条款以及不同的拼写
-   在 `.env` 文件中将 `NODE_ENV` 设置为 `test`（没有引号），以此自动运行测试
-   使用 `npm run test` 命令在 console 中运行测试。

在 `tests/1_unit-tests.js` 中写下以下测试：

-   将 `Mangoes are my favorite fruit.` 转换成英式英语
-   将 `I ate yogurt for breakfast.` 转换成英式英语
-   将 `We had a party at my friend's condo.` 转换成英式英语
-   将 `Can you toss this in the trashcan for me?` 转换成英式英语
-   将 `The parking lot was full.` 转换成英式英语
-   将 `Like a high tech Rube Goldberg machine.` 转换成英式英语
-   将 `To play hooky means to skip class or work.` 转换成英式英语
-   将 `No Mr. Bond, I expect you to die.` 转换成英式英语
-   将 `Dr. Grosh will see you now.` 转换成英式英语
-   将 `Lunch is at 12:15 today.` 转换成英式英语
-   将 `We watched the footie match for a while.` 转换成美式英语
-   将 `Paracetamol takes up to an hour to work.` 转换成美式英语
-   将 `First, caramelise the onions.` 转换成美式英语
-   将 `I spent the bank holiday at the funfair.` 转换成美式英语
-   将 `I had a bicky then went to the chippy.` 转换成美式英语
-   将 `I've just got bits and bobs in my bum bag.` 转换成美式英语
-   将 `The car boot sale at Boxted Airfield was called off.` 转换成美式英语
-   将 `Have you met Mrs Kalyani?` 转换成美式英语
-   将 `Prof Joyner of King's College, London.` 转换成美式英语
-   将 `Tea time is usually around 4 or 4.30.` 转换成美式英语
-   将 `Mangoes are my favorite fruit.` 里的转换高亮
-   将 `I ate yogurt for breakfast.` 里的转换高亮
-   将 `We watched the footie match for a while.` 里的转换高亮
-   将 `Paracetamol takes up to an hour to work.` 里的转换高亮

在 `tests/2_functional-tests.js` 中编写以下测试：

-   翻译文本字段和本地化字段：POST 请求到 `/api/translate`
-   翻译文本字段和无效的本地化字段：POST 请求到 `/api/translate`
-   翻译缺失的文本字段：POST 请求到 `/api/translate`
-   翻译缺失的本地化字段：POST 请求到 `/api/translate`
-   翻译空的文本：POST 请求到 `/api/translate`
-   翻译无需翻译的文本：POST 请求到 `/api/translate`

# --hints--

你应该提交你自己的项目，而不是示例的 URL。

```js
  assert(
    !/.*\/american-british-translator\.freecodecamp\.rocks/.test(
      code
    )
  );
```

可以向 `/api/translate` 发送 `POST` 请求，对请求体内的 `text` 文本进行翻译， `locale` 字段可以是 `american-to-british` 或 `british-to-american`。 返回的对象应该包含提交的 `text` 以及翻译的文本 `translation`。

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

`/api/translate` 路由应该可以处理用英美方式英语写的时间。 例如，十点半英式英语写为 “10.30”，而美式英语写为 “10:30”。  The `span` element should wrap the entire time string, i.e. `<span class="highlight">10:30</span>`.

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

`/api/translate` 路由也应该处理美式英语和英式英语中头衔/尊称的缩写方式。  For example, Doctor Wright is abbreviated as "Dr Wright" in British English and "Dr.  Wright" in American English. 请参阅 `/components/american-to-british-titles.js`，了解程序应当处理的不同标题。

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

为你的 `<span class="highlight">类</span>` 添加 `<span class="highlight">标签</span>`。

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

如果缺少一个或多个必填字段，返回 `{ error: 'Required field(s) missing' }`。

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

如果 `text` 为空，返回 `{ error: 'No text to translate' }`。

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

如果 `locale` 与两个指定的 locales 都不匹配，返回 `{ error: 'Invalid value for locale field' }`。

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

如果 `text` 不需要翻译，返回的 `translation` 值为`"Everything looks good to me!"`。

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

所有 24 项单元测试都已完成并通过。

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

所有 6 项功能测试都已完成并通过。

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
