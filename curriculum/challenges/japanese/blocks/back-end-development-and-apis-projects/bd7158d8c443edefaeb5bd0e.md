---
id: bd7158d8c443edefaeb5bd0e
title: URLショートナー・マイクロサービス
challengeType: 4
forumTopicId: 301509
dashedName: url-shortener-microservice
---

# --description--

このリンク先の機能と同様のフルスタックJavaScriptアプリを作成してください：<a href="https://url-shortener-microservice.freecodecamp.rocks" target="_blank" rel="noopener noreferrer nofollow">https://url-shortener-microservice.freecodecamp.rocks</a>。このプロジェクトに取り組むには、以下のいずれかの方法でコードを書いてください。

- <a href="https://github.com/freeCodeCamp/boilerplate-project-urlshortener/" target="_blank" rel="noopener noreferrer nofollow">このGitHubリポジトリ</a>をクローンして、ローカルでプロジェクトを完成させる。
- お好みのサイトビルダーを使ってプロジェクトを完成させる。ただし、GitHubリポジトリのすべてのファイルを組み込むことを忘れないでください。

# --instructions--

**ヒント：** POSTリクエストを処理するためにボディパース用のミドルウェアを使うことを忘れないでください。また、提出されたURLを検証するために`dns.lookup(host, cb)`コアモジュールの`dns`関数を使うことができます。

# --hints--

例のURLではなく、自分のプロジェクトを提出してください。

```js
  assert(
    !/.*\/url-shortener-microservice\.freecodecamp\.rocks/.test(
      code
    )
  );
```

`/api/shorturl`にURLをPOSTすると、`original_url`と`short_url`プロパティを含むJSONレスポンスが返されます。例は以下の通りです：`{ original_url : 'https://freeCodeCamp.org', short_url : 1}`

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

`/api/shorturl/<short_url>`にアクセスすると、元のURLにリダイレクトされます。

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

有効な`http://www.example.com`形式に従わない無効なURLを渡すと、JSONレスポンスに`{ error: 'invalid url' }`が含まれます。

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
