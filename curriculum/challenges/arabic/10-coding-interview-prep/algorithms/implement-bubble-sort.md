---
id: 8d5123c8c441eddfaeb5bdef
title: تنفيذ ترتيب الفقاعات
challengeType: 1
forumTopicId: 301612
dashedName: implement-bubble-sort
---

# --description--

This is the first of several challenges on sorting algorithms. Given an array of unsorted items, we want to be able to return a sorted array. We will see several different methods to do this and learn some tradeoffs between these different approaches. While most modern languages have built-in sorting methods for operations like this, it is still important to understand some of the common basic approaches and learn how they can be implemented.

هنا سنرى خوارزمية ترتيب الفقاعات. ترتيب الفقاعات يبدأ من أول عنصر في المصفوفة غير المرتبة وينقل القيم غير المرتبة وكأنها فقاعات منبثقة باتجاه نهاية المصفوفة, وتتكرر الخطوات على عناصر المصفوفة حتى تترتب تماما. يحدث هذا عن طريق مقارنة العناصر المتجاورة والمبادلة بينهما في حالة كان ترتيبها خاطئا. تستمر الدالة في التكرار عبر المصفوفة حتى لا تحدث أي تبادلات بين العناصر, فعند هذه النقطة تعدّ المصفوفة قد ترتبت.

تتطلب هذه الدالة عدة تكرارات خلال المصفوفة, وتعقيد الزمان لها تربيعي في الحالات المتوسطة والأسوأ. بالرغم من بساطتها فهي غير عملية في أغلب الحالات.

**التعليمات:** اكتب دالة باسم`bubbleSort` تأخذ مصفوفة مكونة من أعداد صحيحة كمدخلات وترجع مصفوفة مكونة من نفس الأعداد مرتبة ترتيبا تصاعديا.

# --hints--

`bubbleSort` يجب أن تكون دالة.

```js
assert(typeof bubbleSort == 'function');
```

`bubbleSort` يجب أن ترجع مصفوفة مرتبة (من الأصغر إلى الأكبر).

```js
assert(
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

`bubbleSort([1,4,2,8,345,123,43,32,5643,63,123,43,2,55,1,234,92])` يجب أن ترجع مصفوفة ل يتغبر فيها شيء باستثناء ترتيب العناصر.

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

`bubbleSort` يجب ألا تستخدم الدالة المدمجة `.sort()`.

```js
assert(isBuiltInSortUsed());
```

# --seed--

## --after-user-code--

```js
function isSorted(a){
  for(let i = 0; i < a.length - 1; i++)
    if(a[i] > a[i + 1])
      return false;
  return true;
}

function isBuiltInSortUsed(){
  let sortUsed = false;
  Array.prototype.sort = () => sortUsed = true;
  bubbleSort([0, 1]);
  return !sortUsed;
}
```

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
