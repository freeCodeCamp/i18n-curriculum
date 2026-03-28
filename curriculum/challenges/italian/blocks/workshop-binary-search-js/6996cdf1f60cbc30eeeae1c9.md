---
id: 6996cdf1f60cbc30eeeae1c9
title: Passaggio 12
challengeType: 1
dashedName: step-12
---

# --description--

Se la condizione in `else if` è vera, aggiorna il valore della variabile `low` aggiungendo `1` alla variabile `mid`.

Questo estenderà la ricerca alla metà destra delle aree di ricerca correnti nella lista, perché se `value` è maggiore di `valueAtMiddle`, significa che `value` deve trovarsi nella metà destra dell’area di ricerca corrente.

# --hints--

Dovresti aggiornare la variabile `low` a `mid + 1`.

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
