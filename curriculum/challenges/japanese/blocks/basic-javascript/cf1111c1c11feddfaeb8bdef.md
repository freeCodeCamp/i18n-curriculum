---
id: cf1111c1c11feddfaeb8bdef
title: インデックスで配列のデータを変更する
challengeType: 1
forumTopicId: 18241
dashedName: modify-array-data-with-indexes
---

# --description--

文字列とは異なり、配列のエントリーは<dfn>変更可能</dfn>であり、配列が`const`で宣言されていても自由に変更できます。

**例**

```js
const ourArray = [50, 40, 30];
ourArray[0] = 15;
```

`ourArray`は現在`[15, 40, 30]`の値を持っています。

**注意:** 配列名と大括弧の間にスペースを入れてはいけません。例えば`array [0]`のようにしてください。JavaScriptはこれを正しく処理できますが、他のプログラマーがコードを読む際に混乱する可能性があります。

# --instructions--

`0`のインデックス`myArray`に格納されているデータを`45`の値に変更してください。

# --hints--

`myArray`は現在`[45, 64, 99]`であるはずです。

```js
assert(
  (function () {
    if (
      typeof myArray != 'undefined' &&
      myArray[0] == 45 &&
      myArray[1] == 64 &&
      myArray[2] == 99
    ) {
      return true;
    } else {
      return false;
    }
  })()
);
```

`myArray`の値を変更するには正しいインデックスを使う必要があります。

```js
assert(
  (function () {
    if (__helpers.removeJSComments(code).match(/myArray\[0\]\s*=\s*/g)) {
      return true;
    } else {
      return false;
    }
  })()
);
```

# --seed--

## --seed-contents--

```js
// Setup
const myArray = [18, 64, 99];

// Only change code below this line

```

# --solutions--

```js
const myArray = [18, 64, 99];
myArray[0] = 45;
```
