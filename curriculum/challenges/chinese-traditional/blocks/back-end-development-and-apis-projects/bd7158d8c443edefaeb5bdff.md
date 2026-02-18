---
id: bd7158d8c443edefaeb5bdff
title: 請求標頭解析微服務
challengeType: 4
forumTopicId: 301507
dashedName: request-header-parser-microservice
---

# --description--

建置一個功能上類似於此的全端 JavaScript 應用程式：<a href="https://request-header-parser-microservice.freecodecamp.rocks/" target="_blank" rel="noopener noreferrer nofollow">https://request-header-parser-microservice.freecodecamp.rocks/</a>。進行此專案將需要你使用以下其中一種方法撰寫你的程式碼：

-   複製<a href="https://github.com/freeCodeCamp/boilerplate-project-headerparser/" target="_blank" rel="noopener noreferrer nofollow">這個 GitHub 倉庫</a>並在區域完成你的專案。
-   使用你選擇的網站建置工具來完成專案。務必將我們 GitHub 倉庫中的所有檔案納入其中。

# --hints--

你應該提供你自己的專案，而不是範例 URL。

```js
  assert(
    !/.*\/request-header-parser-microservice\.freecodecamp\.rocks/.test(
      code
    )
  );
```

對 `/api/whoami` 的請求應該傳回一個 JSON 物件，該物件在 `ipaddress` 鍵中包含你的 IP 位址。

```js
  const response = await fetch(code + '/api/whoami');
  if (!response.ok) {
    throw new Error(await response.text());
  }
  const data = await response.json();
  assert(data.ipaddress && data.ipaddress.length > 0);
```

對 `/api/whoami` 的請求應該傳回一個 JSON 物件，其中 `language` 鍵包含你偏好的語言。

```js
  const response = await fetch(code + '/api/whoami');
  if (!response.ok) {
    throw new Error(await response.text());
  }
  const data = await response.json();
  assert(data.language && data.language.length > 0);
```

對 `/api/whoami` 的請求應該傳回一個 JSON 物件，其中你的軟體位於 `software` 鍵中。

```js
  const response = await fetch(code + '/api/whoami');
  if (!response.ok) {
    throw new Error(await response.text());
  }
  const data = await response.json();
  assert(data.software && data.software.length > 0);
```

