---
id: 8d5123c8c441eddfaeb5bdef
title: تنفيذ فرز الفقاعات
challengeType: 1
forumTopicId: 301612
dashedName: implement-bubble-sort
---

# --description--

هذا هو أول تحدٍّ من عدة تحديات حول خوارزميات الفرز. بالنظر إلى مصفوفة من العناصر غير المرتبة، نريد أن نتمكن من إرجاع مصفوفة مرتبة. سنرى عدة طرق مختلفة للقيام بذلك ونتعلم بعض الموازنات بين هذه الطرق المختلفة. رغم أن معظم لغات البرمجة الحديثة تحتوي على طرق فرز مدمجة لمثل هذه العمليات، من المهم فهم بعض الطرق الأساسية الشائعة وتعلم كيفية تنفيذها.

هنا سنرى فرز الفقاعات. تبدأ طريقة فرز الفقاعات من بداية مصفوفة غير مرتبة وتُصعِّد القيم غير المرتبة نحو النهاية، مع التكرار عبر المصفوفة حتى تصبح مرتبة تمامًا. تقوم بذلك بمقارنة العناصر المجاورة وتبديلها إذا كانت غير مرتبة. تستمر الطريقة في التكرار عبر المصفوفة حتى لا يحدث أي تبديل، وعندها تكون المصفوفة مرتبة.

تتطلب هذه الطريقة عدة تكرارات عبر المصفوفة، وللحالات المتوسطة والأسوأ لها تعقيد زمني تربيعي. رغم بساطتها، فهي عادة غير عملية في معظم الحالات.

**التعليمات:** اكتب دالة `bubbleSort` تأخذ مصفوفة من الأعداد الصحيحة كمُدخَل وتُرجع مصفوفة من هذه الأعداد مرتبة من الأصغر إلى الأكبر.

# --hints--

يجب أن تكون `bubbleSort` دالة.

```js
assert.isFunction(bubbleSort);
```

يجب أن تُرجع `bubbleSort` مصفوفة مرتبة (من الأصغر إلى الأكبر).

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

يجب أن تُرجع `bubbleSort([1,4,2,8,345,123,43,32,5643,63,123,43,2,55,1,234,92])` مصفوفة لم تتغير إلا في الترتيب.

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

يجب ألا تستخدم `bubbleSort` الطريقة المدمجة `.sort()`.

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
