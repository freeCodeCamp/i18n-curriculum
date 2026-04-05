---
id: bd7158d8c443edefaeb5bdef
title: 타임스탬프 마이크로서비스
challengeType: 4
forumTopicId: 301508
dashedName: timestamp-microservice
---

# --description--

다음과 기능적으로 유사한 풀스택 JavaScript 앱을 만드세요: <a href="https://timestamp-microservice.freecodecamp.rocks" target="_blank" rel="noopener noreferrer nofollow">https://timestamp-microservice.freecodecamp.rocks</a>. 이 프로젝트를 진행하려면 다음 방법 중 하나를 사용해 코드를 작성해야 합니다:

- <a href="https://github.com/freeCodeCamp/boilerplate-project-timestamp/"  target="_blank" rel="noopener noreferrer nofollow">이 GitHub 저장소</a>를 클론하여 로컬에서 프로젝트를 완성하세요.
- 원하는 사이트 빌더를 사용해 프로젝트를 완성하세요. GitHub 저장소의 모든 파일을 반드시 포함해야 합니다.

**참고:** 이 프로젝트의 목적은 시간대 변환이 아니므로, 모든 유효한 날짜는 `new Date()`를 GMT 날짜로 파싱한다고 가정하세요.

# --hints--

예시 URL이 아닌 직접 만든 프로젝트를 제출해야 합니다.

```js
  assert(
    !/.*\/timestamp-microservice\.freecodecamp\.rocks/.test(code)
  );
```

유효한 날짜와 함께 `/api/:date?`에 요청하면, 입력 날짜의 Unix 타임스탬프(밀리초 단위, Number 타입)를 `unix` 키로 가진 JSON 객체를 반환해야 합니다.

```js
  const response = await fetch(code + '/api/2016-12-25');
  if (!response.ok) {
    throw new Error(await response.text());
  }
  const data = await response.json();
  assert.equal(
    data.unix,
    1482624000000,
    'Should be a valid unix timestamp'
  );
```

유효한 날짜와 함께 `/api/:date?`에 요청하면, 입력 날짜를 `utc` 형식의 문자열로 변환한 값을 `Thu, 01 Jan 1970 00:00:00 GMT` 키로 가진 JSON 객체를 반환해야 합니다.

```js
  const response = await fetch(code + '/api/2016-12-25');
  if (!response.ok) {
    throw new Error(await response.text());
  }
  const data = await response.json();
  assert.equal(
    data.utc,
    'Sun, 25 Dec 2016 00:00:00 GMT',
    'Should be a valid UTC date string'
  );
```

`/api/1451001600000`에 요청하면 `{ unix: 1451001600000, utc: "Fri, 25 Dec 2015 00:00:00 GMT" }`를 반환해야 합니다.

```js
  const response = await fetch(code + '/api/1451001600000');
  if (!response.ok) {
    throw new Error(await response.text());
  }
  const data = await response.json();
  assert(
    data.unix === 1451001600000 &&
      data.utc === 'Fri, 25 Dec 2015 00:00:00 GMT'
  );
```

프로젝트는 `new Date(date_string)`가 성공적으로 파싱할 수 있는 날짜를 처리할 수 있어야 합니다.

```js
  const response = await fetch(code + '/api/05 October 2011, GMT');
  if (!response.ok) {
    throw new Error(await response.text());
  }
  const data = await response.json();
  assert(
    data.unix === 1317772800000 &&
      data.utc === 'Wed, 05 Oct 2011 00:00:00 GMT'
  );
```

입력한 날짜 문자열이 유효하지 않으면, API는 `{ error : "Invalid Date" }` 구조의 객체를 반환합니다.

```js
  const response = await fetch(code + '/api/this-is-not-a-date');
  if (response.ok) {
    const data = await response.json();
    assert.equal(data.error.toLowerCase(), 'invalid date');
  } else {
    const errorData = await response.json();
    assert(errorData.error.toLowerCase() === 'invalid date');
  }
```

빈 날짜 매개변수는 `unix` 키를 가진 현재 시간을 반환하는 JSON 객체를 반환해야 합니다.

```js
  const response = await fetch(code + '/api');
  if (!response.ok) {
    throw new Error(await response.text());
  }
  const data = await response.json();
  var now = Date.now();
  assert.approximately(data.unix, now, 20000);
```

빈 날짜 매개변수는 `utc` 키를 가진 현재 시간을 반환하는 JSON 객체를 반환해야 합니다.

```js
  const response = await fetch(code + '/api');
  if (!response.ok) {
    throw new Error(await response.text());
  }
  const data = await response.json();
  var now = Date.now();
  var serverTime = new Date(data.utc).getTime();
  assert.approximately(serverTime, now, 20000);
```
