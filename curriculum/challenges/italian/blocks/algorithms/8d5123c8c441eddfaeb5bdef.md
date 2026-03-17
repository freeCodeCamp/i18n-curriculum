---
id: 8d5123c8c441eddfaeb5bdef
title: implementare il bubble sort
challengeType: 1
forumTopicId: 301612
dashedName: implement-bubble-sort
---

# --description--

Questa è la prima di diverse sfide sugli algoritmi di ordinamento. Dato un array di elementi non ordinati, vogliamo essere in grado di restituire un array ordinato. Vedremo diversi metodi per farlo e impareremo alcuni compromessi tra questi diversi approcci. Anche se la maggior parte dei linguaggi moderni ha metodi di ordinamento integrati per operazioni come questa, è comunque importante capire alcuni degli approcci di base più comuni e imparare come possono essere implementati.

Qui vedremo il bubble sort. Il metodo bubble sort inizia dall'inizio di un array non ordinato e "fa risalire" i valori non ordinati verso la fine, iterando attraverso l'array finché non è completamente ordinato. Lo fa confrontando elementi adiacenti e scambiandoli se sono fuori ordine. Il metodo continua a iterare attraverso l'array finché non si verificano più scambi, a quel punto l'array è ordinato.

Questo metodo richiede più iterazioni sull'array e per i casi medi e peggiori ha una complessità temporale quadratica. Pur essendo semplice, di solito è poco pratico nella maggior parte delle situazioni.

**Istruzioni:** Scrivi una funzione `bubbleSort` che prende un array di numeri interi come input e restituisce un array di questi numeri ordinato dal più piccolo al più grande.

# --hints--

`bubbleSort` dovrebbe essere una funzione.

```js
assert.isFunction(bubbleSort);
```

`bubbleSort` dovrebbe restituire un array ordinato (dal più piccolo al più grande).

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

`bubbleSort([1,4,2,8,345,123,43,32,5643,63,123,43,2,55,1,234,92])` dovrebbe restituire un array che non cambia se non nell'ordine.

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

`bubbleSort` non dovrebbe usare il metodo `.sort()` integrato.

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
