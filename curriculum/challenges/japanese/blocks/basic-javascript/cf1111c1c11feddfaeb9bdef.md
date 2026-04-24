---
id: cf1111c1c11feddfaeb9bdef
title: JavaScriptでランダムな分数を生成する
challengeType: 1
forumTopicId: 18185
dashedName: generate-random-fractions-with-javascript
---

# --description--

ランダムな数はランダムな動作を作るのに役立ちます。

JavaScriptには`Math.random()`という関数があり、`0`（含む）から`1`（含まない）までのランダムな小数を生成します。したがって`Math.random()`は`0`を返すことがありますが、`1`を返すことはありません。

**注意：** <a href="/learn/javascript-algorithms-and-data-structures/basic-javascript/storing-values-with-the-assignment-operator" target="_blank" rel="noopener noreferrer nofollow">代入演算子で値を保存する</a>と同様に、すべての関数呼び出しは`return`が実行される前に解決されるため、`return`関数の値を`Math.random()`できます。

# --instructions--

`randomFraction`を変更して、`0`を返す代わりにランダムな数を返すようにしてください。

# --hints--

`randomFraction`はランダムな数を返す必要があります。

```js
assert(typeof randomFraction() === 'number');
```

`randomFraction`が返す数は小数であるべきです。

```js
assert((randomFraction() + '').match(/\./g));
```

ランダムな小数を生成するには`Math.random`を使うべきです。

```js
assert(__helpers.removeJSComments(code).match(/Math\.random/g).length >= 0);
```

# --seed--

## --seed-contents--

```js
function randomFraction() {

  // Only change code below this line

  return 0;

  // Only change code above this line
}
```

# --solutions--

```js
function randomFraction() {
  return Math.random();
}
```
