---
id: 5e601bf95ac9d0ecd8b94afd
title: Розв’язувач судоку
challengeType: 4
forumTopicId: 462357
dashedName: sudoku-solver
---

# --description--

Створіть повноцінний full-stack застосунок на JavaScript, який функціонально схожий на цей: <a href="https://sudoku-solver.freecodecamp.rocks/" target="_blank" rel="noopener noreferrer nofollow">https://sudoku-solver.freecodecamp.rocks/</a>. Робота над цим проєктом передбачає написання коду одним із таких способів:

-   Клонуйте <a href="https://github.com/freecodecamp/boilerplate-project-sudoku-solver" target="_blank" rel="noopener noreferrer nofollow">цей репозиторій GitHub</a> і завершіть проєкт локально.
-   Використайте будь-який конструктор сайтів на свій вибір для завершення проєкту. Обов’язково включіть усі файли з нашого репозиторію GitHub.

# --instructions--

- Вся логіка головоломки може бути розміщена у `/controllers/sudoku-solver.js`
  - Функція `validate` має приймати рядок головоломки і перевіряти, чи містить він 81 дійсний символ для вхідних даних.
  - Функції `check` мають перевіряти відповідність *поточному* стану сітки.
  - Функція `solve` має розв’язувати будь-який дійсний рядок головоломки, а не лише тестові вхідні дані та розв’язки. Ви маєте написати логіку розв’язання.
- Вся логіка маршрутизації може бути розміщена у `/routes/api.js`
- Перегляньте файл `puzzle-strings.js` у `/controllers` для прикладів головоломок, які ваш застосунок має розв’язувати
- Щоб запустити тести завдання на цій сторінці, встановіть `NODE_ENV` у `test` без лапок у файлі `.env`
- Щоб запустити тести у консолі, використайте команду `npm run test`.

Напишіть такі тести у `tests/1_unit-tests.js`:

-   Логіка обробляє дійсний рядок головоломки з 81 символом
-   Логіка обробляє рядок головоломки з недійсними символами (не 1-9 або `.`)
-   Логіка обробляє рядок головоломки, довжина якого не 81 символ
-   Логіка обробляє дійсне розміщення в рядку
-   Логіка обробляє недійсне розміщення в рядку
-   Логіка обробляє дійсне розміщення в стовпці
-   Логіка обробляє недійсне розміщення в стовпці
-   Логіка обробляє дійсне розміщення в регіоні (сітка 3x3)
-   Логіка обробляє недійсне розміщення в регіоні (сітка 3x3)
-   Дійсні рядки головоломки проходять розв’язувач
-   Недійсні рядки головоломки не проходять розв’язувач
-   Розв’язувач повертає очікуване розв’язання для неповної головоломки

Напишіть такі тести у `tests/2_functional-tests.js`

-   Розв’язати головоломку з дійсним рядком головоломки: POST-запит до `/api/solve`
-   Розв’язати головоломку без рядка головоломки: POST-запит до `/api/solve`
-   Розв’язати головоломку з недійсними символами: POST-запит до `/api/solve`
-   Розв’язати головоломку з некоректною довжиною: POST-запит до `/api/solve`
-   Розв’язати головоломку, яку неможливо розв’язати: POST-запит до `/api/solve`
-   Перевірити розміщення в головоломці з усіма полями: POST-запит до `/api/check`
-   Перевірити розміщення в головоломці з одним конфліктом розміщення: POST-запит до `/api/check`
-   Перевірити розміщення в головоломці з кількома конфліктами розміщення: POST-запит до `/api/check`
-   Перевірити розміщення в головоломці з усіма конфліктами розміщення: POST-запит до `/api/check`
-   Перевірити розміщення в головоломці з відсутніми обов’язковими полями: POST-запит до `/api/check`
-   Перевірити розміщення в головоломці з недійсними символами: POST-запит до `/api/check`
-   Перевірити розміщення в головоломці з некоректною довжиною: POST-запит до `/api/check`
-   Перевірити розміщення в головоломці з недійсною координатою розміщення: POST-запит до `/api/check`
-   Перевірити розміщення в головоломці з недійсним значенням розміщення: POST-запит до `/api/check`

# --hints--

Ви маєте надати власний проєкт, а не приклад за URL.

```js
  const url = code;
  assert(!/.*\/sudoku-solver\.freecodecamp\.rocks/.test(code));
```

Ви можете `POST` `/api/solve` з даними форми, що містять `puzzle`, який буде рядком, що містить комбінацію чисел (1-9) і крапок `.` для позначення порожніх місць. Повернений об’єкт міститиме властивість `solution` з розв’язаною головоломкою.

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

Якщо об’єкт, надісланий до `/api/solve`, не містить `puzzle`, повернене значення буде `{ error: 'Required field missing' }`

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

Якщо головоломка, надіслана до `/api/solve`, містить значення, які не є числами або крапками, повернене значення буде `{ error: 'Invalid characters in puzzle' }`

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

Якщо головоломка, надіслана до `/api/solve`, має довжину більшу або меншу за 81 символ, повернене значення буде `{ error: 'Expected puzzle to be 81 characters long' }`

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

Якщо головоломка, надіслана до `/api/solve`, є недійсною або не може бути розв’язана, повернене значення буде `{ error: 'Puzzle cannot be solved' }`

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

Ви можете `POST` до `/api/check` об’єкт, що містить `puzzle`, `coordinate` і `value`, де `coordinate` — це літера A-I, що вказує рядок, за якою йде число 1-9, що вказує стовпець, а `value` — число від 1 до 9.

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

Повернене значення з `POST` до `/api/check` буде об’єктом, що містить властивість `valid`, яка є `true`, якщо число можна розмістити за вказаною координатою, і `false`, якщо не можна. Якщо хиба, повернений об’єкт також міститиме властивість `conflict`, яка є масивом рядків `"row"`, `"column"` і/або `"region"` залежно від того, що робить розміщення недійсним.

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

Якщо `value`, надісланий до `/api/check`, вже розміщений у `puzzle` на тому `coordinate`, повернене значення буде об’єктом, що містить властивість `valid` з `true`, якщо `value` не конфліктує.

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

Якщо головоломка, надіслана до `/api/check`, містить значення, які не є числами або крапками, повернене значення буде `{ error: 'Invalid characters in puzzle' }`

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

Якщо головоломка, надіслана до `/api/check`, має довжину більшу або меншу за 81 символ, повернене значення буде `{ error: 'Expected puzzle to be 81 characters long' }`

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

Якщо об’єкт, надісланий до `/api/check`, не містить `puzzle`, `coordinate` або `value`, повернене значення буде `{ error: 'Required field(s) missing' }`

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

Якщо координата, надіслана до `api/check`, не вказує на існуючу клітинку сітки, повернене значення буде `{ error: 'Invalid coordinate'}`

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

Якщо `value`, надісланий до `/api/check`, не є числом від 1 до 9, повернене значення буде `{ error: 'Invalid value' }`

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

Всі 12 модульних тестів завершені і проходять.

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

Всі 14 функціональних тестів завершені і проходять.

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
