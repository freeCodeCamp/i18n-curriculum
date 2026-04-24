---
id: 5e601bf95ac9d0ecd8b94afd
title: Sudoku ソルバー
challengeType: 4
forumTopicId: 462357
dashedName: sudoku-solver
---

# --description--

このリンク先と機能的に似たフルスタックJavaScriptアプリを作成してください：<a href="https://sudoku-solver.freecodecamp.rocks/" target="_blank" rel="noopener noreferrer nofollow">https://sudoku-solver.freecodecamp.rocks/</a>。このプロジェクトに取り組むには、以下のいずれかの方法でコードを書く必要があります。

- <a href="https://github.com/freecodecamp/boilerplate-project-sudoku-solver" target="_blank" rel="noopener noreferrer nofollow">このGitHubリポジトリ</a>をクローンして、ローカルでプロジェクトを完成させる。
- お好みのサイトビルダーを使ってプロジェクトを完成させる。必ずGitHubリポジトリのすべてのファイルを組み込んでください。

# --instructions--

- すべてのパズルロジックは`/controllers/sudoku-solver.js`に入れてください。
  - `validate`関数は、与えられたパズル文字列が入力として81文字の有効な文字を持つかどうかをチェックする必要があります。
  - `check`関数は、*現在の*ボードの状態に対して検証を行う必要があります。
  - `solve`関数は、テスト用の入力や解答だけでなく、任意の有効なパズル文字列を解く処理を担当します。解くためのロジックを自分で書く必要があります。
- すべてのルーティングロジックは`/routes/api.js`に入れてください。
- `/controllers`の`puzzle-strings.js`ファイルには、アプリケーションが解くべきサンプルパズルがいくつかあります。
- このページのチャレンジテストを実行するには、`.env`ファイルで`NODE_ENV`を引用符なしで`test`に設定してください。
- コンソールでテストを実行するには、コマンド`npm run test`を使用してください。

`tests/1_unit-tests.js`に以下のテストを書いてください。

- 81文字の有効なパズル文字列をロジックが処理できること
- 1-9または`.`以外の無効な文字を含むパズル文字列をロジックが処理できること
- 81文字でないパズル文字列をロジックが処理できること
- 有効な行の配置をロジックが処理できること
- 無効な行の配置をロジックが処理できること
- 有効な列の配置をロジックが処理できること
- 無効な列の配置をロジックが処理できること
- 有効な領域（3x3グリッド）の配置をロジックが処理できること
- 無効な領域（3x3グリッド）の配置をロジックが処理できること
- 有効なパズル文字列がソルバーを通過すること
- 無効なパズル文字列がソルバーで失敗すること
- 不完全なパズルに対してソルバーが期待される解答を返すこと

`tests/2_functional-tests.js`に以下のテストを書いてください。

- 有効なパズル文字列でパズルを解く：`/api/solve`へのPOSTリクエスト
- パズル文字列が欠落している場合にパズルを解く：`/api/solve`へのPOSTリクエスト
- 無効な文字を含むパズルでパズルを解く：`/api/solve`へのPOSTリクエスト
- 長さが正しくないパズルでパズルを解く：`/api/solve`へのPOSTリクエスト
- 解けないパズルを解く：`/api/solve`へのPOSTリクエスト
- すべてのフィールドを含むパズル配置をチェックする：`/api/check`へのPOSTリクエスト
- 単一の配置衝突があるパズル配置をチェックする：`/api/check`へのPOSTリクエスト
- 複数の配置衝突があるパズル配置をチェックする：`/api/check`へのPOSTリクエスト
- すべての配置衝突があるパズル配置をチェックする：`/api/check`へのPOSTリクエスト
- 必須フィールドが欠落しているパズル配置をチェックする：`/api/check`へのPOSTリクエスト
- 無効な文字を含むパズル配置をチェックする：`/api/check`へのPOSTリクエスト
- 長さが正しくないパズル配置をチェックする：`/api/check`へのPOSTリクエスト
- 無効な配置座標を含むパズル配置をチェックする：`/api/check`へのPOSTリクエスト
- 無効な配置値を含むパズル配置をチェックする：`/api/check`へのPOSTリクエスト

# --hints--

独自のプロジェクトを用意してください。例のURLは使わないでください。

```js
  const url = code;
  assert(!/.*\/sudoku-solver\.freecodecamp\.rocks/.test(code));
```

`POST` `/api/solve`を使って、`puzzle`を含むフォームデータを送信できます。`puzzle`は数字（1-9）と空白を表すピリオドの組み合わせの文字列です`.`。返されるオブジェクトには、解かれたパズルを含む`solution`プロパティがあります。

