---
id: 587d7fb1367417b2b2512bf2
title: .env ファイルを使用する
challengeType: 2
forumTopicId: 301521
dashedName: use-the--env-file
---

# --description--

The `.env` file is a hidden file that is used to pass environment variables to your application. This file is secret, no one but you can access it, and it can be used to store data that you want to keep private or hidden. For example, you can store API keys from external services or your database URI. You can also use it to store configuration options. By setting configuration options, you can change the behavior of your application, without the need to rewrite some code.

環境変数にはアプリから `process.env.VAR_NAME` としてアクセスできます。 `process.env` オブジェクトは、グローバルの Node オブジェクトであり、変数は文字列として渡されます。 慣例により、変数名はすべて大文字で、単語はアンダースコアで区切られます。 `.env` はシェルファイルなので、名前や値を引用符で囲む必要はありません。 また、変数に値を割り当てる場合、等号記号の両側に空白を付けることはできず、`VAR_NAME=value` のようにする必要があります。 通常は、それぞれの変数定義を別々の行に記述します。

# --instructions--

環境変数を設定オプションとして追加しましょう。

プロジェクトディレクトリのルートに `.env` ファイルを作成し、変数 `MESSAGE_STYLE=uppercase` を保存してください。

次に、前のチャレンジで作成した `/json` GET ルートハンドラーで、`process.env.MESSAGE_STYLE` にアクセスし、変数が `uppercase` に等しい場合にレスポンスオブジェクトの `message` を大文字に変換してください。 レスポンスオブジェクトは、 `MESSAGE_STYLE` の値に応じて、`{"message": "Hello json"}` または `{"message": "HELLO JSON"}` のいずれかにする必要があります。 テストの都合上、`process.env.MESSAGE_STYLE` の値はルートハンドラーの外側ではなく**内側**で読み取る必要がありますので注意してください。

You will need to use the `dotenv` package. It loads environment variables from your `.env` file into `process.env`. The `dotenv` package has already been installed, and is in your project's `package.json` file. At the top of your `myApp.js` file, add `require('dotenv').config()` to load the environment variables.

# --hints--

The response of the endpoint `/json` should change according to the environment variable `MESSAGE_STYLE`

```js
(getUserInput) =>
  $.get(getUserInput('url') + '/_api/use-env-vars').then(
    (data) => {
      assert.isTrue(
        data.passed,
        'The response of "/json" does not change according to MESSAGE_STYLE'
      );
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

