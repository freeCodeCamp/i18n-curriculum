---
id: 587d7fb3367417b2b2512bfb
title: 'Node.js プロジェクトまたは npm パッケージの中心となる package.json を使用する'
challengeType: 2
forumTopicId: 301528
dashedName: how-to-use-package-json-the-core-of-any-node-js-project-or-npm-package
---

# --description--

これらのチャレンジに取り組むにあたり、以下の方法のうち 1 つを用いてコードを記述します。

- <a href="https://github.com/freeCodeCamp/boilerplate-npm/" target="_blank" rel="noopener noreferrer nofollow">GitHub リポジトリ</a>をクローンし、ローカル環境でプロジェクトを完了させる。
- 使い慣れたサイトビルダーを使用してプロジェクトを完了させる。 必ず GitHub リポジトリのすべてのファイルを取り込む。

`package.json` ファイルは、Node.js プロジェクトまたは npm パッケージの中心となります。 これはあなたのプロジェクトに関する情報を保存します。 ファイルは単一の JSON オブジェクトで構成され、そこに情報がキーと値のペアで保存されます。 必須フィールドは `name` と `version` の二つだけですが、追加の情報も提供すると良いでしょう。

`npm init` コマンドを使うと、ターミナルから `package.json` ファイルを作成することができます。 これにより、ガイド付きセットアップが実行されます。 `npm init -y` のように `-y` フラグを使用して `npm init` を実行すると、ガイドの質問をスキップしてファイルが生成されます。

プロジェクトのファイルツリーを見ると、`package.json` ファイルはツリーの最上位レベルにあることがわかります。 以降のチャレンジではこのファイルに改良を加えていきます。

このファイルで最も一般的な情報の 1 つは、 `author` フィールドです。 これはプロジェクトの作成者を指定するもので、連絡先などの詳細を記した文字列またはオブジェクトで構成できます。 より大きなプロジェクトではオブジェクトが推奨されますが、このプロジェクトでは次の例のような単純な文字列を使用します。

```json
"author": "Jane Doe",
```

# --instructions--

あなたの名前を、プロジェクトの `author` として `package.json` ファイルに追加してください。

**注: ** JSON を記述しているので、すべてのフィールド名で二重引用符 (") を使用し、コンマ (,) で区切る必要があります。

# --hints--

`package.json` ファイルには、有効な「author」キーが必要です。

```js
  $.get(code + '/_api/package.json').then(
    (data) => {
      var packJson = JSON.parse(data);
      assert(packJson.author, '"author" is missing');
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

