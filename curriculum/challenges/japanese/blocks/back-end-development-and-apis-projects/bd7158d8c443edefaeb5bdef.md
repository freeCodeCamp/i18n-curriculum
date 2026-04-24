---
id: bd7158d8c443edefaeb5bdef
title: タイムスタンプマイクロサービス
challengeType: 4
forumTopicId: 301508
dashedName: timestamp-microservice
---

# --description--

このリンク先の機能と同様のフルスタックJavaScriptアプリを作成してください：<a href="https://timestamp-microservice.freecodecamp.rocks" target="_blank" rel="noopener noreferrer nofollow">https://timestamp-microservice.freecodecamp.rocks</a>。このプロジェクトに取り組むには、以下のいずれかの方法でコードを書いてください。

- <a href="https://github.com/freeCodeCamp/boilerplate-project-timestamp/"  target="_blank" rel="noopener noreferrer nofollow">このGitHubリポジトリ</a>をクローンして、ローカルでプロジェクトを完成させる。
- お好みのサイトビルダーを使ってプロジェクトを完成させる。必ずGitHubリポジトリのすべてのファイルを組み込んでください。

**注意：** タイムゾーンの変換はこのプロジェクトの目的ではないため、送信された有効な日付はすべて`new Date()`をGMT日付として解析するものとします。

# --hints--

プロジェクトは例のURLではなく、自分のものを提出してください。

```js
  assert(
    !/.*\/timestamp-microservice\.freecodecamp\.rocks/.test(code)
  );
```

有効な日付を含む`/api/:date?`へのリクエストは、入力日付のUnixタイムスタンプ（ミリ秒単位、Number型）を持つ`unix`キーを含むJSONオブジェクトを返す必要があります。

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

有効な日付を含む`/api/:date?`へのリクエストは、入力日付を`utc`形式の文字列として持つ`Thu, 01 Jan 1970 00:00:00 GMT`キーを含むJSONオブジェクトを返す必要があります。

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

`/api/1451001600000`へのリクエストは`{ unix: 1451001600000, utc: "Fri, 25 Dec 2015 00:00:00 GMT" }`を返す必要があります。

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

プロジェクトは`new Date(date_string)`で正常に解析できる日付を処理できます。

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

入力された日付文字列が無効な場合、APIは`{ error : "Invalid Date" }`構造のオブジェクトを返します。

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

空のdateパラメータは、`unix`キーを持つJSONオブジェクトで現在時刻を返す必要があります。

```js
  const response = await fetch(code + '/api');
  if (!response.ok) {
    throw new Error(await response.text());
  }
  const data = await response.json();
  var now = Date.now();
  assert.approximately(data.unix, now, 20000);
```

空のdateパラメータは、`utc`キーを持つJSONオブジェクトで現在時刻を返す必要があります。

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
