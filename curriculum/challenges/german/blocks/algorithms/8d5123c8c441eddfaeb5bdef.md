---
id: 8d5123c8c441eddfaeb5bdef
title: Bubble-Sort implementieren
challengeType: 1
forumTopicId: 301612
dashedName: implement-bubble-sort
---

# --description--

Dies ist die erste von mehreren Aufgaben zu Sortieralgorithmen. Gegeben ist ein Array mit unsortierten Elementen, und wir möchten ein sortiertes Array zurückgeben können. Wir werden verschiedene Methoden kennenlernen, um dies zu erreichen, und einige Vor- und Nachteile der unterschiedlichen Ansätze verstehen. Obwohl die meisten modernen Programmiersprachen eingebaute Sortiermethoden für solche Operationen haben, ist es dennoch wichtig, einige der grundlegenden gängigen Verfahren zu verstehen und zu lernen, wie man sie implementieren kann.

Hier sehen wir den Bubble-Sort-Algorithmus. Die Bubble-Sort-Methode beginnt am Anfang eines unsortierten Arrays und „blubbert“ unsortierte Werte zum Ende hinauf, indem sie das Array so lange durchläuft, bis es vollständig sortiert ist. Dabei vergleicht sie benachbarte Elemente und tauscht sie, wenn sie in der falschen Reihenfolge sind. Die Methode durchläuft das Array so lange, bis keine Vertauschungen mehr stattfinden, woraufhin das Array sortiert ist.

Diese Methode erfordert mehrere Durchläufe durch das Array und hat im Durchschnitt und im schlimmsten Fall eine quadratische Zeitkomplexität. Obwohl sie einfach ist, ist sie in den meisten Situationen meist unpraktisch.

**Anleitung:** Schreiben Sie eine Funktion `bubbleSort`, die ein Array ganzer Zahlen als Eingabe erhält und ein Array dieser Zahlen in aufsteigender Reihenfolge zurückgibt.

# --hints--

`bubbleSort` sollte eine Funktion sein.

```js
assert.isFunction(bubbleSort);
```

`bubbleSort` sollte ein sortiertes Array (aufsteigend) zurückgeben.

```js
function isSorted(a){
  for(let i = 0; i < a.length - 1; i++)
    if(a[i] > a[i + 1])
      return false;
  return true;
}
assert.isTrue(
  isSorted(
    bubbleSort([
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

`bubbleSort([1,4,2,8,345,123,43,32,5643,63,123,43,2,55,1,234,92])` sollte ein Array zurückgeben, das bis auf die Reihenfolge unverändert ist.

```js
assert.sameMembers(
  bubbleSort([
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

`bubbleSort` sollte die eingebaute `.sort()`-Methode nicht verwenden.

```js
function isBuiltInSortUsed(){
  let sortUsed = false;
  const temp = Array.prototype.sort;
  Array.prototype.sort = () => sortUsed = true;
  try {
    bubbleSort([0, 1]);
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
function bubbleSort(array) {
  // Only change code below this line
  return array;
  // Only change code above this line
}
```

# --solutions--

```js
function bubbleSort(array) {
  for (let i = 0; i < array.length; i++) {
    let swapped = false;
    for (let j = 1; j < array.length; j++) {
      if (array[j - 1] > array[j]) {
        let temp = array[j-1];
        array[j-1] =  array[j];
        array[j] = temp;
        swapped = true;
      }
    }
    if (swapped === false) {
      break;
    }
  }
  return array;
}
```
