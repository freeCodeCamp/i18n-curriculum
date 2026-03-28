---
id: 6996cdf1f60cbc30eeeae1c9
title: 第 12 步
challengeType: 1
dashedName: step-12
---

# --description--

如果 `else if` 中的条件为真，通过将 `low` 添加到 `1` 变量来更新 `mid` 变量的值。

这将把查找范围扩展到列表中当前查找区域的右半部分，因为如果 `value` 大于 `valueAtMiddle`，这意味着 `value` 必须在当前查找区域的右半部分。

# --hints--

你应该将 `low` 变量更新为 `mid + 1`。

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
