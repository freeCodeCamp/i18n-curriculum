---
id: 587d825c367417b2b2512c8f
title: Реалізуйте сортування злиттям
challengeType: 1
forumTopicId: 301614
dashedName: implement-merge-sort
---

# --description--

Another common intermediate sorting algorithm is merge sort. Like quick sort, merge sort also uses a divide-and-conquer, recursive methodology to sort an array. It takes advantage of the fact that it is relatively easy to sort two arrays as long as each is sorted in the first place. But we'll start with only one array as input, so how do we get to two sorted arrays from that? Well, we can recursively divide the original input in two until we reach the base case of an array with one item. A single-item array is naturally sorted, so then we can start combining. This combination will unwind the recursive calls that split the original array, eventually producing a final sorted array of all the elements. The steps of merge sort, then, are:

**1)** Рекурсивно розділити вхідний масив навпіл, поки підмасив лише з одним елементом не буде сформовано.

**2)** Об’єднати кожен відсортований підмасив разом, щоб створити кінцевий відсортований масив.

Сортування злиттям є ефективним методом сортування із часовою складністю *O(nlog(n))*. Цей алгоритм популярний, оскільки він є продуктивним та відносно простим для реалізації.

До речі, це буде останній алгоритм сортування, який ми висвітлюємо тут. Однак пізніше в розділі про деревоподібні структури даних ми опишемо пірамідальне сортування — ще один ефективний метод сортування, який вимагає бінарної купи у своїй реалізації.

**Інструкція:** напишіть функцію `mergeSort`, яка приймає масив цілих чисел як вхідні дані та повертає масив цих цілих чисел у відсортованому порядку (від найменшого до найбільшого). Хороший спосіб реалізувати це — написати одну функцію (наприклад, `merge`), яка відповідає за злиття двох відсортованих масивів, та ще одну функцію (наприклад, `mergeSort`), яка відповідає за рекурсію, що виробляє одноелементні масиви. Успіхів!

# --hints--

`mergeSort` має бути функцією.

```js
assert.isFunction(mergeSort);
```

`mergeSort` має повернути впорядкований масив (від найменшого до найбільшого).

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

`mergeSort([1,4,2,8,345,123,43,32,5643,63,123,43,2,55,1,234,92])` має повернути масив без змін, окрім послідовності.

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

`mergeSort` не має використовувати вбудований метод `.sort()`.

```js
function isBuiltInSortUsed(){
  let sortUsed = false;
  const temp = Array.prototype.sort;
  Array.prototype.sort = () => sortUsed = true;
  try {
    mergeSort([0, 1]);
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
