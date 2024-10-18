---
id: 5a23c84252665b21eecc8013
title: ソートアルゴリズム / ストランドソート
challengeType: 1
forumTopicId: 302319
dashedName: sorting-algorithmsstrand-sort
---

# --description--

**ストランドソート**は、ソートされたサブセットを作成し、それらを結合して最終の結果を作成します。

`unsortedArray = [3, 1, 4, 2]` を考えてみましょう。 最初の項目 `3` を選択し、別の配列にコピーします。 この項目の後にある、より大きな項目を探します。 より大きな項目 (この例では `4`) が見つかったら、それを別の配列 `[3, 4]` にコピーし、次の項目をこの新しい値 `4` と比較します。

配列の最後に達したら、コピーした項目 `[3, 4]` を削除し、`unsortedArray` に残っている最初の項目 (この例では `1`) から再び始めます。

このプロセスの結果、2 つのソートされた配列 `[3, 4]` と `[1, 2]` が得られます。 これらの 2 つの配列を結合して `strandSortedArray` を作成します。

```js
const unsortedArray = [3, 1, 4, 2];
const strandsortedArray = [1, 2, 3, 4];
```

**ストランドソート**を使用して配列をソートする関数を記述してください。 この関数はソートされた配列を返す必要があります。


# --hints--

`strandSort` は関数とします。

```js
assert(typeof strandSort == 'function');
```

`strandSort([25, 32, 12, 7, 20])` は配列を返す必要があります。

```js
assert(Array.isArray(strandSort([25, 32, 12, 7, 20])));
```

`strandSort([25, 32, 12, 7, 20])` は `[7, 12, 20, 25, 32]` を返す必要があります。

```js
assert.deepEqual(strandSort([25, 32, 12, 7, 20]), [7, 12, 20, 25, 32]);
```

`strandSort([38, 45, 35, 8, 13])` は `[8, 13, 35, 38, 45]` を返す必要があります。

```js
assert.deepEqual(strandSort([38, 45, 35, 8, 13]), [8, 13, 35, 38, 45]);
```

`strandSort([43, 36, 20, 34, 24])` は `[20, 24, 34, 36, 43]` を返す必要があります。

```js
assert.deepEqual(strandSort([43, 36, 20, 34, 24]), [20, 24, 34, 36, 43]);
```

`strandSort([12, 33, 26, 18, 1, 16, 38])` は `[1, 12, 16, 18, 26, 33, 38]` を返す必要があります。

```js
assert.deepEqual(strandSort([12, 33, 26, 18, 1, 16, 38]), [
  1,
  12,
  16,
  18,
  26,
  33,
  38
]);
```

`strandSort([3, 39, 48, 16, 1, 4, 29])` は `[1, 3, 4, 16, 29, 39, 48]` を返す必要があります。

```js
assert.deepEqual(strandSort([3, 39, 48, 16, 1, 4, 29]), [
  1,
  3,
  4,
  16,
  29,
  39,
  48
]);
```

# --seed--

## --seed-contents--

```js
function strandSort(list) {

}
```

# --solutions--

```js
function strandSort(list) {
  function merge(left, right) {
    var result = [];
    while (left.length != 0 && right.length != 0) {
      if (left[0] <= right[0]) result.push(left.shift());
      else result.push(right.shift());
    }
    result.push.apply(result, left);
    result.push.apply(result, right);
    return result;
  }

  if (list.length <= 1) return list;
  var result = [];
  while (list.length > 0) {
    var sorted = [];
    sorted.push(list.shift());
    var len = list.length;
    for (var i = 1; i < len; i++) {
      var elem = list[i];
      if (sorted[i - 1] <= elem) {
        sorted.push(elem);
        sorted.splice(i, 1);
      }
    }

    result = merge(result, sorted);
  }
  return result;
}
```
