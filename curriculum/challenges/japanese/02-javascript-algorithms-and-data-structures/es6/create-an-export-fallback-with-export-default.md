---
id: 587d7b8c367417b2b2512b58
title: export default を使用してエクスポートのフォールバック (代替) を作成する
challengeType: 1
forumTopicId: 301199
dashedName: create-an-export-fallback-with-export-default
---

# --description--

In the `export` lesson, you learned about the syntax referred to as a <dfn>named export</dfn>. This allowed you to make multiple functions and variables available for use in other files.

もう一つ覚えておく必要がある `export` 構文として、<dfn>export default</dfn> というものがあります。 通常は、ファイルから 1 つの値だけをエクスポートする場合にこの構文を使用します。 また、ファイルやモジュールのフォールバック (代替) 値を作成する場合にも使用します。

`export default` を使用した例を次に示します。

```js
export default function add(x, y) {
  return x + y;
}

export default function(x, y) {
  return x + y;
}
```

1 つ目は名前付き関数、2 つ目は匿名関数です。

`export default` は、モジュールまたはファイルのフォールバック値を宣言するために使用します。そのため、各モジュールまたはファイルでデフォルトのエクスポートにすることができるのは 1 つの値だけです。 また、`var`、 `let`、または `const` を持つ `export default` は使用できません。

# --instructions--

次の関数をモジュールのフォールバック値にする必要があります。 そのために必要なコードを追加してください。

# --hints--

コードで `export` のフォールバックを使用する必要があります。

```js
assert(
  __helpers.removeJSComments(code).match(
    /export\s+default\s+function(\s+subtract\s*|\s*)\(\s*x,\s*y\s*\)\s*{/g
  )
);
```

# --seed--

## --seed-contents--

```js
function subtract(x, y) {
  return x - y;
}
```

# --solutions--

```js
export default function subtract(x, y) {
  return x - y;
}
```
