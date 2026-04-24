---
id: 8d5123c8c441eddfaeb5bdef
title: バブルソートを実装する
challengeType: 1
forumTopicId: 301612
dashedName: implement-bubble-sort
---

# --description--

これはソートアルゴリズムに関するいくつかのチャレンジの最初のものです。ソートされていない配列が与えられたとき、ソートされた配列を返せるようにしたいです。ここではいくつかの異なる方法を見て、それぞれのアプローチのトレードオフについて学びます。ほとんどの現代的な言語にはこのような操作のための組み込みのソートメソッドがありますが、一般的な基本的な方法を理解し、それらがどのように実装できるかを学ぶことは依然として重要です。

ここではバブルソートを見ていきます。バブルソートはソートされていない配列の先頭から始まり、隣接する要素を比較して順序が逆なら入れ替えながら、ソートされていない値を配列の末尾に「泡のように浮かび上がらせる」方法です。配列を完全にソートするまで繰り返し処理を行います。入れ替えが一度も起こらなくなった時点で配列はソート済みとなります。

この方法は配列を複数回繰り返し処理する必要があり、平均および最悪の場合の計算量は二次時間です。単純ですが、ほとんどの状況では実用的ではありません。

**指示:** 整数の配列を入力として受け取り、最小から最大の順にソートされた整数の配列を返す関数`bubbleSort`を作成してください。

# --hints--

`bubbleSort`は関数である必要があります。

```js
assert.isFunction(bubbleSort);
```

`bubbleSort`はソートされた配列（最小から最大）を返す必要があります。

```js
function isSorted(a){
  for(let i = 0; i < a.length - 1; i++)
    if(a[i] > a[i + 1])
      return false;
  return true;
}
assert.isTrue(
  isSorted(
    bubbleSort([
      1,
      4,
      2,
      8,
      345,
      123,
      43,
      32,
      5643,
      63,
      123,
      43,
      2,
      55,
      1,
      234,
      92
    ])
  )
);
```

`bubbleSort([1,4,2,8,345,123,43,32,5643,63,123,43,2,55,1,234,92])`は順序以外は変更されていない配列を返す必要があります。

```js
assert.sameMembers(
  bubbleSort([
    1,
    4,
    2,
    8,
    345,
    123,
    43,
    32,
    5643,
    63,
    123,
    43,
    2,
    55,
    1,
    234,
    92
  ]),
  [1, 4, 2, 8, 345, 123, 43, 32, 5643, 63, 123, 43, 2, 55, 1, 234, 92]
);
```

`bubbleSort`は組み込みの`.sort()`メソッドを使わないでください。

```js
function isBuiltInSortUsed(){
  let sortUsed = false;
  const temp = Array.prototype.sort;
  Array.prototype.sort = () => sortUsed = true;
  try {
    bubbleSort([0, 1]);
  } finally {
    Array.prototype.sort = temp;
  }
  return sortUsed;
}
assert.isFalse(isBuiltInSortUsed());
```

# --seed--

## --seed-contents--

```js
function bubbleSort(array) {
  // Only change code below this line
  return array;
  // Only change code above this line
}
```

# --solutions--

```js
function bubbleSort(array) {
  for (let i = 0; i < array.length; i++) {
    let swapped = false;
    for (let j = 1; j < array.length; j++) {
      if (array[j - 1] > array[j]) {
        let temp = array[j-1];
        array[j-1] =  array[j];
        array[j] = temp;
        swapped = true;
      }
    }
    if (swapped === false) {
      break;
    }
  }
  return array;
}
```
