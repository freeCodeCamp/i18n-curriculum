---
id: bd7158d8c443edefaeb5bdef
title: タイムスタンプ マイクロサービス
challengeType: 4
forumTopicId: 301508
dashedName: timestamp-microservice
---

# --description--

<a href="https://timestamp-microservice.freecodecamp.rocks" target="_blank" rel="noopener noreferrer nofollow">https://timestamp-microservice.freecodecamp.rocks</a> と同じような機能を持つ、フルスタック JavaScript アプリを構築してください。 プロジェクトに取り組むにあたり、以下の方法のうち 1 つを用いてコードを記述します。

-   <a href="https://github.com/freeCodeCamp/boilerplate-project-timestamp/"  target="_blank" rel="noopener noreferrer nofollow">GitHub リポジトリ</a>をクローンし、ローカル環境でチャレンジを完了させる。
-   <a href="https://gitpod.io/?autostart=true#https://github.com/freeCodeCamp/boilerplate-project-timestamp/"  target="_blank" rel="noopener noreferrer nofollow">Gitpod スタータープロジェクト</a>を使用して、プロジェクトを完了させる。 ※質問などの際に <a href="https://forum.freecodecamp.org/t/how-to-use-gitpod-in-the-curriculum/668669#how-can-i-share-my-workspace-to-get-help-8" target="_blank" rel="noopener noreferrer nofollow">Gitpod ワークスペースを共有する方法はこちらを参照</a>してください。
-   使い慣れたサイトビルダーを使用してプロジェクトを完了させる。 必ず GitHub リポジトリのすべてのファイルを取り込む。

**注:** タイムゾーンの変換は、このプロジェクトの目的ではありません。そのため、有効な日付が送信された場合、GMT の日時として `new Date()` に解釈されると想定してください。

# --hints--

サンプルの URL ではなく、自分で作成したプロジェクトを提供する必要があります。

```js
  assert(
    !/.*\/timestamp-microservice\.freecodecamp\.rocks/.test(code)
  );
```

有効な日付を持つ `/api/:date?` へのリクエストに対して、JSON オブジェクトを返し、その `unix` キーの値は入力日付を表す Unix タイムスタンプ (ミリ秒単位で、データ型は Number) の値である必要があります。

```js
  $.get(code + '/api/2016-12-25').then(
    (data) => {
      assert.equal(
        data.unix,
        1482624000000,
        'Should be a valid unix timestamp'
      );
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

有効な日付を持つ `/api/:date?` へのリクエストに対して、`Thu, 01 Jan 1970 00:00:00 GMT` 形式の入力日文字列である `utc` キーを持つ JSON オブジェクトを返す必要があります。

```js
  $.get(code + '/api/2016-12-25').then(
    (data) => {
      assert.equal(
        data.utc,
        'Sun, 25 Dec 2016 00:00:00 GMT',
        'Should be a valid UTC date string'
      );
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

`/api/1451001600000` へのリクエストに対して、`{ unix: 1451001600000, utc: "Fri, 25 Dec 2015 00:00:00 GMT" }` を返す必要があります。

```js
  $.get(code + '/api/1451001600000').then(
    (data) => {
      assert(
        data.unix === 1451001600000 &&
          data.utc === 'Fri, 25 Dec 2015 00:00:00 GMT'
      );
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

プロジェクトでは、`new Date(date_string)` で正常に解析できる日付を処理することができます。

```js
  $.get(code + '/api/05 October 2011, GMT').then(
    (data) => {
      assert(
        data.unix === 1317772800000 &&
          data.utc === 'Wed, 05 Oct 2011 00:00:00 GMT'
      );
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

入力された日付文字列が無効な場合、API は `{ error : "Invalid Date" }` という構造のオブジェクトを返します。

```js
  $.get(code + '/api/this-is-not-a-date').then(
    (data) => {
      assert.equal(data.error.toLowerCase(), 'invalid date');
    },
    (xhr) => {
      assert(xhr.responseJSON.error.toLowerCase() === 'invalid date');
    }
  );
```

空の日付パラメータに対して、`unix` キーを持つ JSON オブジェクトに現在時刻を返す必要があります。

```js
  $.get(code + '/api').then(
    (data) => {
      var now = Date.now();
      assert.approximately(data.unix, now, 20000);
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

空の日付パラメータに対して、`utc` キーを持つ JSON オブジェクトに現在時刻を返す必要があります。

```js
  $.get(code + '/api').then(
    (data) => {
      var now = Date.now();
      var serverTime = new Date(data.utc).getTime();
      assert.approximately(serverTime, now, 20000);
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

