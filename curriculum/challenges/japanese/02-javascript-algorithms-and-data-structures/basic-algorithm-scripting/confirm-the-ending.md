---
id: acda2fb1324d9b0fa741e6b5
title: 末尾の一致判定
challengeType: 1
forumTopicId: 16006
dashedName: confirm-the-ending
---

# --description--

文字列 (最初の引数、`str`) が与えられたターゲット文字列 (2 番目の引数、`target`) で終わるかどうかを確認してください。

This challenge _can_ be solved with the `.endsWith()` method, which was introduced in ES2015. しかし、ここでは代わりに JavaScript の substring メソッドを使用してください。

# --hints--

`confirmEnding("Bastian", "n")` は `true` を返す必要があります。

```js
assert.isTrue(confirmEnding('Bastian', 'n'));
```

`confirmEnding("Congratulation", "on")`は `true` を返す必要があります。

```js
assert.isTrue(confirmEnding('Congratulation', 'on'));
```

`confirmEnding("Connor", "n")` は `false` を返す必要があります。

```js
assert.isFalse(confirmEnding('Connor', 'n'));
```

`confirmEnding("Walking on water and developing software from a specification are easy if both are frozen", "specification")` は `false` を返す必要があります。

```js
assert.isFalse(
  confirmEnding(
    'Walking on water and developing software from a specification are easy if both are frozen',
    'specification'
  )
);
```

`confirmEnding("He has to give me a new name", "name")` は `true` を返す必要があります。

```js
assert.isTrue(confirmEnding('He has to give me a new name', 'name'));
```

`confirmEnding("Open sesame", "same")` は `true` を返す必要があります。

```js
assert.isTrue(confirmEnding('Open sesame', 'same'));
```

`confirmEnding("Open sesame", "sage")` は `false` を返す必要があります。

```js
assert.isFalse(confirmEnding('Open sesame', 'sage'));
```

`confirmEnding("Open sesame", "game")` は `false` を返す必要があります。

```js
assert.isFalse(confirmEnding('Open sesame', 'game'));
```

`confirmEnding("If you want to save our world, you must hurry. We dont know how much longer we can withstand the nothing", "mountain")` は `false` を返す必要があります。

```js
assert.isFalse(
  confirmEnding(
    'If you want to save our world, you must hurry. We dont know how much longer we can withstand the nothing',
    'mountain'
  )
);
```

`confirmEnding("Abstraction", "action")` は `true` を返す必要があります。

```js
assert.isTrue(confirmEnding('Abstraction', 'action'));
```

このチャレンジを解決するプログラムでは、組み込みメソッド `.endsWith()` を使用しないでください。

```js
assert.notMatch(__helpers.removeJSComments(code), /\.endsWith\(.*?\)\s*?;?/);
assert.notMatch(__helpers.removeJSComments(code), /\['endsWith'\]/);
```

# --seed--

## --seed-contents--

```js
function confirmEnding(str, target) {
  return str;
}

confirmEnding('Bastian', 'n');
```

# --solutions--

```js
function confirmEnding(str, target) {
  return str.substring(str.length - target.length) === target;
}

confirmEnding('Bastian', 'n');
```
