---
id: 587d825a367417b2b2512c89
title: Implementiere einen Quicksort-Algorithmus
challengeType: 1
forumTopicId: 301615
dashedName: implement-quick-sort
---

# --description--

Here we will move on to an intermediate sorting algorithm: quick sort. Quick sort is an efficient, recursive divide-and-conquer approach to sorting an array. In this method, a pivot value is chosen in the original array. The array is then partitioned into two subarrays of values less than and greater than the pivot value. We then combine the result of recursively calling the quick sort algorithm on both sub-arrays. This continues until the base case of an empty or single-item array is reached, which we return. The unwinding of the recursive calls return us the sorted array.

Quicksort ist eine sehr effiziente Sortiermethode, die im Durchschnitt *O(nlog(n))* ausführt. Außerdem ist es einfach zu implementieren. Diese Eigenschaften machen Quicksort zu einer beliebten und nützlichen Sortiermethode.

**Anleitung:** Schreibe eine Funktion `quickSort`, die ein Array mit ganzen Zahlen als Eingabe verwendet und ein Array mit diesen ganzen Zahlen in sortierter Reihenfolge vom kleinsten zum größten Wert zurückgibt. Die Wahl des Pivot-Werts ist zwar wichtig, aber für unsere Zwecke ist jeder Pivot-Wert geeignet. Der Einfachkeit halber, kann das erste oder das letzte Element benutzt werden.

# --hints--

`quickSort` sollte eine Funktion sein.

```js
assert(typeof quickSort == 'function');
```

`quickSort` sollte ein sortieres Array zurückgeben (vom kleinsten zum größten)

```js
function isSorted(a){
  for(let i = 0; i < a.length - 1; i++)
    if(a[i] > a[i + 1])
      return false;
  return true;
}
assert.isTrue(
  isSorted(
    quickSort([
      1,
      4,
      2,
      8,
      345,
      123,
      43,
      32,
      5643,
      63,
      123,
      43,
      2,
      55,
      1,
      234,
      92
    ])
  )
);
```

`quickSort([1,4,2,8,345,123,43,32,5643,63,123,43,2,55,1,234,92])` sollte ein Array zurückgeben, das bis auf die Reihenfolge unverändert ist.

```js
assert.sameMembers(
  quickSort([
    1,
    4,
    2,
    8,
    345,
    123,
    43,
    32,
    5643,
    63,
    123,
    43,
    2,
    55,
    1,
    234,
    92
  ]),
  [1, 4, 2, 8, 345, 123, 43, 32, 5643, 63, 123, 43, 2, 55, 1, 234, 92]
);
```

`quickSort` sollte nicht die eingebaute Methode `.sort()` verwenden.

```js
function isBuiltInSortUsed(){
  let sortUsed = false;
  const temp = Array.prototype.sort;
  Array.prototype.sort = () => sortUsed = true;
  try {
    quickSort([0, 1]);
  } finally {
    Array.prototype.sort = temp;
  }
  return sortUsed;
}
assert.isFalse(isBuiltInSortUsed());
```

# --seed--

## --seed-contents--

```js
function quickSort(array) {
  // Only change code below this line
  return array;
  // Only change code above this line
}
```

# --solutions--

```js
function quickSort(array) {
  if (array.length === 0) {
    return [];
  } else {
    const pivotValue = array[0];

    // Sort elements into three piles
    let lesser = [];
    let equal = [];
    let greater = [];
    for (let e of array) {
      if (e < pivotValue) {
        lesser.push(e);
      } else if (e > pivotValue) {
        greater.push(e);
      } else {
        equal.push(e);
      }
    }

    return [...quickSort(lesser), ...equal, ...quickSort(greater)];
  }
}
```
