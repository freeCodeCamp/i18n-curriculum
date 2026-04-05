---
id: bd7158d8c443edefaeb5bdff
title: 요청 헤더 파서 마이크로서비스
challengeType: 4
forumTopicId: 301507
dashedName: request-header-parser-microservice
---

# --description--

다음과 기능적으로 유사한 풀스택 JavaScript 앱을 만드세요: <a href="https://request-header-parser-microservice.freecodecamp.rocks/" target="_blank" rel="noopener noreferrer nofollow">https://request-header-parser-microservice.freecodecamp.rocks/</a>. 이 프로젝트를 진행하려면 다음 방법 중 하나를 사용해 코드를 작성해야 합니다:

- <a href="https://github.com/freeCodeCamp/boilerplate-project-headerparser/" target="_blank" rel="noopener noreferrer nofollow">이 GitHub 저장소</a>를 클론하여 로컬에서 프로젝트를 완성하세요.
- 원하는 사이트 빌더를 사용해 프로젝트를 완성하세요. GitHub 저장소의 모든 파일을 반드시 포함해야 합니다.

# --hints--

예시 URL이 아닌 직접 만든 프로젝트를 제출하세요.

```js
  assert(
    !/.*\/request-header-parser-microservice\.freecodecamp\.rocks/.test(
      code
    )
  );
```

`/api/whoami`에 대한 요청은 `ipaddress` 키에 IP 주소가 포함된 JSON 객체를 반환해야 합니다.

```js
  const response = await fetch(code + '/api/whoami');
  if (!response.ok) {
    throw new Error(await response.text());
  }
  const data = await response.json();
  assert(data.ipaddress && data.ipaddress.length > 0);
```

`/api/whoami`에 대한 요청은 `language` 키에 선호하는 언어가 포함된 JSON 객체를 반환해야 합니다.

```js
  const response = await fetch(code + '/api/whoami');
  if (!response.ok) {
    throw new Error(await response.text());
  }
  const data = await response.json();
  assert(data.language && data.language.length > 0);
```

`/api/whoami`에 대한 요청은 `software` 키에 소프트웨어 정보가 포함된 JSON 객체를 반환해야 합니다.

```js
  const response = await fetch(code + '/api/whoami');
  if (!response.ok) {
    throw new Error(await response.text());
  }
  const data = await response.json();
  assert(data.software && data.software.length > 0);
```
