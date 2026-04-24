---
id: bd7123c9c443eddfaeb5bdef
title: JavaScriptの変数を宣言する
challengeType: 1
forumTopicId: 17556
dashedName: declare-javascript-variables
---

# --description--

コンピューターサイエンスでは、<dfn>データ</dfn>とはコンピューターにとって意味のあるものすべてを指します。JavaScriptは8つの異なる<dfn>データ型</dfn>を提供しており、それらは`undefined`、`null`、`boolean`、`string`、`symbol`、`bigint`、`number`、および`object`です。

たとえば、コンピューターは`12`のような数字と、`strings`のような`"12"`、`"dog"`、または`"123 cats"`のような文字の集合を区別します。コンピューターは数字に対して数学的な操作を行えますが、文字列に対してはできません。

<dfn>変数</dfn>は、コンピューターがデータを動的にストアし操作できるようにします。これは、データ自体を使うのではなく、「ラベル」を使ってデータを指し示すことで実現されます。8つのデータ型のいずれも変数にストアできます。

変数は数学で使うxやyの変数に似ており、参照したいデータを表す単純な名前です。コンピューターの変数は、異なる時点で異なる値をストアできる点で数学の変数とは異なります。

JavaScriptに変数を作成または<dfn>宣言</dfn>するよう指示するには、変数の前にキーワード`var`を付けます。例えば：

```js
var ourName;
```

は`ourName`という変数を作成します。JavaScriptでは文の終わりにセミコロンを付けます。変数名は数字、文字、`$`または`_`で構成できますが、スペースを含んだり数字で始めたりすることはできません。

# --instructions--

`var`キーワードを使って`myName`という変数を作成してください。

**ヒント**  
詰まったら上の`ourName`の例を見てください。

# --hints--

`myName`は`var`キーワードで宣言し、セミコロンで終わらせてください。

```js
assert(/var\s+myName\s*;/.test(__helpers.removeJSComments(code)));
```

# --seed--

## --seed-contents--

```js

```

# --solutions--

```js
var myName;
```
