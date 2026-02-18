---
id: 5e601bf95ac9d0ecd8b94afd
title: 數獨解答器
challengeType: 4
forumTopicId: 462357
dashedName: sudoku-solver
---

# --description--

建置一個功能上類似於此的全端 JavaScript 應用程式：<a href="https://sudoku-solver.freecodecamp.rocks/" target="_blank" rel="noopener noreferrer nofollow">https://sudoku-solver.freecodecamp.rocks/</a>。進行此專案將需要你使用以下其中一種方法撰寫你的程式碼：

-   複製<a href="https://github.com/freecodecamp/boilerplate-project-sudoku-solver" target="_blank" rel="noopener noreferrer nofollow">這個 GitHub 倉庫</a>，並在區域完成你的專案。
-   使用你選擇的網站建置工具來完成專案。務必將我們 GitHub 倉庫中的所有檔案納入其中。

# --instructions--

- 所有謎題邏輯都可以放在 `/controllers/sudoku-solver.js`。
  - `validate` 函式應該接受給定的謎題字串並檢查它是否有 81 個有效的字元作為輸入。
  - `check` 函式（程式）應該針對棋盤的*當前*狀態進行驗證。
  - `solve` 函式（程式）應該控制代碼來解決任何給定的有效謎題字串，而不僅僅是測試輸入和解決方案。你應該寫出解決此問題的邏輯。
- 所有路由邏輯都可以放在 `/routes/api.js`。
- 請參閱 `/controllers` 中的 `puzzle-strings.js` 檔案，了解你的應用程式應該解決的一些範例謎題。
- 要在此頁面上執行挑戰測試，請在 `.env` 檔案中將 `NODE_ENV` 設定為不帶引號的 `test`
- 要在主控台中執行測試，請使用指令 `npm run test`。

將以下測試寫入 `tests/1_unit-tests.js`：

-   邏輯控制代碼處理一個有效的 81 字元謎題字串
-   邏輯處理包含無效字元（非 1-9 或 `.`）的謎題字串
-   邏輯處理長度不是 81 字元的謎題字串
-   邏輯控制代碼有效的列放置
-   邏輯控制代碼處理無效的列放置
-   邏輯控制代碼處理有效的行放置
-   邏輯控制代碼無效的行放置
-   邏輯控制代碼處理有效區域（3x3 網格）放置
-   邏輯控制代碼處理無效區域（3x3 格子）放置
-   有效的謎題字串會通過解題器
-   無效的謎題字串會導致求解器失敗
-   解算器會為不完整的拼圖傳回預期的解決方案。

在 `tests/2_functional-tests.js` 中撰寫以下測試

-   使用有效的謎題字串解謎：對 `/api/solve` 發送 POST 請求
-   使用遺失的拼圖字串解謎：對 `/api/solve` 發送 POST 請求
-   使用無效字元解謎：對 `/api/solve` 發送 POST 請求
-   解決長度不正確的謎題：對 `/api/solve` 發送 POST 請求
-   解決一個無法解決的謎題：對 `/api/solve` 發送 POST 請求
-   使用所有欄、欄位檢查拼圖放置：對 `/api/check` 發送 POST 請求
-   使用單一放置衝突檢查拼圖放置：對 `/api/check` 發送 POST 請求
-   檢查具有多重放置衝突的拼圖放置：對 `/api/check` 發送 POST 請求
-   使用所有放置衝突檢查拼圖放置：對 `/api/check` 發送 POST 請求
-   檢查缺少必要欄位的拼圖放置：對 `/api/check` 發出 POST 請求
-   檢查包含無效字元的拼圖放置：對 `/api/check` 發送 POST 請求
-   檢查長度不正確的拼圖放置：對 `/api/check` 發送 POST 請求
-   使用無效放置座標檢查拼圖放置：對 `/api/check` 發出 POST 請求
-   使用無效放置值檢查拼圖放置：對 `/api/check` 發送 POST 請求

# --hints--

你應該提供你自己的專案，而不是範例 URL。

```js
  const url = code;
  assert(!/.*\/sudoku-solver\.freecodecamp\.rocks/.test(code));
```

你可以使用 `POST` `/api/solve` 搭配包含 `puzzle` 的表單資料，該 `puzzle` 將是一個包含數字（1-9）和句點 `.` 組合的字串，用來表述空白格。傳回的物件將包含一個帶有已解決謎題的 `solution` 屬性。

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

如果提交到 `/api/solve` 的物件缺少 `puzzle`，傳回的值將是 `{ error: 'Required field missing' }`

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

如果提交到 `/api/solve` 的謎題包含非數字或句點的值，傳回的值將會是 `{ error: 'Invalid characters in puzzle' }`

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

如果提交到 `/api/solve` 的謎題字元數大於或小於 81 字元，傳回的值將會是 `{ error: 'Expected puzzle to be 81 characters long' }`

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

如果提交到 `/api/solve` 的謎題無效或無法解決，傳回的值將會是 `{ error: 'Puzzle cannot be solved' }`

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

你可以對 `/api/check` 使用 `POST`，傳送一個包含 `puzzle`、`coordinate` 和 `value` 的物件，其中 `coordinate` 是字母 A-I 表示列，接著是一個數字 1-9 表示行，而 `value` 是 1-9 的數字。

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

從 `POST` 到 `/api/check` 的返回值將是一個包含 `valid` 屬性的物件，若該數字可放置於提供的座標則為 `true`，若不可則為 `false`。若為 false，返回的物件還會包含一個 `conflict` 屬性，該屬性為一個陣列，包含字串 `"row"`、`"column"` 和／或 `"region"`，視是哪一項使放置無效而定。

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

如果提交到 `/api/check` 的 `value` 已經放置在該 `coordinate` 的 `puzzle` 中，且 `value` 沒有衝突，則傳回的值將是一個包含 `valid` 屬性且值為 `true` 的物件。

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

如果提交到 `/api/check` 的謎題包含非數字或句點的值，傳回的值將會是 `{ error: 'Invalid characters in puzzle' }`

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

如果提交到 `/api/check` 的拼圖字元數大於或小於 81 字元，傳回的值將會是 `{ error: 'Expected puzzle to be 81 characters long' }`

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

如果提交到 `/api/check` 的物件缺少 `puzzle`、`coordinate` 或 `value`，傳回的值將會是 `{ error: 'Required field(s) missing' }`

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

如果提交到 `api/check` 的座標未指向現有的格子，傳回的值將會是 `{ error: 'Invalid coordinate'}`

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

如果提交到 `/api/check` 的 `value` 不是介於 1 和 9 之間的數字，傳回的值將會是 `{ error: 'Invalid value' }`

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

所有 12 個單元測試均已完成且通過。

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

所有 14 個功能測試均已完成且通過。

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
