---
id: 587d7b8d367417b2b2512b59
title: デフォルトのエクスポートをインポートする
challengeType: 1
forumTopicId: 301205
dashedName: import-a-default-export
---

# --description--

In the last challenge, you learned about `export default` and its uses. To import a default export, you need to use a different `import` syntax. In the following example, `add` is the default export of the `math_functions.js` file. Here is how to import it:

```js
import add from "./math_functions.js";
```

構文は 1 か所重要な部分が異なっています。 インポートする値 `add` が波括弧 (`{}`) で囲まれていません。 ここでの `add` は、`math_functions.js` ファイルのデフォルトのエクスポートが何であっても、単なる変数名になります。 デフォルトをインポートするときは、ここで任意の名前を使用できます。

# --instructions--

次のコードで、このファイルと同じディレクトリにある `math_functions.js` ファイルからデフォルトのエクスポートをインポートしてください。 インポートしたものに `subtract` という名前を付けてください。

# --hints--

`math_functions.js` から `subtract` を適切にインポートする必要があります。

```js
assert(__helpers.removeJSComments(code).match(/import\s+subtract\s+from\s+('|")\.\/math_functions\.js\1/g));
```

# --seed--

## --seed-contents--

```js

// Only change code above this line

subtract(7,4);
```

# --solutions--

```js
import subtract from "./math_functions.js";

subtract(7,4);
```
