---
id: 5e601c0d5ac9d0ecd8b94afe
title: アメリカ英語とイギリス英語の翻訳アプリ
challengeType: 4
forumTopicId: 462358
dashedName: american-british-translator
---

# --description--

このプロジェクトでは、次のサイトと機能的に似たフルスタックJavaScriptアプリを作成します：<a href="https://american-british-translator.freecodecamp.rocks/" target="_blank" rel="noopener noreferrer nofollow">https://american-british-translator.freecodecamp.rocks/</a>。このプロジェクトに取り組む際は、以下のいずれかの方法でコードを書いてください。

- <a href="https://github.com/freeCodeCamp/boilerplate-project-american-british-english-translator/" target="_blank" rel="noopener noreferrer nofollow">このGitHubリポジトリ</a>をクローンして、ローカルでプロジェクトを完成させる。
- お好きなサイトビルダーを使ってプロジェクトを完成させる。ただし、GitHubリポジトリのすべてのファイルを取り込むことを忘れないでください。

# --instructions--

- すべてのロジックは`/components/translator.js`に記述してください。
- `/api/translate`の`/routes/api.js`ルートを完成させてください。
- `tests/1_unit-tests.js`と`tests/2_functional-tests.js`にユニットテストおよび機能テストをすべて作成してください。
- アプリケーションが翻訳すべき異なるスペルや用語については、`/components`のJavaScriptファイルを参照してください。
- テストを自動で実行するには、`NODE_ENV`ファイル内で`test`を引用符なしで`.env`に設定してください。
- コンソールでテストを実行するには、コマンド`npm run test`を使用してください。

`tests/1_unit-tests.js`に以下のテストを記述してください。

- `Mangoes are my favorite fruit.`をイギリス英語に翻訳する
- `I ate yogurt for breakfast.`をイギリス英語に翻訳する
- `We had a party at my friend's condo.`をイギリス英語に翻訳する
- `Can you toss this in the trashcan for me?`をイギリス英語に翻訳する
- `The parking lot was full.`をイギリス英語に翻訳する
- `Like a high tech Rube Goldberg machine.`をイギリス英語に翻訳する
- `To play hooky means to skip class or work.`をイギリス英語に翻訳する
- `No Mr. Bond, I expect you to die.`をイギリス英語に翻訳する
- `Dr. Grosh will see you now.`をイギリス英語に翻訳する
- `Lunch is at 12:15 today.`をイギリス英語に翻訳する
- `We watched the footie match for a while.`をアメリカ英語に翻訳する
- `Paracetamol takes up to an hour to work.`をアメリカ英語に翻訳する
- `First, caramelise the onions.`をアメリカ英語に翻訳する
- `I spent the bank holiday at the funfair.`をアメリカ英語に翻訳する
- `I had a bicky then went to the chippy.`をアメリカ英語に翻訳する
- `I've just got bits and bobs in my bum bag.`をアメリカ英語に翻訳する
- `The car boot sale at Boxted Airfield was called off.`をアメリカ英語に翻訳する
- `Have you met Mrs Kalyani?`をアメリカ英語に翻訳する
- `Prof Joyner of King's College, London.`をアメリカ英語に翻訳する
- `Tea time is usually around 4 or 4.30.`をアメリカ英語に翻訳する
- `Mangoes are my favorite fruit.`で翻訳箇所をハイライトする
- `I ate yogurt for breakfast.`で翻訳箇所をハイライトする
- `We watched the footie match for a while.`で翻訳箇所をハイライトする
- `Paracetamol takes up to an hour to work.`で翻訳箇所をハイライトする

`tests/2_functional-tests.js`に以下のテストを記述してください。

- テキストとロケールフィールドを含む翻訳：`/api/translate`へのPOSTリクエスト
- テキストと無効なロケールフィールドを含む翻訳：`/api/translate`へのPOSTリクエスト
- テキストフィールドが欠落している翻訳：`/api/translate`へのPOSTリクエスト
- ロケールフィールドが欠落している翻訳：`/api/translate`へのPOSTリクエスト
- 空のテキストを含む翻訳：`/api/translate`へのPOSTリクエスト
- 翻訳が不要なテキストを含む翻訳：`/api/translate`へのPOSTリクエスト

# --hints--

独自のプロジェクトを用意してください。例のURLは使わないでください。

```js
  assert(
    !/.*\/american-british-translator\.freecodecamp\.rocks/.test(
      code
    )
  );
```

`POST`を`/api/translate`に対して、翻訳するテキストを含む`text`と、`locale`または`american-to-british`のいずれかを指定した`british-to-american`をボディにして送信できます。返されるオブジェクトには、送信した`text`と翻訳されたテキストの`translation`が含まれている必要があります。

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

`/api/translate`ルートは、アメリカ英語とイギリス英語での時間の書き方の違いを処理する必要があります。例えば、10時30分はイギリス英語では「10.30」、アメリカ英語では「10:30」と書きます。`span`要素は時間全体の文字列を囲む必要があります。つまり`<span class="highlight">10:30</span>`です。

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

`/api/translate`ルートは、アメリカ英語とイギリス英語での敬称や肩書きの略し方の違いも処理する必要があります。例えば、Doctor Wrightはイギリス英語では「Dr Wright」、アメリカ英語では「Dr. Wright」と略します。アプリケーションが対応すべき異なる敬称は`/components/american-to-british-titles.js`を参照してください。

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

翻訳されたスペルや用語は`<span class="highlight">...</span>`タグで囲み、緑色で表示されるようにしてください。

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

必須フィールドが1つ以上欠けている場合は、`{ error: 'Required field(s) missing' }`を返してください。

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

`text`が空の場合は、`{ error: 'No text to translate' }`を返してください。

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

`locale`が指定された2つのロケールのいずれかに一致しない場合は、`{ error: 'Invalid value for locale field' }`を返してください。

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

`text`に翻訳が不要な場合は、`"Everything looks good to me!"`を`translation`の値として返してください。

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

24のユニットテストはすべて完成し、合格しています。

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

6つの機能テストはすべて完成し、合格しています。

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
