---
id: 5e601c0d5ac9d0ecd8b94afe
title: 미국식 영어와 영국식 영어 번역기
challengeType: 4
forumTopicId: 462358
dashedName: american-british-translator
---

# --description--

다음과 기능적으로 유사한 풀스택 JavaScript 애플리케이션을 만드세요: <a href="https://american-british-translator.freecodecamp.rocks/" target="_blank" rel="noopener noreferrer nofollow">https://american-british-translator.freecodecamp.rocks/</a>. 이 프로젝트를 진행하려면 다음 방법 중 하나를 사용해 코드를 작성해야 합니다:

- <a href="https://github.com/freeCodeCamp/boilerplate-project-american-british-english-translator/" target="_blank" rel="noopener noreferrer nofollow">이 GitHub 저장소</a>를 클론하여 로컬에서 프로젝트를 완성하세요.
- 원하는 사이트 빌더를 사용해 프로젝트를 완성하세요. GitHub 저장소의 모든 파일을 반드시 포함해야 합니다.

# --instructions--

- 모든 로직은 `/components/translator.js`에 작성하세요
- `/api/translate`에서 `/routes/api.js` 라우트를 완성하세요
- `tests/1_unit-tests.js`와 `tests/2_functional-tests.js`에 단위/기능 테스트를 모두 작성하세요
- 애플리케이션이 번역해야 하는 다양한 철자와 용어는 `/components`의 JavaScript 파일을 참조하세요
- 테스트를 자동으로 실행하려면 `NODE_ENV` 파일에서 `test`를 따옴표 없이 `.env`로 설정하세요
- 콘솔에서 테스트를 실행하려면 `npm run test` 명령어를 사용하세요

`tests/1_unit-tests.js`에 다음 테스트를 작성하세요:

- `Mangoes are my favorite fruit.`을 영국식 영어로 번역하기
- `I ate yogurt for breakfast.`을 영국식 영어로 번역하기
- `We had a party at my friend's condo.`을 영국식 영어로 번역하기
- `Can you toss this in the trashcan for me?`을 영국식 영어로 번역하기
- `The parking lot was full.`을 영국식 영어로 번역하기
- `Like a high tech Rube Goldberg machine.`을 영국식 영어로 번역하기
- `To play hooky means to skip class or work.`을 영국식 영어로 번역하기
- `No Mr. Bond, I expect you to die.`을 영국식 영어로 번역하기
- `Dr. Grosh will see you now.`을 영국식 영어로 번역하기
- `Lunch is at 12:15 today.`을 영국식 영어로 번역하기
- `We watched the footie match for a while.`을 미국식 영어로 번역하기
- `Paracetamol takes up to an hour to work.`을 미국식 영어로 번역하기
- `First, caramelise the onions.`을 미국식 영어로 번역하기
- `I spent the bank holiday at the funfair.`을 미국식 영어로 번역하기
- `I had a bicky then went to the chippy.`을 미국식 영어로 번역하기
- `I've just got bits and bobs in my bum bag.`을 미국식 영어로 번역하기
- `The car boot sale at Boxted Airfield was called off.`을 미국식 영어로 번역하기
- `Have you met Mrs Kalyani?`을 미국식 영어로 번역하기
- `Prof Joyner of King's College, London.`을 미국식 영어로 번역하기
- `Tea time is usually around 4 or 4.30.`을 미국식 영어로 번역하기
- `Mangoes are my favorite fruit.`에서 번역 부분 강조하기
- `I ate yogurt for breakfast.`에서 번역 부분 강조하기
- `We watched the footie match for a while.`에서 번역 부분 강조하기
- `Paracetamol takes up to an hour to work.`에서 번역 부분 강조하기

`tests/2_functional-tests.js`에 다음 테스트를 작성하세요:

- 텍스트와 로케일 필드가 있는 번역: `/api/translate`에 POST 요청
- 텍스트와 잘못된 로케일 필드가 있는 번역: `/api/translate`에 POST 요청
- 텍스트 필드가 누락된 번역: `/api/translate`에 POST 요청
- 로케일 필드가 누락된 번역: `/api/translate`에 POST 요청
- 빈 텍스트가 있는 번역: `/api/translate`에 POST 요청
- 번역이 필요 없는 텍스트가 있는 번역: `/api/translate`에 POST 요청

# --hints--

자신만의 프로젝트를 제공해야 하며, 예시 URL을 사용하지 마세요.

```js
  assert(
    !/.*\/american-british-translator\.freecodecamp\.rocks/.test(
      code
    )
  );
```

`POST`를 `/api/translate`에 `text`에 번역할 텍스트를 포함하고 `locale`에 `american-to-british` 또는 `british-to-american`을 포함하는 본문과 함께 요청할 수 있습니다. 반환된 객체는 제출한 `text`과 번역된 텍스트가 포함된 `translation`를 포함해야 합니다.

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

`/api/translate` 라우트는 미국식과 영국식 영어에서 시간 표기 방식을 처리해야 합니다. 예를 들어, 10시 30분은 영국식 영어에서 "10.30"으로, 미국식 영어에서 "10:30"으로 표기합니다. `span` 요소는 전체 시간 문자열을 감싸야 하며, 즉 `<span class="highlight">10:30</span>`입니다.

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

`/api/translate` 라우트는 미국식과 영국식 영어에서 호칭/경칭의 축약 방식도 처리해야 합니다. 예를 들어, Doctor Wright는 영국식 영어에서 "Dr Wright"로, 미국식 영어에서 "Dr. Wright"로 축약합니다. 애플리케이션이 처리해야 하는 다양한 호칭은 `/components/american-to-british-titles.js`를 참조하세요.

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

번역된 철자나 용어는 `<span class="highlight">...</span>` 태그로 감싸 녹색으로 표시되게 하세요.

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

필수 필드가 하나 이상 누락되면 `{ error: 'Required field(s) missing' }`를 반환하세요.

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

`text`가 비어 있으면 `{ error: 'No text to translate' }`를 반환하세요.

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

`locale`가 지정된 두 로케일 중 하나와 일치하지 않으면 `{ error: 'Invalid value for locale field' }`를 반환하세요.

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

`text`에 번역이 필요 없으면 `"Everything looks good to me!"`를 `translation` 값으로 반환하세요.

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

24개의 단위 테스트가 모두 완료되어 통과했습니다.

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

6개의 기능 테스트가 모두 완료되어 통과했습니다.

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
