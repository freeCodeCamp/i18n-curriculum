---
id: 6996cdf1f60cbc30eeeae1c9
title: الخطوة 12
challengeType: 1
dashedName: step-12
---

# --description--

إذا كان الشرط في `else if` صحيحًا، حدّث قيمة المتغير `low` بإضافة `1` إلى المتغير `mid`.

سيُوسّع هذا البحث إلى النصف الأيمن من مناطق البحث الحالية في القائمة، لأن إذا كان `value` أكبر من `valueAtMiddle`، فهذا يعني أن `value` يجب أن يكون في النصف الأيمن من منطقة البحث الحالية.

# --hints--

يجب تحديث المتغير `low` إلى `mid + 1`.

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
