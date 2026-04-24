---
id: adf08ec01beb4f99fc7a68f2
title: 偽値を除去する関数を実装する
challengeType: 26
dashedName: implement-a-falsy-remover
---

# --description--

このラボでは、配列からすべての偽値を除去する関数を作成します。

JavaScriptの偽値には `false`、`null`、`0`、`""`、`undefined`、および `NaN` があります。

**目的**：以下のストーリーを満たし、すべてのテストに合格してラボを完了してください。

**ストーリー：**

1. 配列を引数に取る `bouncer` 関数が必要です。
1. `bouncer` 関数は、引数として渡された配列と同じ要素を含みつつ、偽値の要素が除かれた新しい配列を返す必要があります。
1. `bouncer` 関数は、引数として渡された配列を変更してはいけません。

ヒント：各値をブール値に変換してみてください。

# --hints--

`bouncer` 関数が必要です。

```js
assert.isFunction(bouncer);
```

`bouncer([7, "ate", "", false, 9])` は `[7, "ate", 9]` を返すべきです。

```js
assert.deepEqual(bouncer([7, 'ate', '', false, 9]), [7, 'ate', 9]);
```

`bouncer(["a", "b", "c"])` は `["a", "b", "c"]` を返すべきです。

```js
assert.deepEqual(bouncer(['a', 'b', 'c']), ['a', 'b', 'c']);
```

`bouncer([false, null, 0, NaN, undefined, ""])` は `[]` を返すべきです。

```js
assert.deepEqual(bouncer([false, null, 0, NaN, undefined, '']), []);
```

`bouncer([null, NaN, 1, 2, undefined])` は `[1, 2]` を返すべきです。

```js
assert.deepEqual(bouncer([null, NaN, 1, 2, undefined]), [1, 2]);
```

`bouncer` 関数は、引数として渡された配列を変更してはいけません。

```js
const arr = ['a', false, 0, 'Naomi'];
bouncer(arr);
assert.deepEqual(arr, ['a', false, 0, 'Naomi']);
```

`bouncer([])` は `[]` を返すべきです。  

```js  
assert.deepEqual(bouncer([]), []);  
```  

# --seed--

## --seed-contents--

```js

```

# --solutions--

```js
function bouncer(arr) {
  return arr.filter(e => e);
}
```
