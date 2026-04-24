---
id: 5d712346c441eddfaeb5bdef
title: すべての数字にマッチさせる
challengeType: 1
forumTopicId: 18181
dashedName: match-all-numbers
---

# --description--

英数字のような一般的な文字列パターンのショートカットを学びました。もう一つのよくあるパターンは、数字だけを探すことです。

数字文字を探すショートカットは`\d`で、小文字の`d`です。これは、0から9までの任意の数字1文字を探す文字クラス`[0-9]`と同じです。

# --instructions--

ショートカット文字クラス`\d`を使って、映画タイトルに含まれる数字の数を数えてください。書き出された数字（6の代わりに「six」など）はカウントしません。

# --hints--

数字文字にマッチするショートカット文字を使う必要があります

```js
assert(/\\d/.test(numRegex.source));
```

グローバルフラグを使う必要があります。

```js
assert(numRegex.global);
```

文字列`9`の中で1つの数字を見つける必要があります。

```js
assert('9'.match(numRegex).length == 1);
```

文字列`Catch 22`の中で2つの数字を見つける必要があります。

```js
assert('Catch 22'.match(numRegex).length == 2);
```

文字列`101 Dalmatians`の中で3つの数字を見つける必要があります。

```js
assert('101 Dalmatians'.match(numRegex).length == 3);
```

文字列`One, Two, Three`の中で数字が見つからない必要があります。

```js
assert('One, Two, Three'.match(numRegex) == null);
```

文字列`21 Jump Street`の中で2つの数字を見つける必要があります。

```js
assert('21 Jump Street'.match(numRegex).length == 2);
```

文字列`2001: A Space Odyssey`の中で4つの数字を見つける必要があります。

```js
assert('2001: A Space Odyssey'.match(numRegex).length == 4);
```

# --seed--

## --seed-contents--

```js
let movieName = "2001: A Space Odyssey";
let numRegex = /change/; // Change this line
let result = movieName.match(numRegex).length;
```

# --solutions--

```js
let movieName = "2001: A Space Odyssey";
let numRegex = /\d/g; // Change this line
let result = movieName.match(numRegex).length;
```
