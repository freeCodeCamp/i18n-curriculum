---
id: 6996cdf1f60cbc30eeeae1c9
title: Крок 12
challengeType: 1
dashedName: step-12
---

# --description--

Якщо умова в `else if` є істинною, оновіть значення змінної `low`, додавши `1` до змінної `mid`.

Це розширить пошук до правої половини поточних областей пошуку в списку, тому що якщо `value` більше за `valueAtMiddle`, це означає, що `value` має бути в правій половині поточної області пошуку.

# --hints--

Ви повинні оновити змінну `low` до `mid + 1`.

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
