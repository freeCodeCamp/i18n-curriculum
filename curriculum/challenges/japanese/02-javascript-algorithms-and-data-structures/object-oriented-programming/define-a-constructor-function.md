---
id: 587d7dad367417b2b2512b77
title: コンストラクター関数を定義する
challengeType: 1
forumTopicId: 16804
dashedName: define-a-constructor-function
---

# --description--

<dfn>Constructors</dfn> are functions that create new objects. They define properties and behaviors that will belong to the new object. Think of them as a blueprint for the creation of new objects.

コンストラクターの例を次に示します。

```js
function Bird() {
  this.name = "Albert";
  this.color = "blue";
  this.numLegs = 2;
}
```

このコンストラクターは、プロパティ `name`、`color`、`numLegs` をそれぞれ Albert、blue、2 に設定した `Bird` オブジェクトを定義します。 コンストラクターはいくつかの規約に従います。

<ul><li>Constructors are defined with a capitalized name to distinguish them from other functions that are not <code>constructors</code>.</li><li>コンストラクターでは、作成するオブジェクトのプロパティを設定するためにキーワード <code>this</code> を使用する。 コンストラクターの中では、<code>this</code> は作成する新しいオブジェクトを参照する。</li><li>コンストラクターは、他の関数のように値を返すのではなく、プロパティと動作を定義する。</li></ul>

# --instructions--

コンストラクター `Dog` を作成し、プロパティ `name`、`color`、`numLegs` を持たせてそれぞれ文字列、文字列、数字を設定してください。

# --hints--

`Dog` は文字列に設定された `name` プロパティを持つ必要があります。

```js
assert(typeof new Dog().name === 'string');
```

`Dog` は文字列に設定された `color` プロパティを持つ必要があります。

```js
assert(typeof new Dog().color === 'string');
```

`Dog` は数値に設定された `numLegs` プロパティを持つ必要があります。

```js
assert(typeof new Dog().numLegs === 'number');
```

# --seed--

## --seed-contents--

```js

```

# --solutions--

```js
function Dog (name, color, numLegs) {
  this.name = 'name';
  this.color = 'color';
  this.numLegs = 4;
}
```
