---
id: cf1111c1c12feddfaeb3bdef
title: if文を使った条件分岐の利用
challengeType: 1
forumTopicId: 18348
dashedName: use-conditional-logic-with-if-statements
---

# --description--

`if`文はコード内での判断に使われます。キーワード`if`はJavaScriptに対して、丸括弧内で定義された特定の条件下で波括弧内のコードを実行するよう指示します。これらの条件は`Boolean`条件と呼ばれ、`true`または`false`のいずれかでなければなりません。

条件が`true`と評価されると、プログラムは波括弧内の文を実行します。ブール値の条件が`false`と評価されると、波括弧内の文は実行されません。

**疑似コード**

<blockquote>if (<i>条件が真の場合</i>) {<br>  <i>文が実行される</i><br>}</blockquote>

**例**

```js
function test(myCondition) {
  if (myCondition) {
    return "It was true";
  }
  return "It was false";
}

test(true);
test(false);
```

`test(true)`は文字列`It was true`を返し、`test(false)`は文字列`It was false`を返します。

`test`が`true`の値で呼び出されると、`if`文は`myCondition`が`true`かどうかを評価します。`true`なので、関数は`It was true`を返します。`test`が`false`の値で呼び出されると、`myCondition`は*`true`ではなく*、波括弧内の文は実行されず、関数は`It was false`を返します。

# --instructions--

関数内に`if`文を作成し、パラメータ`Yes, that was true`が`wasThatTrue`の場合は`true`を返し、それ以外の場合は`No, that was false`を返してください。

# --hints--

`trueOrFalse`は関数であるべきです

```js
assert(typeof trueOrFalse === 'function');
```

`trueOrFalse(true)`は文字列を返すべきです

```js
assert(typeof trueOrFalse(true) === 'string');
```

`trueOrFalse(false)`は文字列を返すべきです

```js
assert(typeof trueOrFalse(false) === 'string');
```

`trueOrFalse(true)`は文字列`Yes, that was true`を返すべきです

```js
assert(trueOrFalse(true) === 'Yes, that was true');
```

`trueOrFalse(false)`は文字列`No, that was false`を返すべきです

```js
assert(trueOrFalse(false) === 'No, that was false');
```

# --seed--

## --seed-contents--

```js
function trueOrFalse(wasThatTrue) {
  // Only change code below this line



  // Only change code above this line

}
```

# --solutions--

```js
function trueOrFalse(wasThatTrue) {
  if (wasThatTrue) {
    return "Yes, that was true";
  }
  return "No, that was false";
}
```
