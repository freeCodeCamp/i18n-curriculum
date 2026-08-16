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

独自のプロジェクトを用意してください。例のURLは使わないでください。

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
  const boundary = 'fccBoundary1234567890';
  const head =
    `--${boundary}\r\n` +
    'Content-Disposition: form-data; name="upfile"; filename="icon"\r\n' +
    'Content-Type: image/png\r\n\r\n';
  const body = new Blob([head, new Uint8Array(70), `\r\n--${boundary}--\r\n`]);
  const data = await fetch(code + '/api/fileanalyse', {
    method: 'POST',
    headers: {
      'Content-Type': `multipart/form-data; boundary=${boundary}`
    },
    body
  });
  const parsed = await data.json();
  assert.property(parsed, 'size');
  assert.equal(parsed.name, 'icon');
  assert.equal(parsed.type, 'image/png');
```

