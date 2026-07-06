---
id: 6732b28eeadda1158cdbff7b
title: كيف تتحقق مما إذا كانت المصفوفة تحتوي على قيمة معينة؟
challengeType: 19
dashedName: how-can-you-check-if-an-array-contains-a-certain-value
---

# --interactive--

في JavaScript، طريقة `includes()` هي طريقة بسيطة وفعالة للتحقق مما إذا كانت المصفوفة تحتوي على قيمة محددة. تُرجع هذه الطريقة قيمة منطقية: `true` إذا كانت المصفوفة تحتوي على العنصر المحدد، و`false` خلاف ذلك.

طريقة `includes()` مفيدة بشكل خاص عندما تحتاج إلى التحقق بسرعة من وجود عنصر في المصفوفة دون الحاجة لمعرفة موقعه الدقيق. لنبدأ بمثال يوضح كيفية استخدام طريقة `includes()`:

:::interactive_editor

```js
let fruits = ["apple", "banana", "orange", "mango"];
console.log(fruits.includes("banana")); // true
console.log(fruits.includes("grape"));  // false
```

:::

في هذا المثال، لدينا مصفوفة من الفواكه. نستخدم طريقة `includes()` للتحقق مما إذا كانت `banana` موجودة في المصفوفة. تُرجع `true` لأن `banana` موجودة بالفعل. ثم نتحقق من وجود `grape`، فتُرجع `false` لأنها غير موجودة في المصفوفة.

طريقة `includes()` حساسة لحالة الأحرف عند التعامل مع السلاسل النصية. هذا يعني أن `Banana` بحرف B كبير و`banana` بأحرف صغيرة كلها تُعتبر قيم مختلفة. إليك مثالًا يوضح ذلك:

:::interactive_editor

```js
let fruits = ["apple", "banana", "orange"];
console.log(fruits.includes("banana")); // true
console.log(fruits.includes("Banana")); // false
```

:::

في هذه الحالة، `banana` (كلها أحرف صغيرة) موجودة في المصفوفة، لكن `Banana` (بحرف أول كبير) غير موجودة، لذا تُرجع الاستدعاء الثاني لـ `includes()` القيمة `false`.

يمكن لطريقة `includes()` أيضًا قبول معلمة ثانية اختيارية تحدد الموضع في المصفوفة لبدء البحث منه. هذا مفيد إذا أردت التحقق من وجود عنصر في جزء معين من المصفوفة. إليك كيفية استخدام هذه الميزة:

:::interactive_editor

```js
let numbers = [10, 20, 30, 40, 50, 30, 60];
console.log(numbers.includes(30, 3)); // true
console.log(numbers.includes(30, 4)); // true
```

:::

في أول `console.log`، نبحث عن الرقم `30` بدءًا من الفهرس `3`. في هذه الحالة، يوجد رقم `30` يظهر بعد الفهرس `3`، لذا تُرجع طريقة `includes()` القيمة `true`.

الأمر نفسه ينطبق على ثاني `console.log`. نبحث عن الرقم `30` بدءًا من الفهرس `4`. بما أن الرقم `30` يظهر بعد هذا الفهرس، فستُرجع القيمة `true`.

يجدر بالذكر أن `includes()` تستخدم مقارنة المساواة الصارمة (`===`)، مما يعني أنها تميز بين الأنواع المختلفة. على سبيل المثال:

:::interactive_editor

```js
let mixedArray = [1, "2", 3, "4", 5];
console.log(mixedArray.includes(2));  // false
console.log(mixedArray.includes("2")); // true
```

:::

في هذه الحالة، يُعتبر الرقم `2` والسلسلة النصية `"2"` نوعين مختلفين من البيانات. لذلك، سيُرجع أول `console.log` القيمة `false`، بينما سيُرجع ثاني `console.log` القيمة `true`.

طريقة `includes()` أداة قوية للتحقق من وجود عناصر في المصفوفات. هي بسيطة الاستخدام، فعالة، وتوفر عليك كتابة حلقات أو شروط معقدة للبحث في المصفوفات. سواء كنت تعمل مع سلاسل نصية، أرقام، أو أنواع بيانات مختلطة، توفر `includes()` طريقة مباشرة للتحقق من وجود قيمة في مصفوفاتك.

# --questions--

## --text--

ما هي نتيجة تنفيذ الشفرة التالية؟

```js
let arr = [1, 2, 3, 4, 5];
console.log(arr.includes(3, 3));
```

## --answers--

`true`

### --feedback--

المعلمة الثانية في `includes()` تحدد موضع البدء للبحث.

---

`false`

---

`undefined`

### --feedback--

المعلمة الثانية في `includes()` تحدد موضع البدء للبحث.

---

سيؤدي هذا إلى رمي خطأ.

### --feedback--

المعلمة الثانية في `includes()` تحدد موضع البدء للبحث.

## --video-solution--

2

## --text--

ما هي نتيجة تنفيذ الشفرة التالية؟

```js
let arr = ["a", "b", "c", "d", "e"];
console.log(arr.includes("C"));
```

## --answers--

`true`

### --feedback--

تذكر أن `includes()` حساسة لحالة الأحرف عند التعامل مع السلاسل النصية.

---

`false`

---

`undefined`

### --feedback--

تذكر أن `includes()` حساسة لحالة الأحرف عند التعامل مع السلاسل النصية.

---

سيؤدي هذا إلى رمي خطأ.

### --feedback--

تذكر أن `includes()` حساسة لحالة الأحرف عند التعامل مع السلاسل النصية.

## --video-solution--

2

## --text--

ما هي نتيجة تنفيذ الشفرة التالية؟

```js
let arr = [1, "2", 3, "4", 5];
console.log(arr.includes("3"));
```

## --answers--

`true`

### --feedback--

طريقة `includes()` تستخدم المساواة الصارمة (`===`) للمقارنة.

---

`false`

---

`undefined`

### --feedback--

طريقة `includes()` تستخدم المساواة الصارمة (`===`) للمقارنة.

---

سيؤدي هذا إلى رمي خطأ.

### --feedback--

طريقة `includes()` تستخدم المساواة الصارمة (`===`) للمقارنة.

## --video-solution--

2
