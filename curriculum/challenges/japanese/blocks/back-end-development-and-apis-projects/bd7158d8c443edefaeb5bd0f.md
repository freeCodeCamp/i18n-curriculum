---
id: bd7158d8c443edefaeb5bd0f
title: ファイルメタデータマイクロサービス
challengeType: 4
forumTopicId: 301506
dashedName: file-metadata-microservice
---

# --description--

このプロジェクトでは、次のサイトと機能的に似たフルスタックJavaScriptアプリを作成します：<a href="https://file-metadata-microservice.freecodecamp.rocks" target="_blank" rel="noopener noreferrer nofollow">https://file-metadata-microservice.freecodecamp.rocks</a>。このプロジェクトに取り組む際は、以下のいずれかの方法でコードを書いてください。

- <a href="https://github.com/freeCodeCamp/boilerplate-project-filemetadata/" target="_blank" rel="noopener noreferrer nofollow">このGitHubリポジトリ</a>をクローンして、ローカルでプロジェクトを完成させる。
- お好みのサイトビルダーを使ってプロジェクトを完成させる。必ずGitHubリポジトリのすべてのファイルを組み込んでください。

# --instructions--

**ヒント：** ファイルアップロードを扱うには`multer` npmパッケージを使うことができます。

# --hints--

自分のプロジェクトを用意し、例のURLは使わないでください。

```js
  assert(
    !/.*\/file-metadata-microservice\.freecodecamp\.rocks/.test(
      code
    )
  );
```

ファイルアップロードを含むフォームを提出できます。

```js
  const site = await fetch(code);
  const data = await site.text();
  const doc = new DOMParser().parseFromString(data, 'text/html');
  assert(doc.querySelector('input[type="file"]'));
```

フォームのファイル入力フィールドには`name`属性が`upfile`に設定されています。

```js
  const site = await fetch(code);
  const data = await site.text();
  const doc = new DOMParser().parseFromString(data, 'text/html');
  assert(doc.querySelector('input[name="upfile"]'));
```

ファイルを提出すると、JSONレスポンス内でファイルの`name`、`type`、`size`（バイト単位）を受け取ります。

```js
  const formData = new FormData();
  const fileData = await fetch(
    'https://cdn.freecodecamp.org/weather-icons/01d.png'
  );
  const file = await fileData.blob();
  formData.append('upfile', file, 'icon');
  const data = await fetch(code + '/api/fileanalyse', {
    method: 'POST',
    body: formData
  });
  const parsed = await data.json();
  assert.property(parsed, 'size');
  assert.equal(parsed.name, 'icon');
  assert.equal(parsed.type, 'image/png');
```
