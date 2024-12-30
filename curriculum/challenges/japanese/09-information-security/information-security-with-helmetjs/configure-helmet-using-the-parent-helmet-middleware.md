---
id: 587d8249367417b2b2512c40
title: '「親」の helmet() ミドルウェアを使用して Helmet を構成する'
challengeType: 2
forumTopicId: 301575
dashedName: configure-helmet-using-the-parent-helmet-middleware
---

# --description--

注意点として、このプロジェクトは <a href="https://gitpod.io/?autostart=true#https://github.com/freeCodeCamp/boilerplate-infosec/" target="_blank" rel="noopener noreferrer nofollow">Gitpod</a> にある次のスタータープロジェクトをベースに構築されているか、または <a href="https://github.com/freeCodeCamp/boilerplate-infosec/" target="_blank" rel="noopener noreferrer nofollow">GitHub</a> からクローンされています。 質問などの際に <a href="https://forum.freecodecamp.org/t/how-to-use-gitpod-in-the-curriculum/668669#how-can-i-share-my-workspace-to-get-help-8" target="_blank" rel="noopener noreferrer nofollow">Gitpod ワークスペースを共有する方法はこちらを参照</a>してください。

`app.use(helmet())` では、前に紹介したすべてのミドルウェアが自動的にインクルードされますが、`noCache()` と `contentSecurityPolicy()` は除外されます。しかし、必要に応じてこれらを有効にすることができます。 config オブジェクトを使用して、他のミドルウェアを個別に無効化または構成することもできます。

**例:**

```js
app.use(helmet({
  frameguard: {         // configure
    action: 'deny'
  },
  contentSecurityPolicy: {    // enable and configure
    directives: {
      defaultSrc: ["'self'"],
      styleSrc: ['style.com'],
    }
  },
  dnsPrefetchControl: false     // disable
}))
```

説明の都合上、またテストのしやすさを考慮して、各ミドルウェアを別々に紹介しました。 実際のプロジェクトでは「親」の `helmet()` ミドルウェアを簡単に実装して使用できます。

# --hints--

テストはありません。説明のみのチャレンジです。

```js
assert(true);
```

