---
id: 587d7fb5367417b2b2512c03
title: キャレット文字を使用して依存関係の最新の MINOR バージョンを使用する
challengeType: 2
forumTopicId: 301531
dashedName: use-the-caret-character-to-use-the-latest-minor-version-of-a-dependency
---

# --description--

前回のチャレンジで学んだチルダでは、npm で依存関係の最新の PATCH をインストールできました。同様に、npm でキャレット (`^`) を使用すると、将来のアップデートもインストールできます。 両者の違いは、キャレットでは MINOR アップデートと PATCH の両方が許可されることです。

`@freecodecamp/example` の現在のバージョンを `~1.2.13` にすると、npm は `1.2.x` の最新バージョンをインストールできます。 代わりにバージョン・プレフィックスとしてキャレット (^) を使用すると、npm は `1.x.x` の最新バージョンへのアップデートが可能となります。

```json
"package": "^1.3.8"
```

この記述では、`1.x.x` の範囲のバージョンへのアップデートが許可されます。

# --instructions--

依存関係内の `@freecodecamp/example` のバージョンのプレフィックスとしてキャレット (`^`) を使用し、npm によって任意の新しい MINOR リリースへ更新できるようにしてください。

**注:** バージョン番号自体は変更しないでください。

# --hints--

`"dependencies"` に `"@freecodecamp/example"` を含める必要があります。

```js
  $.get(code + '/_api/package.json').then(
    (data) => {
      var packJson = JSON.parse(data);
      assert.property(
        packJson.dependencies,
        '@freecodecamp/example',
        '"dependencies" does not include "@freecodecamp/example"'
      );
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

`"@freecodecamp/example"` のバージョンは `"^1.x.x"` である必要があります。

```js
  $.get(code + '/_api/package.json').then(
    (data) => {
      var packJson = JSON.parse(data);
      assert.match(
        packJson.dependencies["@freecodecamp/example"],
        /^\^1\./,
        'Wrong version of "@freecodecamp/example". It should be ^1.2.13'
      );
    },
    (xhr) => {
      throw new Error(xhr.responseText);
    }
  );
```

