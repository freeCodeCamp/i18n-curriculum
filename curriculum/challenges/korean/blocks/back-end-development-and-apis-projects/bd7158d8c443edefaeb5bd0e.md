---
id: bd7158d8c443edefaeb5bd0e
title: URL 단축 마이크로서비스
challengeType: 4
forumTopicId: 301509
dashedName: url-shortener-microservice
---

# --description--

다음과 기능적으로 유사한 풀스택 JavaScript 앱을 만드세요: <a href="https://url-shortener-microservice.freecodecamp.rocks" target="_blank" rel="noopener noreferrer nofollow">https://url-shortener-microservice.freecodecamp.rocks</a>. 이 프로젝트를 진행하려면 다음 방법 중 하나를 사용해 코드를 작성해야 합니다:

- <a href="https://github.com/freeCodeCamp/boilerplate-project-urlshortener/" target="_blank" rel="noopener noreferrer nofollow">이 GitHub 저장소</a>를 클론하여 로컬에서 프로젝트를 완성하세요.
- 원하는 사이트 빌더를 사용해 프로젝트를 완성하세요. GitHub 저장소의 모든 파일을 반드시 포함해야 합니다.

# --instructions--

**힌트:** POST 요청을 처리하려면 body 파싱 미들웨어를 사용하는 것을 잊지 마세요. 또한, `dns.lookup(host, cb)` 코어 모듈의 `dns` 함수를 사용해 제출된 URL을 검증할 수 있습니다.

# --hints--

예시 URL이 아닌 직접 만든 프로젝트를 제출해야 합니다.

```js
  assert(
    !/.*\/url-shortener-microservice\.freecodecamp\.rocks/.test(
      code
    )
  );
```

`/api/shorturl`에 URL을 POST하면 `original_url`와 `short_url` 프로퍼티가 포함된 JSON 응답을 받을 수 있습니다. 예시는 다음과 같습니다: `{ original_url : 'https://freeCodeCamp.org', short_url : 1}`

```js
  const url = code;
  const urlVariable = Date.now();
  const fullUrl = `${url}/?v=${urlVariable}`
  const res = await fetch(url + '/api/shorturl', {
    method: 'POST',
    headers: { 'Content-Type': 'application/x-www-form-urlencoded' },
    body: `url=${fullUrl}`
  });
  if (res.ok) {
    const { short_url, original_url } = await res.json();
    assert.isNotNull(short_url);
    assert.strictEqual(original_url, `${url}/?v=${urlVariable}`);
  } else {
    throw new Error(`${res.status} ${res.statusText}`);
  }
```

`/api/shorturl/<short_url>`에 접속하면 원래 URL로 리다이렉트됩니다.

```js
  const url = code;
  const urlVariable = Date.now();
  const fullUrl = `${url}/?v=${urlVariable}`
  let shortenedUrlVariable;
  const postResponse = await fetch(url + '/api/shorturl', {
    method: 'POST',
    headers: { 'Content-Type': 'application/x-www-form-urlencoded' },
    body: `url=${fullUrl}`
  });
  if (postResponse.ok) {
    const { short_url } = await postResponse.json();
    shortenedUrlVariable = short_url;
  } else {
    throw new Error(`${postResponse.status} ${postResponse.statusText}`);
  }
  const getResponse = await fetch(
    url + '/api/shorturl/' + shortenedUrlVariable
  );
  if (getResponse) {
    const { redirected, url } = getResponse;
    assert.isTrue(redirected);
    assert.strictEqual(url,fullUrl);
  } else {
    throw new Error(`${getResponse.status} ${getResponse.statusText}`);
  }
```

유효한 `http://www.example.com` 형식을 따르지 않는 잘못된 URL을 전달하면 JSON 응답에 `{ error: 'invalid url' }`가 포함됩니다.

```js
  const url = code;
  const res = await fetch(url + '/api/shorturl', {
    method: 'POST',
    headers: { 'Content-Type': 'application/x-www-form-urlencoded' },
    body: `url=ftp:/john-doe.invalidTLD`
  });
  if (res.ok) {
    const { error } = await res.json();
    assert.isNotNull(error);
    assert.strictEqual(error.toLowerCase(), 'invalid url');
  } else {
    throw new Error(`${res.status} ${res.statusText}`);
  }
```
