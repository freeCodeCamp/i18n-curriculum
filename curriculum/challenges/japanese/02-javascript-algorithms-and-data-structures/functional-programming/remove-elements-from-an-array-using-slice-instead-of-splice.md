---
id: 9d7123c8c441eeafaeb5bdef
title: splice の代わりに slice を使用して配列から要素を削除する
challengeType: 1
forumTopicId: 301236
dashedName: remove-elements-from-an-array-using-slice-instead-of-splice
---

# --description--

A common pattern while working with arrays is when you want to remove items and keep the rest of the array. JavaScript offers the `splice` method for this, which takes arguments for the index of where to start removing items, then the number of items to remove. If the second argument is not provided, the default is to remove items through the end. However, the `splice` method mutates the original array it is called on. こちらがその例です。

```js
const cities = ["Chicago", "Delhi", "Islamabad", "London", "Berlin"];
cities.splice(3, 1);
```

この例では、`splice` は文字列 `London` を返し、それを cities 配列から削除します。 `cities` の値は `["Chicago", "Delhi", "Islamabad", "Berlin"]` になります。

前回のチャレンジで説明したように、 `slice` メソッドは元の配列をミューテートさせず、変数に保存できる新しい配列を返します。 すでに説明したように、`slice` メソッドは、スライスを開始するインデックスと終了するインデックス (終了場所はスライス対象には含まれません) を表す 2 つの引数を取り、それらのアイテムを新しい配列に返します。 `splice` の代わりに `slice` メソッドを使用すると、配列のミューテーションの副作用を回避できます。

# --instructions--

関数 `nonMutatingSplice` を書き換えて、`splice` の代わりに `slice` を使用してください。 与えられた `cities` 配列の長さを 3 に制限し、最初の 3 つのアイテムのみを持つ新しい配列を返す必要があります。

関数に与えられた元の配列をミューテートさせないでください。

# --hints--

コードで `slice` メソッドを使用する必要があります。

```js
assert(__helpers.removeJSComments(code).match(/\.slice/g));
```

コードで `splice` メソッドを使用しないでください。

```js
assert(!__helpers.removeJSComments(code).match(/\.?[\s\S]*?splice/g));
```

You should not mutate the original array passed to the function.

```js
assert.deepEqual(_inputCities, ["Chicago", "Delhi", "Islamabad", "London", "Berlin"]);
```

`nonMutatingSplice(["Chicago", "Delhi", "Islamabad", "London", "Berlin"])` は `["Chicago", "Delhi", "Islamabad"]` を返す必要があります。

```js
assert.deepEqual(nonMutatingSplice(_inputCities), ["Chicago", "Delhi", "Islamabad"]);
```

# --seed--

## --seed-contents--

```js
function nonMutatingSplice(cities) {

  return cities.splice(3);
}
```

## --after-user-code--

```js
const _inputCities = ["Chicago", "Delhi", "Islamabad", "London", "Berlin"];
```

# --solutions--

```js
function nonMutatingSplice(cities) {
  return cities.slice(0,3);
}
```
