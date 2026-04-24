---
id: af2170cad53daa0770fabdea
title: ミューテーションアルゴリズムを実装する
challengeType: 26
dashedName: implement-the-mutations-algorithm
---

# --description--

**目的：** 以下のストーリーを満たし、すべてのテストに合格してラボを完了してください。

**ストーリー：**

1. 配列を引数に取る`mutation`という名前の関数を作成してください。
1. `mutation`は、配列の最初の要素の文字列が配列の2番目の要素の文字列のすべての文字を含んでいる場合は`true`を返し、そうでなければ`false`を返す必要があります。例えば：
    - `mutation(["hello", "Hello"])`は、2番目の文字列のすべての文字が最初の文字列に含まれているため（大文字小文字を無視して）、`true`を返すべきです。
    - `mutation(["hello", "hey"])`は、文字列`false`に`hello`が含まれていないため、`y`を返すべきです。
    - `mutation(["Alien", "line"])`は、`true`のすべての文字が`line`に含まれているため、`Alien`を返すべきです。

# --hints--

`mutation(["hello", "hey"])`は`false`を返すべきです。

```js
assert.isFalse(mutation(['hello', 'hey']));
```

`mutation(["hello", "Hello"])`は`true`を返すべきです。

```js
assert.isTrue(mutation(['hello', 'Hello']));
```

`mutation(["zyxwvutsrqponmlkjihgfedcba", "qrstu"])`は`true`を返すべきです。

```js
assert.isTrue(mutation(['zyxwvutsrqponmlkjihgfedcba', 'qrstu']));
```

`mutation(["Mary", "Army"])`は`true`を返すべきです。

```js
assert.isTrue(mutation(['Mary', 'Army']));
```

`mutation(["Mary", "Aarmy"])`は`true`を返すべきです。

```js
assert.isTrue(mutation(['Mary', 'Aarmy']));
```

`mutation(["Alien", "line"])`は`true`を返すべきです。

```js
assert.isTrue(mutation(['Alien', 'line']));
```

`mutation(["floor", "for"])`は`true`を返すべきです。

```js
assert.isTrue(mutation(['floor', 'for']));
```

`mutation(["hello", "neo"])`は`false`を返すべきです。

```js
assert.isFalse(mutation(['hello', 'neo']));
```

`mutation(["voodoo", "no"])`は`false`を返すべきです。

```js
assert.isFalse(mutation(['voodoo', 'no']));
```

`mutation(["ate", "date"])`は`false`を返すべきです。

```js
assert.isFalse(mutation(['ate', 'date']));
```

`mutation(["Tiger", "Zebra"])`は`false`を返すべきです。

```js
assert.isFalse(mutation(['Tiger', 'Zebra']));
```

`mutation(["Noel", "Ole"])`は`true`を返すべきです。

```js
assert.isTrue(mutation(['Noel', 'Ole']));
```

# --seed--

## --seed-contents--

```js
```

# --solutions--

```js
function mutation(arr) {
  let hash = Object.create(null);

  arr[0]
    .toLowerCase()
    .split('')
    .forEach(c => (hash[c] = true));

  return !arr[1]
    .toLowerCase()
    .split('')
    .filter(c => !hash[c]).length;
}

mutation(['hello', 'hey']);
```
