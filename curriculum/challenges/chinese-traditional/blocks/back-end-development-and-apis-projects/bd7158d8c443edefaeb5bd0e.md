---
id: bd7158d8c443edefaeb5bd0e
title: URL 縮短器微服務
challengeType: 4
forumTopicId: 301509
dashedName: url-shortener-microservice
---

# --description--

建置一個功能上類似於此的全端 JavaScript 應用程式：<a href="https://url-shortener-microservice.freecodecamp.rocks" target="_blank" rel="noopener noreferrer nofollow">https://url-shortener-microservice.freecodecamp.rocks</a>。進行此專案將需要你使用以下其中一種方法撰寫你的程式碼：

-   複製<a href="https://github.com/freeCodeCamp/boilerplate-project-urlshortener/" target="_blank" rel="noopener noreferrer nofollow">這個 GitHub 倉庫</a>並在區域端完成你的專案。
-   使用你選擇的網站建置工具來完成專案。務必將我們 GitHub 倉庫中的所有檔案納入其中。

# --instructions--

**提示：** 不要忘記使用 body parsing 中介層來控制代碼 POST 請求。此外，你可以使用來自 `dns` 核心模組的函式 `dns.lookup(host, cb)` 來驗證提交的 URL。

# --hints--

你應該提供你自己的專案，而不是範例 URL。

```js
  assert(
    !/.*\/url-shortener-microservice\.freecodecamp\.rocks/.test(
      code
    )
  );
```

你可以對 `/api/shorturl` 發送 POST 請求，並取得包含 `original_url` 和 `short_url` 屬性的 JSON 回應。以下是一個範例：`{ original_url : 'https://freeCodeCamp.org', short_url : 1}`

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

當你造訪 `/api/shorturl/<short_url>` 時，你將會被重新導向到原始 URL。

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

如果你傳遞不符合有效 `http://www.example.com` 格式的無效 URL，JSON 回應將包含 `{ error: 'invalid url' }`

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

