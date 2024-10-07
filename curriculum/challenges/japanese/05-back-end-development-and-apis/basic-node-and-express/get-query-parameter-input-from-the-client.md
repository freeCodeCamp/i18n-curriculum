---
id: 587d7fb2367417b2b2512bf6
title: クライアントからクエリパラメーター入力を取得する
challengeType: 2
forumTopicId: 301512
dashedName: get-query-parameter-input-from-the-client
---

# --description--

Another common way to get input from the client is by encoding the data after the route path, using a query string. The query string is delimited by a question mark (?), and includes field=value couples. Each couple is separated by an ampersand (&). Express can parse the data from the query string, and populate the object `req.query`. Some characters, like the percent (%), cannot be in URLs and have to be encoded in a different format before you can send them. If you use the API from JavaScript, you can use specific methods to encode/decode these characters.

<blockquote>route_path: '/library'<br>actual_request_URL: '/library?userId=546&#x26;bookId=6754' <br>req.query: {userId: '546', bookId: '6754'}</blockquote>

# --instructions--

API エンドポイントを構築し、`GET /name` でマウントしてください。 JSON ドキュメントで応答し、構造体 `{ name: 'firstname lastname'}` を受け取ってください。 ファーストネームおよびラストネームのパラメーターは、`?first=firstname&last=lastname` などのクエリ文字列にエンコードする必要があります。

** 注: ** 以下の演習では、同じ `/name` ルートパスで、POST リクエストからデータを受け取ります。 必要に応じて、メソッド `app.route(path).get(handler).post(handler)` を使用できます。 このシンタックスにより、同じパスルート上で異なる動詞ハンドラーをチェーンすることができます。 入力する文字数が少しだけ減り、コードがわかりやすくなります。

# --hints--

テスト 1: API エンドポイントは、`/name` エンドポイントが `?first=Mick&last=Jagger` を使用して呼び出された場合 `{ "name": "Mick Jagger" }` を返します。

```js
(getUserInput) =>
  $.get(getUserInput('url') + '/name?first=Mick&last=Jagger').then(
    (data) => {
      assert.equal(
        data.name,
        'Mick Jagger',
        'Test 1: "GET /name" route does not behave as expected'
      );
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

テスト 2: API エンドポイントは、`/name` エンドポイントが `?first=Keith&last=Richards` を使用して呼び出された場合 `{ "name": "Keith Richards" }` を返します。

```js
(getUserInput) =>
  $.get(getUserInput('url') + '/name?last=Richards&first=Keith').then(
    (data) => {
      assert.equal(
        data.name,
        'Keith Richards',
        'Test 2: "GET /name" route does not behave as expected'
      );
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