```js
  const input =
    '..9..5.1.85.4....2432......1...69.83.9.....6.62.71...9......1945....4.37.4.3..6..';
  const output =
    '769235418851496372432178956174569283395842761628713549283657194516924837947381625';
  const data = await fetch(code + '/api/solve', {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify({ puzzle: input })
  });
  const parsed = await data.json();
  assert.property(parsed, 'solution');
  assert.equal(parsed.solution, output);
```

`/api/solve`に送信されたオブジェクトに`puzzle`が欠けている場合、返される値は`{ error: 'Required field missing' }`です。

```js
  const input =
    '..9..5.1.85.4....2432......1...69.83.9.....6.62.71...9......1945....4.37.4.3..6..';
  const output = 'Required field missing';
  const data = await fetch(code + '/api/solve', {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify({ notpuzzle: input })
  });
  const parsed = await data.json();
  assert.property(parsed, 'error');
  assert.equal(parsed.error, output);
```

`/api/solve`に送信されたパズルに数字またはピリオド以外の値が含まれている場合、返される値は`{ error: 'Invalid characters in puzzle' }`です。

```js
  const input =
    'AA9..5.1.85.4....2432......1...69.83.9.....6.62.71...9......1945....4.37.4.3..6..';
  const output = 'Invalid characters in puzzle';
  const data = await fetch(code + '/api/solve', {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify({ puzzle: input })
  });
  const parsed = await data.json();
  assert.property(parsed, 'error');
  assert.equal(parsed.error, output);
```

`/api/solve`に送信されたパズルが81文字より多いか少ない場合、返される値は`{ error: 'Expected puzzle to be 81 characters long' }`です。

```js
  const inputs = [
    '..9..5.1.85.4....2432......1...69.83.9.....6.62.71...9......1945....4.37.4.3..6.',
    '..9..5.1.85.4....2432......1...69.83.9.....6.62.71...9......1945....4.37.4.3..6...'
  ];
  const output = 'Expected puzzle to be 81 characters long';
  for (const input of inputs) {
    const data = await fetch(code + '/api/solve', {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ puzzle: input })
    });
    const parsed = await data.json();
    assert.property(parsed, 'error');
    assert.equal(parsed.error, output);
  }
```

`/api/solve`に送信されたパズルが無効または解けない場合、返される値は`{ error: 'Puzzle cannot be solved' }`です。

```js
  const input =
    '9.9..5.1.85.4....2432......1...69.83.9.....6.62.71...9......1945....4.37.4.3..6..';
  const output = 'Puzzle cannot be solved';
  const data = await fetch(code + '/api/solve', {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify({ puzzle: input })
  });
  const parsed = await data.json();
  assert.property(parsed, 'error');
  assert.equal(parsed.error, output);
```

`POST`を使って、`/api/check`に`puzzle`、`coordinate`、`value`を含むオブジェクトを送信できます。`coordinate`は行を示すA-Iの文字で、その後に列を示す1-9の数字が続き、`value`は1-9の数字です。

```js
  const input =
    '..9..5.1.85.4....2432......1...69.83.9.....6.62.71...9......1945....4.37.4.3..6..';
  const coordinate = 'A1';
  const value = '7';
  const data = await fetch(code + '/api/check', {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify({ puzzle: input, coordinate, value })
  });
  const parsed = await data.json();
  assert.property(parsed, 'valid');
  assert.isTrue(parsed.valid);
```

`POST`から`/api/check`への戻り値は、`valid`プロパティを含むオブジェクトで、指定された座標に数字を置ける場合は`true`、置けない場合は`false`です。falseの場合、返されるオブジェクトには、配置が無効な理由を示す`conflict`プロパティも含まれ、`"row"`、`"column"`、および/または`"region"`の文字列が含まれます。

```js
  const input =
    '..9..5.1.85.4....2432......1...69.83.9.....6.62.71...9......1945....4.37.4.3..6..';
  const coordinate = 'A1';
  const value = '1';
  const conflict = ['row', 'column'];
  const data = await fetch(code + '/api/check', {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify({ puzzle: input, coordinate, value })
  });
  const parsed = await data.json();
  assert.property(parsed, 'valid');
  assert.isFalse(parsed.valid);
  assert.property(parsed, 'conflict');
  assert.include(parsed.conflict, 'row');
  assert.include(parsed.conflict, 'column');
```

`value`が`/api/check`に送信され、その`coordinate`の`puzzle`にすでに配置されている場合、返される値は`value`が衝突していなければ`true`を持つ`valid`プロパティを含むオブジェクトです。

```js
  const input =
  '..9..5.1.85.4....2432......1...69.83.9.....6.62.71...9......1945....4.37.4.3..6..';
  const coordinate = 'C3';
  const value = '2';
  const data = await fetch(code + '/api/check', {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify({ puzzle: input, coordinate, value })
  });
  const parsed = await data.json();
  assert.property(parsed, 'valid');
  assert.isTrue(parsed.valid);
```

