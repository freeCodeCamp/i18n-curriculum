---
id: 66cc1deb1f04647f2aabee2b
title: الخطوة 15
challengeType: 1
dashedName: step-15
---

# --description--

إذا نظرت في وحدة التحكم، سترى القيمة `Infinity`. `Infinity` هي قيمة خاصة في JavaScript تمثل رقمًا أكبر من أي رقم آخر.

القسمة على الصفر ليست عملية صحيحة في الرياضيات.

لمراعاة هذه الحالة الخاصة، يجب تحديث دالة `calculateQuotient` لتتحقق بدلاً من ذلك مما إذا كان `num2` يساوي صفرًا.

إذا كان كذلك، يجب أن تُرجع الدالة السلسلة النصية `"Error: Division by zero"`. وإلا، يجب أن تُرجع نتيجة قسمة `num1` على `num2`.

# --hints--

يجب أن تُرجع دالة `calculateQuotient` السلسلة النصية `"Error: Division by zero"` إذا كان `num2` يساوي صفرًا.

```js
assert.strictEqual(calculateQuotient(10, 0), 'Error: Division by zero');
assert.strictEqual(calculateQuotient(3, 0), 'Error: Division by zero');
```

يجب أن تُرجع دالة `calculateQuotient` نتيجة قسمة `num1` على `num2` إذا لم يكن `num2` صفرًا.

```js
assert.strictEqual(calculateQuotient(10, 2), 5);
assert.strictEqual(calculateQuotient(3, 3), 1);
```

# --seed--

## --seed-contents--

```js
function calculateSum(num1, num2) {
  return num1 + num2;
}

console.log(calculateSum(2, 5));
console.log(calculateSum(10, 10));
console.log(calculateSum(5, 5));

function calculateDifference(num1, num2) {
  return num1 - num2;
}

console.log(calculateDifference(22, 5));
console.log(calculateDifference(12, 1));
console.log(calculateDifference(17, 9));

function calculateProduct(num1, num2) {
  return num1 * num2;
}

console.log(calculateProduct(13, 5));

function calculateQuotient(num1, num2) {
--fcc-editable-region--
  return num1 / num2;
--fcc-editable-region--
}

console.log(calculateQuotient(7, 11));
console.log(calculateQuotient(3, 0));
```
