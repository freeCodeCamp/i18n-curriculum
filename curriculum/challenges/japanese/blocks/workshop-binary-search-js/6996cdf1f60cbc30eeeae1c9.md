---
id: 6996cdf1f60cbc30eeeae1c9
title: ステップ 12
challengeType: 1
dashedName: step-12
---

# --description--

`else if` の条件が true の場合、`low` 変数に `1` を加えて `mid` 変数の値を更新してください。

これは、`value` が `valueAtMiddle` より大きい場合、`value` は現在の検索エリアの右半分にあることを意味するため、リスト内の現在の検索エリアの右半分に検索範囲を拡張します。

# --hints--

`low` 変数を `mid + 1` に更新してください。

```js
assert.match(__helpers.removeJSComments(String(binarySearch)), /low\s*=\s*mid\s*\+\s*1/);
```

# --seed--

## --seed-contents--

```js
function binarySearch(searchList, value) {
  let pathToTarget = [];
  let low = 0;
  let high = searchList.length - 1;
  while (low <= high) {
    let mid = Math.floor((low + high) / 2);
    let valueAtMiddle = searchList[mid];
    pathToTarget.push(valueAtMiddle);

    if (value === valueAtMiddle) {
      return pathToTarget;
    } else if (value > valueAtMiddle) {
--fcc-editable-region--
        
--fcc-editable-region--     
    }
    
    break;
  }
  return [];
}

console.log(binarySearch([1, 2, 3, 4, 5], 3));
console.log(binarySearch([1, 2, 3, 4, 5, 9], 4));
```
