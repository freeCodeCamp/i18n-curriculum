---
id: 5e601bf95ac9d0ecd8b94afd
title: 스도쿠 풀이기
challengeType: 4
forumTopicId: 462357
dashedName: sudoku-solver
---

# --description--

다음과 기능적으로 유사한 풀스택 JavaScript 애플리케이션을 만드세요: <a href="https://sudoku-solver.freecodecamp.rocks/" target="_blank" rel="noopener noreferrer nofollow">https://sudoku-solver.freecodecamp.rocks/</a>. 이 프로젝트를 진행하려면 다음 방법 중 하나를 사용해 코드를 작성해야 합니다:

-   <a href="https://github.com/freecodecamp/boilerplate-project-sudoku-solver" target="_blank" rel="noopener noreferrer nofollow">이 GitHub 저장소</a>를 클론하여 로컬에서 프로젝트를 완성하세요.
-   원하는 사이트 빌더를 사용해 프로젝트를 완성하세요. GitHub 저장소의 모든 파일을 반드시 포함해야 합니다.

# --instructions--

- 모든 퍼즐 로직은 `/controllers/sudoku-solver.js`에 작성하세요.
  - `validate` 함수는 주어진 퍼즐 문자열이 81개의 유효한 문자로 구성되었는지 확인해야 합니다.
  - `check` 함수들은 현재 보드 상태를 기준으로 유효성을 검사해야 합니다.
  - `solve` 함수는 테스트 입력과 해답뿐 아니라 모든 유효한 퍼즐 문자열을 해결할 수 있어야 합니다. 해결 로직을 직접 작성해야 합니다.
- 모든 라우팅 로직은 `/routes/api.js`에 작성하세요.
- `puzzle-strings.js`의 `/controllers` 파일에서 애플리케이션이 해결해야 할 샘플 퍼즐을 확인하세요.
- 이 페이지에서 도전 과제 테스트를 실행하려면 `NODE_ENV` 파일에서 `test`을 따옴표 없이 `.env`로 설정하세요.
- 콘솔에서 테스트를 실행하려면 `npm run test` 명령어를 사용하세요.

다음 테스트를 `tests/1_unit-tests.js`에 작성하세요:

-   로직이 81자 유효 퍼즐 문자열을 처리하는지
-   로직이 1-9 또는 `.`가 아닌 잘못된 문자가 포함된 퍼즐 문자열을 처리하는지
-   로직이 81자가 아닌 퍼즐 문자열을 처리하는지
-   로직이 유효한 행 배치를 처리하는지
-   로직이 유효하지 않은 행 배치를 처리하는지
-   로직이 유효한 열 배치를 처리하는지
-   로직이 유효하지 않은 열 배치를 처리하는지
-   로직이 유효한 영역(3x3 격자) 배치를 처리하는지
-   로직이 유효하지 않은 영역(3x3 격자) 배치를 처리하는지
-   유효한 퍼즐 문자열이 해결기에 통과하는지
-   유효하지 않은 퍼즐 문자열이 해결기에 실패하는지
-   해결기가 미완성 퍼즐에 대해 예상된 해답을 반환하는지

다음 테스트를 `tests/2_functional-tests.js`에 작성하세요:

-   유효한 퍼즐 문자열로 퍼즐을 해결: `/api/solve`에 POST 요청
-   퍼즐 문자열 누락 상태로 퍼즐을 해결: `/api/solve`에 POST 요청
-   잘못된 문자가 포함된 퍼즐로 퍼즐을 해결: `/api/solve`에 POST 요청
-   길이가 올바르지 않은 퍼즐로 퍼즐을 해결: `/api/solve`에 POST 요청
-   해결할 수 없는 퍼즐을 해결: `/api/solve`에 POST 요청
-   모든 필드를 포함한 퍼즐 배치 확인: `/api/check`에 POST 요청
-   단일 배치 충돌이 있는 퍼즐 배치 확인: `/api/check`에 POST 요청
-   다중 배치 충돌이 있는 퍼즐 배치 확인: `/api/check`에 POST 요청
-   모든 배치 충돌이 있는 퍼즐 배치 확인: `/api/check`에 POST 요청
-   필수 필드가 누락된 퍼즐 배치 확인: `/api/check`에 POST 요청
-   잘못된 문자가 포함된 퍼즐 배치 확인: `/api/check`에 POST 요청
-   길이가 올바르지 않은 퍼즐 배치 확인: `/api/check`에 POST 요청
-   올바르지 않은 배치 좌표가 포함된 퍼즐 배치 확인: `/api/check`에 POST 요청
-   올바르지 않은 배치 값이 포함된 퍼즐 배치 확인: `/api/check`에 POST 요청

