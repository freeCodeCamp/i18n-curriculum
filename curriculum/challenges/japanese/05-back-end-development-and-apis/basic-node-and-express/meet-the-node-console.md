---
id: 587d7fb0367417b2b2512bed
title: Node コンソールに触れる
challengeType: 2
forumTopicId: 301515
dashedName: meet-the-node-console
---

# --description--

これらのチャレンジに取り組むにあたり、以下の方法のうち 1 つを用いてコードを記述します。

- <a href="https://github.com/freeCodeCamp/boilerplate-express/" target="_blank" rel="noopener noreferrer nofollow">GitHub リポジトリ</a>をクローンし、ローカル環境でプロジェクトを完了させる。
- <a href="https://gitpod.io/?autostart=true#https://github.com/freeCodeCamp/boilerplate-express/" target="_blank" rel="noopener noreferrer nofollow">Gitpod スタータープロジェクト</a>を使用して、チャレンジを完了させる。 ※質問などの際に <a href="https://forum.freecodecamp.org/t/how-to-use-gitpod-in-the-curriculum/668669#how-can-i-share-my-workspace-to-get-help-8" target="_blank" rel="noopener noreferrer nofollow">Gitpod ワークスペースを共有する方法はこちらを参照</a>してください。
- 使い慣れたサイトビルダーを使用してプロジェクトを完了させる。 必ず GitHub リポジトリのすべてのファイルを取り込む。

開発プロセスでは、コード内で何が起きているかを確認できることが重要です。

Node は単なる JavaScript 環境にすぎません。 クライアントサイド JavaScript と同様に、コンソールを使用して有用なデバッグ情報を表示できます。 ローカルマシンでは、ターミナルでコンソール出力を確認できます。 Gitpod では、デフォルトでエディタの下部にターミナルが開きます。

チャレンジの作業中はターミナルを開いたままにしておくことをお勧めします。 ターミナルの出力を見て、発生したエラーを確認することができます。

サーバーのファイルを変更した後は、サーバーを再起動する必要があります。

ターミナルからサーバーを停止するには `Ctrl + C` を使用します。再開するには、Node を直接使用するか (`node mainEntryFile.js`)、`npm run` コマンドで `package.json` ファイル内の実行スクリプトを使用します。

例えば、`"start": "node server.js"` スクリプトは、ターミナルで `npm run start` コマンドを使用することで実行できます。

ファイル保存時にサーバーを自動的に再起動できるように、Node は `--watch` フラグを提供しており、これを `"start": "node --watch server.js"` のように start スクリプトに追加できます。または、`nodemon` のような npm パッケージをインストールすることもできます。 これは練習も兼ねてみなさんにお任せします。

# --instructions--

`myApp.js` ファイルを変更して、コンソールログに「Hello World」と出力してください。

# --hints--

`"Hello World"` がコンソールに表示されます。

```js
  $.get(code + '/_api/hello-console').then(
    (data) => {
      assert.isTrue(data.passed, '"Hello World" is not in the server console');
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

