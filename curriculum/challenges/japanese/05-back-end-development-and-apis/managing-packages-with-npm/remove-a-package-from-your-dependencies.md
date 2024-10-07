---
id: 587d7fb5367417b2b2512c04
title: 依存関係からパッケージを削除する
challengeType: 2
forumTopicId: 301530
dashedName: remove-a-package-from-your-dependencies
---

# --description--

You have now tested a few ways you can manage dependencies of your project by using the package.json's dependencies section. You have also included external packages by adding them to the file and even told npm what types of versions you want, by using special characters such as the tilde or the caret.

しかし、不要になった外部パッケージを削除したい場合はどうすればよいでしょうか？ すでに推察している人もいるかもしれませんが、そのパッケージに対応するキーと値のペアを依存関係から削除するだけです。

この方法は、package.json 内の他のフィールドの削除にも適用されます。

# --instructions--

依存関係から `@freecodecamp/example` パッケージを削除してください。

**注:** 削除した後にコンマの数が正しいことを確認してください。

# --hints--

`"dependencies"` が `"@freecodecamp/example"` を含んでいないようにする必要があります。

```js
(getUserInput) =>
  $.get(getUserInput('url') + '/_api/package.json').then(
    (data) => {
      var packJson = JSON.parse(data);
      assert.notProperty(
        packJson.dependencies,
        '@freecodecamp/example',
        '"dependencies" still includes "@freecodecamp/example"'
      );
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

