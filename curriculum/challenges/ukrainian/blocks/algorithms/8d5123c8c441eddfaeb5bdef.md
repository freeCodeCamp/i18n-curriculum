---
id: 8d5123c8c441eddfaeb5bdef
title: реалізувати сортування бульбашкою
challengeType: 1
forumTopicId: 301612
dashedName: implement-bubble-sort
---

# --description--

Це перше з кількох завдань зі сортувальних алгоритмів. Маючи масив несортованих елементів, ми хочемо мати можливість повернути відсортований масив. Ми розглянемо кілька різних методів для цього і дізнаємося про деякі компроміси між цими підходами. Хоча більшість сучасних мов мають вбудовані методи сортування для таких операцій, все одно важливо розуміти деякі загальні базові підходи і навчитися, як їх можна реалізувати.

Тут ми розглянемо сортування бульбашкою. Метод сортування бульбашкою починається з початку несортованого масиву і «виштовхує» несортовані значення до кінця, проходячи масив ітеративно, доки він повністю не відсортується. Це відбувається шляхом порівняння сусідніх елементів і обміну їх місцями, якщо вони стоять у неправильному порядку. Метод продовжує проходити масив у циклі, доки не відбудеться жодного обміну, після чого масив вважається відсортованим.

Цей метод вимагає кількох ітерацій через масив і для середніх та найгірших випадків має квадратичну часову складність. Хоча він простий, зазвичай він є непрактичним у більшості ситуацій.

**Інструкції:** Напишіть функцію `bubbleSort`, яка приймає масив цілих чисел як вхідні дані і повертає масив цих чисел, відсортований за зростанням.

# --hints--

`bubbleSort` має бути функцією.

```js
assert.isFunction(bubbleSort);
```

`bubbleSort` має повертати відсортований масив (від найменшого до найбільшого).

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

`bubbleSort([1,4,2,8,345,123,43,32,5643,63,123,43,2,55,1,234,92])` має повертати масив, який не змінений, окрім порядку елементів.

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
