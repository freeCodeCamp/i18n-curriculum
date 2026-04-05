---
id: bd7158d8c443edefaeb5bd0f
title: 파일 메타데이터 마이크로서비스
challengeType: 4
forumTopicId: 301506
dashedName: file-metadata-microservice
---

# --description--

다음과 기능적으로 유사한 풀스택 JavaScript 앱을 만드세요: <a href="https://file-metadata-microservice.freecodecamp.rocks" target="_blank" rel="noopener noreferrer nofollow">https://file-metadata-microservice.freecodecamp.rocks</a>. 이 프로젝트를 진행하려면 다음 방법 중 하나를 사용해 코드를 작성해야 합니다:

- <a href="https://github.com/freeCodeCamp/boilerplate-project-filemetadata/" target="_blank" rel="noopener noreferrer nofollow">이 GitHub 저장소</a>를 클론하여 로컬에서 프로젝트를 완성하세요.
- 원하는 사이트 빌더를 사용해 프로젝트를 완성하세요. GitHub 저장소의 모든 파일을 반드시 포함해야 합니다.

# --instructions--

**힌트:** 파일 업로드를 처리하려면 `multer` npm 패키지를 사용할 수 있습니다.

# --hints--

예시 URL이 아닌 직접 만든 프로젝트를 제출하세요.

```js
  assert(
    !/.*\/file-metadata-microservice\.freecodecamp\.rocks/.test(
      code
    )
  );
```

파일 업로드가 포함된 폼을 제출할 수 있습니다.

```js
  const site = await fetch(code);
  const data = await site.text();
  const doc = new DOMParser().parseFromString(data, 'text/html');
  assert(doc.querySelector('input[type="file"]'));
```

폼의 파일 입력 필드에는 `name` 속성이 `upfile`로 설정되어 있습니다.

```js
  const site = await fetch(code);
  const data = await site.text();
  const doc = new DOMParser().parseFromString(data, 'text/html');
  assert(doc.querySelector('input[name="upfile"]'));
```

파일을 제출하면 JSON 응답 내에서 파일 `name`, `type`, `size`가 바이트 단위로 반환됩니다.

```js
  const formData = new FormData();
  const fileData = await fetch(
    'https://cdn.freecodecamp.org/weather-icons/01d.png'
  );
  const file = await fileData.blob();
  formData.append('upfile', file, 'icon');
  const data = await fetch(code + '/api/fileanalyse', {
    method: 'POST',
    body: formData
  });
  const parsed = await data.json();
  assert.property(parsed, 'size');
  assert.equal(parsed.name, 'icon');
  assert.equal(parsed.type, 'image/png');
```
