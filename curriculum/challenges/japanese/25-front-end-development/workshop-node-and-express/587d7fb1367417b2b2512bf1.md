---
id: 587d7fb1367417b2b2512bf1
title: 特定のルート上で JSON を提供する
challengeType: 2
forumTopicId: 301517
dashedName: serve-json-on-a-specific-route
---

# --description--

While an HTML server serves HTML, an API serves data. A <dfn>REST</dfn> (REpresentational State Transfer) API allows data exchange in a simple way, without the need for clients to know any detail about the server. The client only needs to know where the resource is (the URL), and the action it wants to perform on it (the verb). The GET verb is used when you are fetching some information, without modifying anything. These days, the preferred data format for moving information around the web is JSON. Simply put, JSON is a convenient way to represent a JavaScript object as a string, so it can be easily transmitted.

シンプルな API として、パス `/json` で JSON で応答するルートを作成してみましょう。 いつものように `app.get()` メソッドを使用できます。 ルートハンドラートの中で、メソッド `res.json()` を使用し、オブジェクトを引数として渡します。 このメソッドは、リクエスト-レスポンス ループを閉じ、データを返します。 バックグラウンドでは、有効な JavaScript オブジェクトを文字列に変換します。そして、適切なヘッダーを設定して、JSON を提供しようとしていることをブラウザーに伝え、データを返します。 有効なオブジェクトには通常の構造体 `{key: data}` があります。 `data` は、数値、文字列、ネストされたオブジェクトまたは配列です。 `data` はまた、変数または関数呼び出しの結果になることもあり、その場合は文字列に変換される前に評価されます。

# --instructions--

オブジェクト `{"message": "Hello json"}` を JSON 形式のレスポンスとして、`/json` ルートへの GET リクエストに提供します。 ブラウザーから `your-app-url/json` にアクセスすると、画面にメッセージが表示されます。

# --hints--

エンドポイント `/json` は JSON オブジェクト `{"message": "Hello json"}` を提供する必要があります。

```js
(getUserInput) =>
  $.get(getUserInput('url') + '/json').then(
    (data) => {
      assert.equal(
        data.message,
        'Hello json',
        "The '/json' endpoint does not serve the right data"
      );
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

