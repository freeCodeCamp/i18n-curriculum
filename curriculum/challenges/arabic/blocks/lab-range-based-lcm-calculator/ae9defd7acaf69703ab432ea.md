---
id: ae9defd7acaf69703ab432ea
title: تنفيذ حاسبة المضاعف المشترك الأصغر بناءً على نطاق
challengeType: 26
dashedName: implement-a-range-based-lcm-calculator
---

# --description--

في هذا المختبر، ستنشئ دالة تأخذ مصفوفة من رقمين وتُرجع المضاعف المشترك الأصغر (LCM) لهذين الرقمين وكل الأرقام بينهما.

**الهدف**: نفذ قصص المستخدم أدناه واجتز جميع الاختبارات لإكمال المختبر.

**قصص المستخدم:**

1. يجب أن تملك دالة `smallestCommons` تقبل مصفوفة من رقمين كمعلمة.
1. يجب أن تُرجع دالة `smallestCommons` أصغر مضاعف مشترك يقبل القسمة بالتساوي على كلا الرقمين وكل الأرقام المتتالية في النطاق بينهما.
1. يجب أن تتعامل الدالة مع المُدخلات التي لا يكون فيها الرقمان بترتيب رقمي.

# --hints--

يجب أن تملك دالة `smallestCommons`.

```js
assert.isFunction(smallestCommons);
```

يجب أن تُرجع `smallestCommons([1, 5])` رقمًا.

```js
assert.isNumber(smallestCommons([1, 5]));
```

يجب أن تُرجع `smallestCommons([1, 5])` القيمة `60`.

```js
assert.strictEqual(smallestCommons([1, 5]), 60);
```

يجب أن تُرجع `smallestCommons([5, 1])` القيمة `60`.

```js
assert.strictEqual(smallestCommons([5, 1]), 60);
```

يجب أن تُرجع `smallestCommons([2, 10])` القيمة `2520`.

```js
assert.strictEqual(smallestCommons([2, 10]), 2520);
```

يجب أن تُرجع `smallestCommons([1, 13])` القيمة `360360`.

```js
assert.strictEqual(smallestCommons([1, 13]), 360360);
```

يجب أن تُرجع `smallestCommons([23, 18])` القيمة `6056820`.

```js
assert.strictEqual(smallestCommons([23, 18]), 6056820);
```

# --seed--

## --seed-contents--

```js

```

# --solutions--

```js
function smallestCommons(arr) {
  let [min, max] = arr.sort((a, b) => a - b);

  function gcd(a, b) {
    return b === 0 ? a : gcd(b, a % b);
  }

  function lcm(a, b) {
    return (a * b) / gcd(a, b);
  }

  let multiple = min;

  for (let i = min + 1; i <= max; i++) {
    multiple = lcm(multiple, i);
  }

  return multiple;
}
```
