---
id: 68ad9821ee41baad9cb0fd4e
title: 対称差の関数を作成する
challengeType: 26
dashedName: lab-symmetric-difference
---

# --description--

2つの配列を比較し、どちらか一方の配列にのみ存在し、両方には存在しない要素を含む新しい配列を返してください。つまり、2つの配列の対称差を返します。

例：

- 配列A: `["diamond", "stick", "apple"]`

- 配列B: `["stick", "emerald", "bread"]`

結果: `["diamond", "apple", "emerald", "bread"]`

**目的:** 以下のストーリーを満たし、すべてのテストに合格してチャレンジを完了してください。

**ストーリー:**

1. あなたの関数`diffArray`は配列を返す必要があります。
2. あなたの関数は2つの引数を取り、どちらも配列である必要があります。
3. あなたの関数は`filter`メソッドを使用する必要があります。
4. あなたの関数は2つの配列の対称差を返す必要があります。  
5. 対称差がない場合は空の配列を返す必要があります。


# --hints--

`diffArray`という名前の関数を作成してください。

```js
assert.isFunction(diffArray);
```

`diffArray`関数は`filter`メソッドを使って、両方の配列に存在する要素を除外する必要があります。

```js
assert(/\.filter\(/.test(diffArray.toString()));
```

`diffArray(["diorite", "andesite", "grass", "dirt", "pink wool", "dead shrub"], ["diorite", "andesite", "grass", "dirt", "dead shrub"])`は`["pink wool"]`を返す必要があります。

```js
assert.deepEqual(diffArray(
  ["diorite", "andesite", "grass", "dirt", "pink wool", "dead shrub"],
  ["diorite", "andesite", "grass", "dirt", "dead shrub"]
), ["pink wool"]);
```

`diffArray(["diorite", "andesite", "grass", "dirt", "pink wool", "dead shrub"], ["andesite", "grass", "dirt", "dead shrub"])`は`["diorite", "pink wool"]`を返す必要があります。

```js
assert.deepEqual(diffArray(
  ["diorite", "andesite", "grass", "dirt", "pink wool", "dead shrub"],
  ["andesite", "grass", "dirt", "dead shrub"]
), ["diorite", "pink wool"]);
```

`diffArray`は、同じ配列2つを渡した場合に空の配列を返す必要があります。

```js
assert.deepEqual(diffArray(
  ["andesite", "grass", "dirt", "dead shrub"],
  ["andesite", "grass", "dirt", "dead shrub"]
), []);
```

`diffArray(["pen", "book"], ["book", "pencil", "notebook"])`は`["pen", "pencil", "notebook"]`を返す必要があります。

```js
assert.deepEqual(diffArray(
  ["pen", "book"],
  ["book", "pencil", "notebook"]
), ["pen", "pencil", "notebook"]);
```

`diffArray(["car", "bike", "bus"], ["bike", "train", "plane", "bus"])`は`["car", "train", "plane"]`を返す必要があります。

```js
assert.deepEqual(diffArray(
  ["car", "bike", "bus"],
  ["bike", "train", "plane", "bus"]
), ["car", "train", "plane"]);
```

`diffArray(["apple", "orange"], ["apple", "orange", "banana", "grape"])`は`["banana", "grape"]`を返す必要があります。

```js
assert.deepEqual(diffArray(
  ["apple", "orange"],
  ["apple", "orange", "banana", "grape"]
), ["banana", "grape"]);
```

`diffArray([], ["apple", "banana"])`は`["apple", "banana"]`を返す必要があります。

```js
assert.deepEqual(diffArray(
  [],
  ["apple", "banana"]
), ["apple", "banana"]);
```

`diffArray(["apple", "banana"], [])`は`["apple", "banana"]`を返す必要があります。

```js
assert.deepEqual(diffArray(
  ["apple", "banana"],
  []
), ["apple", "banana"]);
```

`diffArray([], [])`は`[]`を返す必要があります。

```js
assert.deepEqual(diffArray(
  [], 
  []
), []);
```

# --seed--

## --seed-contents--

```js

```

# --solutions--

```js
function diffArray(arr1, arr2) {
  return arr1
    .filter(item => !arr2.includes(item))
    .concat(arr2.filter(item => !arr1.includes(item)));
}
```
