---
id: 66edcccbba6dacdb65a59067
title: اختبار قصير لمصفوفات JavaScript
challengeType: 8
dashedName: quiz-javascript-arrays
---

# --description--

لنجاح الاختبار القصير، يجب أن تجيب بشكل صحيح على 18 سؤالًا على الأقل من أصل 20 سؤالًا أدناه.

# --quizzes--

## --quiz--

### --question--

#### --text--

ما الناتج المتوقع للشيفرة التالية؟

```js
const numbers = [1, 2, 3];
console.log(numbers[10]);
```

#### --distractors--

`[1, 2, 3]`

---

`null`

---

`10`

#### --answer--

`undefined`

### --question--

#### --text--

ما هي الطريقة الصحيحة للوصول إلى السلسلة النصية `"Jessica"` من مصفوفة `developers`؟

#### --distractors--

```js
const developers = ["Jessica", "Naomi", "Tom"];
developers[1]
```

---

```js
const developers = ["Jessica", "Naomi", "Tom"];
developers[2]
```

---

```js
const developers = ["Jessica", "Naomi", "Tom"];
developers[-1]
```

#### --answer--

```js
const developers = ["Jessica", "Naomi", "Tom"];
developers[0]
```

### --question--

#### --text--

ما القيمة التي ستُعيَّن للمتغير `index`؟

```js
const numbers = [10, 20, 30, 40];
const index = numbers.indexOf(20);
console.log(index);
```

#### --distractors--

2

---

3

---

-1

#### --answer--

1

### --question--

#### --text--

ما وظيفة صيغة rest؟

#### --distractors--

تُستخدم لتقسيم سلسلة نصية إلى مصفوفة من السلاسل الفرعية.

---

تُستخدم لإضافة أو إزالة عناصر من أي موضع في المصفوفة.

---

تُستخدم لإضافة عناصر إلى نهاية المصفوفة وستُعيد الطول الجديد.

#### --answer--

تلتقط العناصر المتبقية من المصفوفة في مصفوفة جديدة.

### --question--

#### --text--

ما هو التفكيك في المصفوفات؟

#### --distractors--

تُستخدم لدمج جميع عناصر المصفوفة في سلسلة نصية واحدة.

---

تُستخدم للتحقق مما إذا كانت المصفوفة تحتوي على قيمة معينة.

---

تُستخدم لإزالة العنصر الأخير من المصفوفة وستُعيد هذا العنصر المُزال.

#### --answer--

تُستخدم لاستخراج القيم من المصفوفات وتعيينها إلى متغيرات بطريقة أكثر إيجازًا ووضوحًا.

### --question--

#### --text--

ما القيمة التي ستُعيَّن للمتغير `arr2`؟

```js
const arr1 = [1, 2, 3];
const arr2 = [...arr1, 4, 5];
console.log(arr2);
```

#### --distractors--

`[4, 5, 1, 2, 3]`

---

`[1, 2, [3, 4, 5]]`

---

`[1, 2, 3]`

#### --answer--

`[1, 2, 3, 4, 5]`

### --question--

#### --text--

ما الذي ستطبعه هذه الشيفرة في وحدة التحكم؟

```js
const colors = ["red", "blue", "green", "yellow"];
colors.splice(1, 2, "purple");
console.log(colors);
```

#### --distractors--

`["red", "blue", "green", "yellow"]`

---

`["red", "blue", "yellow"]`

---

`["red", "yellow"]`

#### --answer--

`["red", "purple", "yellow"]`

### --question--

#### --text--

ما القيمة التي ستُعيَّن للمتغير `slicedArr`؟

```js
const arr = ["apple", "banana", "cherry", "date"];
const slicedArr = arr.slice(1, 3);
console.log(slicedArr);
```

#### --distractors--

`["apple", "banana"]`

---

`["cherry", "date"]`

---

`["apple", "cherry"]`

#### --answer--

`["banana", "cherry"]`

### --question--

#### --text--

أي طريقة تُعيد الفهرس الأول لعنصر معين في المصفوفة؟

#### --distractors--

`firstIndex()`

---

`lastIndex()`

---

`searchIndex()`

#### --answer--

`indexOf()`

### --question--

#### --text--

أي طريقة تُستخدم لإزالة العنصر الأول من المصفوفة وتُعيد هذا العنصر المُزال؟

#### --distractors--

`pop()`

---

`slice()`

---

`splice()`

#### --answer--

`shift()`

### --question--

#### --text--

ما وظيفة الطريقة `concat()`؟

#### --distractors--

تدمج عناصر المصفوفة في سلسلة نصية.

---

تضيف عنصرًا إلى بداية المصفوفة.

---

تزيل عنصرًا من المصفوفة.

#### --answer--

تدمج مصفوفتين في مصفوفة جديدة.

### --question--

#### --text--

ما الناتج المتوقع لهذه الشيفرة؟

```js
const fruits = ["apple", "banana", "cherry", "apple", "orange"];

fruits.splice(0, 1);

console.log(fruits);
```

#### --distractors--

`["apple", "banana", "cherry", "apple", "orange"]`

---

`["apple", "banana", "cherry"]`

---

`["cherry", 'apple']`

#### --answer--

`["banana", "cherry", "apple", "orange"]`

### --question--

#### --text--

ما وظيفة الطريقة `includes()`؟

#### --distractors--

تُستخدم لتقسيم سلسلة نصية إلى مصفوفة من السلاسل الفرعية.

---

تُستخدم لدمج جميع عناصر المصفوفة في سلسلة نصية واحدة.

---

تُستخدم لإضافة أو إزالة عناصر من أي موضع في المصفوفة.

#### --answer--

تُستخدم للتحقق مما إذا كانت المصفوفة تحتوي على قيمة معينة.

### --question--

#### --text--

أي من الطرق التالية تُستخدم لعكس المصفوفة في مكانها؟

#### --distractors--

`reversed()`

---

`reverseArr()`

---

`reversing()`

#### --answer--

`reverse()`

### --question--

#### --text--

ما هي المصفوفة ثنائية الأبعاد؟

#### --distractors--

مصفوفة تحتوي فقط على كائنات حرفية.

---

مصفوفة ذات طول ثابت.

---

مصفوفة من الأعداد العشرية.

#### --answer--

مصفوفة من مصفوفات.

### --question--

#### --text--

أي مما يلي صحيح عن الطريقة `indexOf()` في المصفوفات؟

#### --distractors--

تعيد دائمًا آخر ظهور للعنصر.

---

ترمي خطأ إذا لم يُعثر على العنصر.

---

تتطلب أن تكون المصفوفة مرتبة.

#### --answer--

تعيد `-1` إذا لم يُعثر على العنصر.

### --question--

#### --text--

أي مما يلي ليس طريقة من طرق المصفوفة؟

#### --distractors--

`includes()`

---

`pop()`

---

`push()`

#### --answer--

`trim()`

### --question--

#### --text--

ما الناتج المتوقع للشيفرة التالية؟

```js
const arr = ["o", "l", "l", "e", "h"];
console.log(arr.join(""));
```

#### --distractors--

`["o", "l", "l", "e", "h"]`

---

`"hello"`

---

`undefined`

#### --answer--

`"olleh"`

### --question--

#### --text--

ما نتيجة استخدام الطريقة `shift()` على مصفوفة فارغة؟


#### --distractors--

`TypeError`

---

`[]`

---

`null`

#### --answer--

`undefined`

### --question--

#### --text--

أي طريقة تُعيد مصفوفة جديدة دون تغيير المصفوفة الأصلية؟

#### --distractors--

`shift()`

---

`pop()`

---

`push()`

#### --answer--

`slice()`
