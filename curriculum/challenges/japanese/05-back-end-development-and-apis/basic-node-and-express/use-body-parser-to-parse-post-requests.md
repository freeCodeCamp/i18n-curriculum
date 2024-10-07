---
id: 587d7fb2367417b2b2512bf7
title: POST リクエストを解析するためにボディパーサーを使用する
challengeType: 2
forumTopicId: 301520
dashedName: use-body-parser-to-parse-post-requests
---

# --description--

Besides GET, there is another common HTTP verb, it is POST. POST is the default method used to send client data with HTML forms. In REST convention, POST is used to send data to create new items in the database (a new user, or a new blog post). You don’t have a database in this project, but you are going to learn how to handle POST requests anyway.

このようなリクエストでは、データは URL には表示されず、リクエストボディに隠されています。 ボディは HTTP リクエストの一部であり、ペイロードとも呼ばれます。 URL にデータが表示されていなくても、データが非公開であるとは限りません。 その理由を理解するため、HTTP POST リクエストの処理前の内容を見てみましょう。

```http
POST /path/subpath HTTP/1.0
From: john@example.com
User-Agent: someBrowser/1.0
Content-Type: application/x-www-form-urlencoded
Content-Length: 20

name=John+Doe&age=25
```

ご覧のように、ボディはクエリ文字列のようにエンコードされています。 これは、HTML のフォームで使用されるデフォルトの形式です。 Ajax では、JSON を使用してもっと複雑な構造のデータを処理することもできます。 また、multipart/form-data という別のエンコーディングタイプもあります。 これは、バイナリファイルをアップロードする場合に使用します。 この演習では、URL エンコードされたボディを使用します。 POST リクエストからのデータを解析するには、`body-parser` パッケージを使用する必要があります。 このパッケージでは、さまざまな形式でデータをデコードできる一連のミドルウェアを使用できます。

# --instructions--

`body-parser` はすでにインストールされており、プロジェクトの `package.json` ファイルに含まれています。 `myApp.js` ファイルの先頭でそれを `require` し、`bodyParser` という名前の変数に格納してください。 URL エンコードされたデータを処理するミドルウェアは、`bodyParser.urlencoded({extended: false})` によって返されます。 前のメソッド呼び出しで返された関数を `app.use()` に渡してください。 いつものように、ミドルウェアはそれに依存するすべてのルートよりも前にマウントする必要があります。

**注:** `extended` は、解析を使用する必要があるかどうかを `body-parser` に伝える設定オプションです。 `extended=false` の場合は、従来のエンコーディング `querystring` ライブラリを使用します。 `extended=true` の場合は、解析に `qs` ライブラリを使用します。

`extended=false` を使用する場合、値は文字列または配列のみとなります。 `querystring` を使用する場合に返されるオブジェクトは、デフォルトの JavaScript `Object` のプロトタイプを継承しません。つまり、`hasOwnProperty` や `toString` などの関数は利用できなくなります。 extended が有効な場合は、データの柔軟性が高まりますが、その点では JSON のほうが優れています。

# --hints--

「body-parser」ミドルウェアをマウントする必要があります。

```js
(getUserInput) =>
  $.get(getUserInput('url') + '/_api/add-body-parser').then(
    (data) => {
      assert.isAbove(
        data.mountedAt,
        0,
        '"body-parser" is not mounted correctly'
      );
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

