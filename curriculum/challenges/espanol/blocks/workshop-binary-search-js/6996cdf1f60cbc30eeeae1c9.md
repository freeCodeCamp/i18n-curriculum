---
id: 6996cdf1f60cbc30eeeae1c9
title: Paso 12
challengeType: 1
dashedName: step-12
---

# --description--

Si la condición en el `else if` es verdadera, actualiza el valor de la variable `low` sumando `1` a la variable `mid`.

Esto extenderá la búsqueda a la mitad derecha de las áreas de búsqueda actuales en la lista, porque si `value` es mayor que `valueAtMiddle`, significa que `value` debe estar en la mitad derecha del área de búsqueda actual.

# --hints--

Debes actualizar la variable `low` a `mid + 1`.

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
