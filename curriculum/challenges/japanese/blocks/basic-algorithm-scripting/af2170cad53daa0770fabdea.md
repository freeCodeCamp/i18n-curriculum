---
id: af2170cad53daa0770fabdea
title: ミューテーション
challengeType: 1
forumTopicId: 16025
dashedName: mutations
---

# --description--

配列の最初の要素の文字列が、配列の2番目の要素の文字列のすべての文字を含んでいる場合、`true`を返してください。

たとえば、`["hello", "Hello"]`は`true`を返すべきです。なぜなら、2番目の文字列のすべての文字が1番目の文字列に含まれているからです（大文字小文字は無視します）。

引数`["hello", "hey"]`は`false`を返すべきです。なぜなら、文字列`hello`に`y`が含まれていないからです。

最後に、`["Alien", "line"]`は`true`を返すべきです。なぜなら、`line`のすべての文字が`Alien`に含まれているからです。

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
function mutation(arr) {
  return arr;
}

mutation(['hello', 'hey']);
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
