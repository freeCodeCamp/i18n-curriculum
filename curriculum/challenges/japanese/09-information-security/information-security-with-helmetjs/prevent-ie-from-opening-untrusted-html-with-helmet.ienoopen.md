---
id: 587d8248367417b2b2512c3b
title: helmet.ieNoOpen() を使用して、IE が信頼できない HTML を開けないようにする
challengeType: 2
forumTopicId: 301584
dashedName: prevent-ie-from-opening-untrusted-html-with-helmet-ienoopen
---

# --description--

注意点として、このプロジェクトは <a href="https://gitpod.io/?autostart=true#https://github.com/freeCodeCamp/boilerplate-infosec/" target="_blank" rel="noopener noreferrer nofollow">Gitpod</a> にある次のスタータープロジェクトをベースに構築されているか、または <a href="https://github.com/freeCodeCamp/boilerplate-infosec/" target="_blank" rel="noopener noreferrer nofollow">GitHub</a> からクローンされています。 質問などの際に <a href="https://forum.freecodecamp.org/t/how-to-use-gitpod-in-the-curriculum/668669#how-can-i-share-my-workspace-to-get-help-8" target="_blank" rel="noopener noreferrer nofollow">Gitpod ワークスペースを共有する方法はこちらを参照</a>してください。

一部のウェブアプリケーションでは、信頼されていない HTML をダウンロード用に提供しています。 Internet Explorer の一部のバージョンではデフォルトで、あなたのサイトのコンテキストで、こうした HTML ファイルを開きます。 つまり、あなたのページのコンテキストで、信頼されていない HTML ページが悪意のある動作を始める可能性があります。 このミドルウェアは、X-Download-Options ヘッダーを設定して、そうしたファイルを開かないようにします。 これにより、IE ユーザーは信頼されたサイトのコンテキストでダウンロードを実行できなくなります。

# --instructions--

サーバーで `helmet.ieNoOpen()` メソッドを使用してください。

# --hints--

helmet.ieNoOpen() ミドルウェアを正しくマウントする必要があります。

```js
  $.get(code + '/_api/app-info').then(
    (data) => {
      assert.include(data.appStack, 'ienoopen');
      assert.equal(data.headers['x-download-options'], 'noopen');
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