# --hints--

자신만의 프로젝트를 제공해야 하며, 예시 URL을 사용하지 마세요.

```js
  const url = code;
  assert(!/.*\/sudoku-solver\.freecodecamp\.rocks/.test(code));
```

`POST` `/api/solve`를 사용해 `puzzle`을 포함하는 폼 데이터를 전송할 수 있습니다. 이 문자열은 숫자(1-9)와 빈 칸을 나타내는 점 `.`의 조합입니다. 반환된 객체는 해결된 퍼즐을 포함하는 `solution` 속성을 가집니다.

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

`/api/solve`에 제출된 객체에 `puzzle`가 없으면 반환값은 `{ error: 'Required field missing' }`입니다.

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

`/api/solve`에 제출된 퍼즐에 숫자나 점이 아닌 값이 포함되면 반환값은 `{ error: 'Invalid characters in puzzle' }`입니다.

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

`/api/solve`에 제출된 퍼즐이 81자보다 크거나 작으면 반환값은 `{ error: 'Expected puzzle to be 81 characters long' }`입니다.

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

`/api/solve`에 제출된 퍼즐이 유효하지 않거나 해결할 수 없으면 반환값은 `{ error: 'Puzzle cannot be solved' }`입니다.

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

`POST`를 사용해 `/api/check`에 `puzzle`, `coordinate`, `value`를 포함하는 객체를 전송할 수 있습니다. 여기서 `coordinate`은 행을 나타내는 A-I 문자이고, 뒤따르는 숫자 1-9는 열을 나타내며, `value`은 1-9 사이의 숫자입니다.

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

`POST`에서 `/api/check`로부터 반환된 값은 `valid` 속성을 포함하는 객체이며, 이 속성은 해당 좌표에 숫자를 배치할 수 있으면 `true`, 그렇지 않으면 `false`입니다. false일 경우 반환된 객체는 배치를 유효하지 않게 하는 이유에 따라 `conflict`, `"row"`, 및/또는 `"column"` 문자열을 포함하는 배열인 `"region"` 속성도 포함합니다.

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

`value`가 `/api/check`에 제출되었을 때 이미 `puzzle`의 `coordinate`에 배치되어 있으면, 반환값은 `valid`가 충돌하지 않는 한 `true`인 `value` 속성을 포함하는 객체입니다.

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

`/api/check`에 제출된 퍼즐에 숫자나 점이 아닌 값이 포함되면 반환값은 `{ error: 'Invalid characters in puzzle' }`입니다.

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

`/api/check`에 제출된 퍼즐이 81자보다 크거나 작으면 반환값은 `{ error: 'Expected puzzle to be 81 characters long' }`입니다.

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

`/api/check`에 제출된 객체에 `puzzle`, `coordinate` 또는 `value`가 없으면 반환값은 `{ error: 'Required field(s) missing' }`입니다.

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

`api/check`에 제출된 좌표가 존재하지 않는 격자 셀을 가리키면 반환값은 `{ error: 'Invalid coordinate'}`입니다.

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

`value`가 `/api/check`에 제출되었을 때 1에서 9 사이의 숫자가 아니면 반환값은 `{ error: 'Invalid value' }`입니다.

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

12개의 단위 테스트가 모두 완료되어 통과했습니다.

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

14개의 기능 테스트가 모두 완료되어 통과했습니다.

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