`/api/check`に送信されたパズルに数字またはピリオド以外の値が含まれている場合、返される値は`{ error: 'Invalid characters in puzzle' }`です。

```js
  const input =
    'AA9..5.1.85.4....2432......1...69.83.9.....6.62.71...9......1945....4.37.4.3..6..';
  const coordinate = 'A1';
  const value = '1';
  const output = 'Invalid characters in puzzle';
  const data = await fetch(code + '/api/check', {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify({ puzzle: input, coordinate, value })
  });
  const parsed = await data.json();
  assert.property(parsed, 'error');
  assert.equal(parsed.error, output);
```

`/api/check`に送信されたパズルが81文字より多いか少ない場合、返される値は`{ error: 'Expected puzzle to be 81 characters long' }`です。

```js
  const inputs = [
    '..9..5.1.85.4....2432......1...69.83.9.....6.62.71...9......1945....4.37.4.3..6.',
    '..9..5.1.85.4....2432......1...69.83.9.....6.62.71...9......1945....4.37.4.3..6...'
  ];
  const coordinate = 'A1';
  const value = '1';
  const output = 'Expected puzzle to be 81 characters long';
  for (const input of inputs) {
    const data = await fetch(code + '/api/check', {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ puzzle: input, coordinate, value })
    });
    const parsed = await data.json();
    assert.property(parsed, 'error');
    assert.equal(parsed.error, output);
  }
```

`/api/check`に送信されたオブジェクトに`puzzle`、`coordinate`、または`value`が欠けている場合、返される値は`{ error: 'Required field(s) missing' }`です。

```js
  const inputs = [
    {
      puzzle: '..9..5.1.85.4....2432......1...69.83.9.....6.62.71...9......1945....4.37.4.3..6..',
      value: '1',
    },
    {
      puzzle: '..9..5.1.85.4....2432......1...69.83.9.....6.62.71...9......1945....4.37.4.3..6..',
      coordinate: 'A1',
    },
    {
      coordinate: 'A1',
      value: '1'
    }
  ];
  for (const input of inputs) {
    const output = 'Required field(s) missing';
    const data = await fetch(code + '/api/check', {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify(input)
    });
    const parsed = await data.json();
    assert.property(parsed, 'error');
    assert.equal(parsed.error, output);
  }
```

`api/check`に送信された座標が存在するグリッドセルを指していない場合、返される値は`{ error: 'Invalid coordinate'}`です。

```js
  const input =
    '..9..5.1.85.4....2432......1...69.83.9.....6.62.71...9......1945....4.37.4.3..6..';
  const output = 'Invalid coordinate';
  const coordinates = ['A0', 'A10', 'J1', 'A', '1', 'XZ18'];
  const value = '7';
  for (const coordinate of coordinates) {
    const data = await fetch(code + '/api/check', {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ puzzle: input, coordinate, value })
    });
    const parsed = await data.json();
    assert.property(parsed, 'error');
    assert.equal(parsed.error, output);
  }
```

`value`が`/api/check`に送信され、1から9の数字でない場合、返される値は`{ error: 'Invalid value' }`です。

```js
  const input =
    '..9..5.1.85.4....2432......1...69.83.9.....6.62.71...9......1945....4.37.4.3..6..';
  const output = 'Invalid value';
  const coordinate = 'A1';
  const values = ['0', '10', 'A'];
  for (const value of values) {
    const data = await fetch(code + '/api/check', {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ puzzle: input, coordinate, value })
    });
    const parsed = await data.json();
    assert.property(parsed, 'error');
    assert.equal(parsed.error, output);
  }
```

12の単体テストはすべて完了し、合格しています。

```js
  try {
    const response = await fetch(code + '/_api/get-tests');
    if (!response.ok) {
      throw Error(await response.text());
    }
    const getTests = await response.json();
    assert.isArray(getTests);
    const unitTests = getTests.filter((test) => {
      return !!test.context.match(/Unit\s*Tests/gi);
    });
    assert.isAtLeast(unitTests.length, 12, 'At least 12 tests passed');
    unitTests.forEach((test) => {
      assert.equal(test.state, 'passed', 'Test in Passed State');
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

14の機能テストはすべて完了し、合格しています。

```js
  try {
    const response = await fetch(code + '/_api/get-tests');
    if (!response.ok) {
      throw Error(await response.text());
    }
    const getTests = await response.json();
    assert.isArray(getTests);
    const functTests = getTests.filter((test) => {
      return !!test.context.match(/Functional\s*Tests/gi);
    });
    assert.isAtLeast(functTests.length, 14, 'At least 14 tests passed');
    functTests.forEach((test) => {
      assert.equal(test.state, 'passed', 'Test in Passed State');
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
