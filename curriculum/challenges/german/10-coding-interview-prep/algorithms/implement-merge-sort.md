---
id: 587d825c367417b2b2512c8f
title: Implementiere einen Mergesort-Algorithmus
challengeType: 1
forumTopicId: 301614
dashedName: implement-merge-sort
---

# --description--

Another common intermediate sorting algorithm is merge sort. Like quick sort, merge sort also uses a divide-and-conquer, recursive methodology to sort an array. It takes advantage of the fact that it is relatively easy to sort two arrays as long as each is sorted in the first place. But we'll start with only one array as input, so how do we get to two sorted arrays from that? Well, we can recursively divide the original input in two until we reach the base case of an array with one item. A single-item array is naturally sorted, so then we can start combining. This combination will unwind the recursive calls that split the original array, eventually producing a final sorted array of all the elements. The steps of merge sort, then, are:

**1)** Teile das Eingabe-Array rekursiv in die Hälfte, bis ein Subarray mit nur einem Element entsteht.

**2)** Führe jedes sortierte Subarray zusammen, um das endgültig sortierte Array zu erhalten.

Mergesort ist eine effektive Sortiermethode mit einer Zeitkomplexität von *O(nlog(n))*. Dieser Algorithmus ist beliebt, weil er leistungsfähig und relativ einfach zu implementieren ist.

Dies ist übrigens der letzte Sortieralgorithmus mit dem wir uns hier beschäftigen werden. Später werden wir im Abschnitt Baumdatenstrukturen Heapsort beschreiben - eine weitere effiziente Sortiermethode, die einen binären Heap für die Implementierung benötigt.

**Anleitung:** Schreibe eine Funktion `mergeSort`, die ein Array mit ganzen Zahlen als Eingabe verwendet und ein Array mit diesen ganzen Zahlen in sortierter Reihenfolge vom kleinsten zum größten Wert zurückgibt. Eine gute Möglichkeit, dies zu implementieren, besteht darin, eine Funktion zu schreiben, zum Beispiel `merge`, die für das Zusammenführen von zwei sortierten Arrays zuständig ist, und eine weitere Funktion `mergeSort`, die für die Rekursion verantwortlich ist, die Arrays mit einzelnen Elementen erzeugt, die in Merge eingefügt werden. Viel Glück!

# --hints--

`mergeSort` sollte eine Funktion sein.

```js
assert.isFunction(mergeSort);
```

`mergeSort` sollte ein sortiertes Array zurückgeben (vom kleinsten zum größten).

```js
function isSorted(a){
  for(let i = 0; i < a.length - 1; i++)
    if(a[i] > a[i + 1])
      return false;
  return true;
}

assert.isTrue(
  isSorted(
    mergeSort([
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

`mergeSort([1,4,2,8,345,123,43,32,5643,63,123,43,2,55,1,234,92])` sollte ein Array zurückgeben, das bis auf die Reihenfolge unverändert ist.

```js
assert.sameMembers(
  mergeSort([
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

`mergeSort` sollte nicht die eingebaute Methode `.sort()` verwenden.

```js
function isBuiltInSortUsed(){
  let sortUsed = false;
  Array.prototype.sort = () => sortUsed = true;
  mergeSort([0, 1]);
  return sortUsed;
}
assert.isFalse(isBuiltInSortUsed());
```

# --seed--

## --seed-contents--

```js
function mergeSort(array) {
  // Only change code below this line
  return array;
  // Only change code above this line
}
```

# --solutions--

```js
function mergeSort(array) {
  if (array.length === 1) {
    return array;
  } else {
    const splitIndex = Math.floor(array.length / 2);
    return merge(
      mergeSort(array.slice(0, splitIndex)),
      mergeSort(array.slice(splitIndex))
    );
  }

  // Merge two sorted arrays
  function merge(array1, array2) {
    let merged = [];
    while (array1.length && array2.length) {
      if (array1[0] < array2[0]) {
        merged.push(array1.shift());
      } else if (array1[0] > array2[0]) {
        merged.push(array2.shift());
      } else {
        merged.push(array1.shift(), array2.shift());
      }
    }

    // After looping ends, one array is empty, and other array contains only
    // values greater than all values in `merged`
    return [...merged, ...array1, ...array2];
  }
}

mergeSort([1, 4, 2, 8, 345, 123, 43, 32, 5643, 63, 123, 43, 2, 55, 1, 234, 92]);
```
