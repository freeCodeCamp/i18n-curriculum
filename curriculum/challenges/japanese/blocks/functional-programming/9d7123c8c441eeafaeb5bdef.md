---
id: 9d7123c8c441eeafaeb5bdef
title: slice を使って配列から要素を削除する（splice の代わりに）
challengeType: 1
forumTopicId: 301236
dashedName: remove-elements-from-an-array-using-slice-instead-of-splice
---

# --description--

配列を扱う際によくあるパターンとして、特定の要素を削除して残りの配列を保持したい場合があります。JavaScript にはこれを実現するための `splice` メソッドがあり、削除を開始するインデックスと削除する要素数を引数として受け取ります。2番目の引数が指定されない場合は、配列の最後まで削除されるのがデフォルトです。ただし、`splice` メソッドは呼び出された元の配列を変更します。例を見てみましょう。

```js
const cities = ["Chicago", "Delhi", "Islamabad", "London", "Berlin"];
cities.splice(3, 1);
```

ここで `splice` は文字列 `London` を返し、cities 配列からそれを削除します。`cities` は `["Chicago", "Delhi", "Islamabad", "Berlin"]` の値を持ちます。

前のチャレンジで見たように、`slice` メソッドは元の配列を変更せず、新しい配列を返すため、変数に保存できます。`slice` メソッドはスライスの開始と終了のインデックス（終了は含まれません）を2つの引数として受け取り、その範囲の要素を新しい配列として返します。`slice` メソッドを `splice` の代わりに使うことで、配列を変更する副作用を避けられます。

# --instructions--

`nonMutatingSplice` 関数を `slice` を使って書き換えてください。`splice` の代わりに使います。渡された `cities` 配列の長さを3に制限し、最初の3つの要素だけを含む新しい配列を返すようにしてください。

元の配列は変更しないでください。

# --hints--

コードは `slice` メソッドを使うべきです。

```js
assert(__helpers.removeJSComments(code).match(/\.slice/g));
```

コードは `splice` メソッドを使ってはいけません。

```js
assert(!__helpers.removeJSComments(code).match(/\.?[\s\S]*?splice/g));
```

関数に渡された元の配列を変更してはいけません。

```js
assert(
  (function () {
    const _inputCities = ["Chicago", "Delhi", "Islamabad", "London", "Berlin"];
    nonMutatingSplice(_inputCities);
    return (
      JSON.stringify(_inputCities) ===
      JSON.stringify(["Chicago", "Delhi", "Islamabad", "London", "Berlin"])
    );
  })()
);
```

`nonMutatingSplice(["Chicago", "Delhi", "Islamabad", "London", "Berlin"])` は `["Chicago", "Delhi", "Islamabad"]` を返すべきです。

```js
assert.deepEqual(
  nonMutatingSplice(["Chicago", "Delhi", "Islamabad", "London", "Berlin"]),
  ["Chicago", "Delhi", "Islamabad"]
);
```

# --seed--

## --seed-contents--

```js
function nonMutatingSplice(cities) {

  return cities.splice(3);
}
```

# --solutions--

```js
function nonMutatingSplice(cities) {
  return cities.slice(0,3);
}
```
