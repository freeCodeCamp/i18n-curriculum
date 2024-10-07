---
id: 589fc831f9fc0f352b528e76
title: 切断を処理する
challengeType: 2
forumTopicId: 301552
dashedName: handle-a-disconnect
---

# --description--

You may notice that up to now you have only been increasing the user count. Handling a user disconnecting is just as easy as handling the initial connect, except you have to listen for it on each socket instead of on the whole server.

これを行うには、データを渡さずにソケットで `'disconnect'` をリッスンする別のリスナーを、既存の `'connect'` リスナーの中に追加してください。 この機能をテストするには、ユーザーが切断したことをコンソールに記録するだけです。

```js
socket.on('disconnect', () => {
  /*anything you want to do on disconnect*/
});
```

To make sure clients continuously have the updated count of current users, you should decrease `currentUsers` by 1 when the disconnect happens then emit the `'user count'` event with the updated count.

**注:** `'disconnect'` とまったく同様に、ソケットがサーバーへエミットできる他のすべてのイベントについても、「socket」を定義しているコネクションリスナーの中で処理する必要があります。

正しいと思ったら、ページを送信してください。 エラーが発生している場合、<a href="https://forum.freecodecamp.org/t/advanced-node-and-express/567135#handle-a-disconnect-8" target="_blank" rel="noopener noreferrer nofollow">この時点までの完成形のコードをこちらで確認できます</a>。

# --hints--

サーバーはソケットからの切断イベントを処理する必要があります。

```js
async (getUserInput) => {
  const url = new URL("/_api/server.js", getUserInput("url"));
  const res = await fetch(url);
  const data = await res.text();
  assert.match(data, /socket.on.*('|")disconnect('|")/s, '');
}
```

Your client should be listening for `'user count'` event.

```js
async (getUserInput) => {
  const url = new URL("/public/client.js", getUserInput("url"));
  const res = await fetch(url);
  const data = await res.text();
  assert.match(
    data,
    /socket.on.*('|")user count('|")/s,
    'Your client should be connection to server with the connection defined as socket'
  );
}
```

