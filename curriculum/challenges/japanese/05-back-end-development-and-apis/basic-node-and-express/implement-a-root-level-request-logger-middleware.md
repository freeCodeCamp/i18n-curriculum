---
id: 587d7fb1367417b2b2512bf3
title: ルートレベルのリクエスト ロガー ミドルウェアを実装する
challengeType: 2
forumTopicId: 301514
dashedName: implement-a-root-level-request-logger-middleware
---

# --description--

Earlier, you were introduced to the `express.static()` middleware function. Now it’s time to see what middleware is, in more detail. Middleware functions are functions that take 3 arguments: the request object, the response object, and the next function in the application’s request-response cycle. These functions execute some code that can have side effects on the app, and usually add information to the request or response objects. They can also end the cycle by sending a response when some condition is met. If they don’t send the response when they are done, they start the execution of the next function in the stack. This triggers calling the 3rd argument, `next()`.

以下の例を見てください。

```js
function(req, res, next) {
  console.log("I'm a middleware...");
  next();
}
```

ルートにこの関数をマウントしたとしましょう。 リクエストがルートと一致すると、「I'm a middleware…」という文字列が表示され、スタック内で次の関数が実行されます。 この演習では、ルートレベルのミドルウェアを構築します。 チャレンジ 4 で説明したように、ミドルウェア関数をルートレベルでマウントするには、 `app.use(<mware-function>)` メソッドを使用できます。 この場合、関数はすべてのリクエストに対して実行されますが、より具体的な条件を設定することもできます。 たとえば、POST リクエストに対してのみ関数を実行したい場合は、 `app.post(<mware-function>)` を使用できます。 すべての HTTP 動詞 (GET、DELETE、PUT、 … ) について、類似したメソッドがあります。

# --instructions--

シンプルなロガーを構築してください。 リクエストごとに、`method path - ip` という形式の文字列をコンソールへ記録する必要があります。 たとえば `GET /json - ::ffff:127.0.0.1` などとします。 `method` と `path` の間に空白を入れ、`path` と `ip` を区切るダッシュの両側を空白で囲むことに注意してください。 `req.method`、`req.path` および `req.ip` を使用して、リクエストメソッド (http 動詞)、相対ルートパスおよびリクエストオブジェクトの発信者 ip を取得できます。 処理を終えたら忘れずに `next()` を呼び出してください。そうしないとサーバーがずっと無応答になります。 必ず 「Logs」を開き、リクエストが届いたときにどうなるか確認してください。

** 注: ** Express では、関数はコード内に出現する順序で評価されます。 この動作はミドルウェアにも適用されます。 すべてのルートで動作させたい場合は、それらの前でマウントする必要があります。

# --hints--

ルートレベルのロガーミドルウェアをアクティブにする必要があります。

```js
(getUserInput) =>
  $.get(getUserInput('url') + '/_api/root-middleware-logger').then(
    (data) => {
      assert.isTrue(
        data.passed,
        'root-level logger is not working as expected'
      );
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

