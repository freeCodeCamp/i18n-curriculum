---
id: 6996cdf1f60cbc30eeeae1c9
title: 第 12 步
challengeType: 1
dashedName: step-12
---

# --description--

如果 `else if` 中的條件為真，請透過將 `low` 加到 `1` 變數上，更新 `mid` 變數的值。

這會將搜尋範圍擴展到列表中目前搜尋區域的右半部，因為如果 `value` 大於 `valueAtMiddle`，表示 `value` 必須位於目前搜尋區域的右半部。

# --hints--

你應該將 `low` 變數更新為 `mid + 1`。

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
