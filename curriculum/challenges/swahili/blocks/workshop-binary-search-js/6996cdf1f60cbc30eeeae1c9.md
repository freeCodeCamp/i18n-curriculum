---
id: 6996cdf1f60cbc30eeeae1c9
title: Hatua 12
challengeType: 1
dashedName: step-12
---

# --description--

Ikiwa sharti katika `else if` ni kweli, sahihisha thamani ya kigezo `low` kwa kuongeza `1` kwenye kigezo `mid`.

Hii itaongeza utafutaji upande wa kulia wa maeneo ya sasa ya utafutaji katika orodha, kwa sababu ikiwa `value` ni kubwa kuliko `valueAtMiddle`, ina maana `value` lazima iwe upande wa kulia wa eneo la sasa la utafutaji.

# --hints--

Unapaswa kusahihisha kigezo `low` kuwa `mid + 1`.

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
