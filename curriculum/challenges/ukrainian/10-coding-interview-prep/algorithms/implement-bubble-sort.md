---
id: 8d5123c8c441eddfaeb5bdef
title: Реалізуйте сортування бульбашкою
challengeType: 1
forumTopicId: 301612
dashedName: implement-bubble-sort
---

# --description--

This is the first of several challenges on sorting algorithms. Given an array of unsorted items, we want to be able to return a sorted array. We will see several different methods to do this and learn some tradeoffs between these different approaches. While most modern languages have built-in sorting methods for operations like this, it is still important to understand some of the common basic approaches and learn how they can be implemented.

Зараз ми розглянемо сортування бульбашкою. Метод сортування бульбашкою починається на початку несортованого масиву та перекидає несортовані значення в кінець, повторюючи масив, доки він не буде повністю відсортований. Це робиться шляхом порівняння суміжних елементів і їх заміни місцями, якщо вони не відповідають критеріям. Метод продовжує цикл, поки не відбудеться заміна місць та масив буде відсортовано.

Цей метод вимагає декількох ітерацій над масивом, а в типових та найгірших ситуаціях має квадратичну часову складність. Простими словами, цей метод непрактичний у більшості випадків.

**Інструкція:** напишіть функцію `bubbleSort`, яка приймає масив цілих чисел як вхідні дані та повертає масив цих цілих чисел у відсортованому порядку (від найменшого до найбільшого).

# --hints--

`bubbleSort` має бути функцією.

```js
assert.isFunction(bubbleSort);
```

`bubbleSort` має повернути впорядкований масив (від найменшого до найбільшого).

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

`bubbleSort([1,4,2,8,345,123,43,32,5643,63,123,43,2,55,1,234,92])` має повернути масив без змін, окрім послідовності.

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

`bubbleSort` не має використовувати вбудований метод `.sort()`.

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
