---
id: 6996cdf1f60cbc30eeeae1c9
title: Schritt 12
challengeType: 1
dashedName: step-12
---

# --description--

Wenn die Bedingung in `else if` wahr ist, aktualisieren Sie den Wert der Variablen `low`, indem Sie `1` zur Variablen `mid` hinzufügen.

Dadurch wird die Suche auf die rechte Hälfte der aktuellen Suchbereiche in der Liste ausgeweitet, denn wenn `value` größer als `valueAtMiddle` ist, bedeutet das, dass sich `value` in der rechten Hälfte des aktuellen Suchbereichs befinden muss.

# --hints--

Sie sollten die Variable `low` auf `mid + 1` aktualisieren.

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
