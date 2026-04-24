---
id: 5e4ce2bbac708cc68c1df25f
title: 文字の出現頻度
challengeType: 1
forumTopicId: 385263
dashedName: letter-frequency
---

# --description--

文字列が与えられたとき、各文字の出現頻度を計算してください。

すべての文字をカウントします。これには小文字・大文字のアルファベット、数字、空白、特殊文字、その他の異なる文字が含まれます。

# --instructions--

与えられた文字列の各文字の出現回数を数える関数を書いてください。

関数は、次の形式の要素を持つ2次元配列を返す必要があります：`['char', freq]`。文字は長さ1の文字列で、頻度はカウント数を示す数字です。

例えば、文字列 "ab" が与えられた場合、関数は`[['a', 1], ['b', 1]]`を返すべきです。

# --hints--

`letterFrequency`は関数であるべきです。

```js
assert(typeof letterFrequency == 'function');
```

`letterFrequency("Not all that Mrs. Bennet, however")`は配列を返すべきです。

```js
assert(Array.isArray(letterFrequency('Not all that Mrs. Bennet, however')));
```

`letterFrequency("Not all that Mrs. Bennet, however")`は`[[" ", 5], [",", 1], [".", 1], ["B", 1], ["M", 1], ["N", 1], ["a", 2], ["e", 4], ["h", 2], ["l", 2], ["n", 2], ["o", 2], ["r", 2], ["s", 1], ["t", 4], ["v", 1], ["w", 1]]`を返すべきです。

```js
assert.deepEqual(letterFrequency('Not all that Mrs. Bennet, however'), [
  [' ', 5],
  [',', 1],
  ['.', 1],
  ['B', 1],
  ['M', 1],
  ['N', 1],
  ['a', 2],
  ['e', 4],
  ['h', 2],
  ['l', 2],
  ['n', 2],
  ['o', 2],
  ['r', 2],
  ['s', 1],
  ['t', 4],
  ['v', 1],
  ['w', 1]
]);
```

`letterFrequency("daughters, could ask on the ")`は`[[" ", 5],[",", 1],["a", 2],["c", 1],["d", 2],["e", 2],["g", 1],["h", 2],["k", 1],["l", 1],["n", 1],["o", 2],["r", 1],["s", 2],["t", 2],["u", 2]]`を返すべきです。

```js
assert.deepEqual(letterFrequency('daughters, could ask on the '), [
  [' ', 5],
  [',', 1],
  ['a', 2],
  ['c', 1],
  ['d', 2],
  ['e', 2],
  ['g', 1],
  ['h', 2],
  ['k', 1],
  ['l', 1],
  ['n', 1],
  ['o', 2],
  ['r', 1],
  ['s', 2],
  ['t', 2],
  ['u', 2]
]);
```

`letterFrequency("husband any satisfactory description")`は`[[" ", 3], ["a", 4], ["b", 1], ["c", 2], ["d", 2], ["e", 1], ["f", 1], ["h", 1], ["i", 3], ["n", 3], ["o", 2], ["p", 1], ["r", 2], ["s", 4], ["t", 3], ["u", 1], ["y", 2]]`を返すべきです。

```js
assert.deepEqual(letterFrequency('husband any satisfactory description'), [
  [' ', 3],
  ['a', 4],
  ['b', 1],
  ['c', 2],
  ['d', 2],
  ['e', 1],
  ['f', 1],
  ['h', 1],
  ['i', 3],
  ['n', 3],
  ['o', 2],
  ['p', 1],
  ['r', 2],
  ['s', 4],
  ['t', 3],
  ['u', 1],
  ['y', 2]
]);
```

`letterFrequency("in various ways--with barefaced")`は`[[" ", 3], ["-", 2], ["a", 4], ["b", 1], ["c", 1], ["d", 1], ["e", 2], ["f", 1], ["h", 1], ["i", 3], ["n", 1], ["o", 1], ["r", 2], ["s", 2], ["t", 1], ["u", 1], ["v", 1], ["w", 2], ["y", 1]]`を返すべきです。

```js
assert.deepEqual(letterFrequency('in various ways--with barefaced'), [
  [' ', 3],
  ['-', 2],
  ['a', 4],
  ['b', 1],
  ['c', 1],
  ['d', 1],
  ['e', 2],
  ['f', 1],
  ['h', 1],
  ['i', 3],
  ['n', 1],
  ['o', 1],
  ['r', 2],
  ['s', 2],
  ['t', 1],
  ['u', 1],
  ['v', 1],
  ['w', 2],
  ['y', 1]
]);
```

`letterFrequency("distant surmises; but he eluded")`は`[[" ", 4], [";", 1], ["a", 1], ["b", 1], ["d", 3], ["e", 4], ["h", 1], ["i", 2], ["l", 1], ["m", 1], ["n", 1], ["r", 1], ["s", 4], ["t", 3], ["u", 3]]`を返すべきです。

```js
assert.deepEqual(letterFrequency('distant surmises; but he eluded'), [
  [' ', 4],
  [';', 1],
  ['a', 1],
  ['b', 1],
  ['d', 3],
  ['e', 4],
  ['h', 1],
  ['i', 2],
  ['l', 1],
  ['m', 1],
  ['n', 1],
  ['r', 1],
  ['s', 4],
  ['t', 3],
  ['u', 3]
]);
```

`letterFrequency("last obliged to accept the second-hand,")`は`[[" ", 5], [",", 1], ["-", 1], ["a", 3], ["b", 1], ["c", 3], ["d", 3], ["e", 4], ["g", 1], ["h", 2], ["i", 1], ["l", 2], ["n", 2], ["o", 3], ["p", 1], ["s", 2], ["t", 4]]`を返すべきです。

```js
assert.deepEqual(letterFrequency('last obliged to accept the second-hand,'), [
  [' ', 5],
  [',', 1],
  ['-', 1],
  ['a', 3],
  ['b', 1],
  ['c', 3],
  ['d', 3],
  ['e', 4],
  ['g', 1],
  ['h', 2],
  ['i', 1],
  ['l', 2],
  ['n', 2],
  ['o', 3],
  ['p', 1],
  ['s', 2],
  ['t', 4]
]);
```

# --seed--

## --seed-contents--

```js
function letterFrequency(txt) {

}
```

# --solutions--

```js
function letterFrequency(txt) {
    var cs = txt.split(''),
        i = cs.length,
        dct =  {},
        c = '',
        keys;

    while (i--) {
        c = cs[i];
        dct[c] = (dct[c] || 0) + 1;
    }

    keys = Object.keys(dct);
    keys.sort();
    return keys.map(function (c) { return [c, dct[c]]; });
}
```
