---
id: bd7158d8c443edefaeb5bdff
title: リクエストヘッダーパーサーマイクロサービス
challengeType: 4
forumTopicId: 301507
dashedName: request-header-parser-microservice
---

# --description--

このプロジェクトでは、次のサイトと機能的に似たフルスタックJavaScriptアプリを作成します：<a href="https://request-header-parser-microservice.freecodecamp.rocks/" target="_blank" rel="noopener noreferrer nofollow">https://request-header-parser-microservice.freecodecamp.rocks/</a>。このプロジェクトに取り組む際は、以下のいずれかの方法でコードを書いてください。

- <a href="https://github.com/freeCodeCamp/boilerplate-project-headerparser/" target="_blank" rel="noopener noreferrer nofollow">このGitHubリポジトリ</a>をクローンして、ローカルでプロジェクトを完成させる。
- お好きなサイトビルダーを使ってプロジェクトを完成させる。ただし、GitHubリポジトリのすべてのファイルを必ず組み込んでください。

# --hints--

例のURLではなく、自分のプロジェクトを提供してください。

```js
  assert(
    !/.*\/request-header-parser-microservice\.freecodecamp\.rocks/.test(
      code
    )
  );
```

`/api/whoami`へのリクエストは、`ipaddress`キーにあなたのIPアドレスを含むJSONオブジェクトを返す必要があります。

```js
  const response = await fetch(code + '/api/whoami');
  if (!response.ok) {
    throw new Error(await response.text());
  }
  const data = await response.json();
  assert(data.ipaddress && data.ipaddress.length > 0);
```

`/api/whoami`へのリクエストは、`language`キーにあなたの優先言語を含むJSONオブジェクトを返す必要があります。

```js
  const response = await fetch(code + '/api/whoami');
  if (!response.ok) {
    throw new Error(await response.text());
  }
  const data = await response.json();
  assert(data.language && data.language.length > 0);
```

`/api/whoami`へのリクエストは、`software`キーにあなたのソフトウェア情報を含むJSONオブジェクトを返す必要があります。

```js
  const response = await fetch(code + '/api/whoami');
  if (!response.ok) {
    throw new Error(await response.text());
  }
  const data = await response.json();
  assert(data.software && data.software.length > 0);
```
