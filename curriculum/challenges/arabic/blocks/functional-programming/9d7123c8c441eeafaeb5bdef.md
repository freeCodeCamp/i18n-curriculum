---
id: 9d7123c8c441eeafaeb5bdef
title: إزالة عناصر من مصفوفة باستخدام slice بدلاً من splice
challengeType: 1
forumTopicId: 301236
dashedName: remove-elements-from-an-array-using-slice-instead-of-splice
---

# --description--

نمط شائع أثناء العمل مع المصفوفات هو عندما تريد حذف عناصر مع الاحتفاظ ببقية المصفوفة. توفر JavaScript طريقة `splice` لهذا الغرض، والتي تأخذ معلمات لفهرس بداية حذف العناصر، ثم عدد العناصر التي يجب حذفها. إذا لم تُقدّم المعلمة الثانية، يكون الافتراضي حذف العناصر حتى النهاية. مع ذلك، طريقة `splice` تُغير المصفوفة الأصلية التي تُستدعى عليها. إليك مثالًا:

```js
const cities = ["Chicago", "Delhi", "Islamabad", "London", "Berlin"];
cities.splice(3, 1);
```

هنا تُعيد `splice` السلسلة النصية `London` وتحذفها من مصفوفة المدن. ستصبح قيمة `cities` هي `["Chicago", "Delhi", "Islamabad", "Berlin"]`.

كما رأينا في التحدٍّ السابق، طريقة `slice` لا تُغير المصفوفة الأصلية، بل تُعيد مصفوفة جديدة يمكن حفظها في متغير. تذكر أن طريقة `slice` تأخذ معلمتين لفهارس بداية ونهاية القطع (النهاية غير شاملة)، وتُعيد تلك العناصر في مصفوفة جديدة. استخدام طريقة `slice` بدلاً من `splice` يساعد على تجنب أي تأثيرات جانبية تُغير المصفوفة.

# --instructions--

أعد كتابة الدالة `nonMutatingSplice` باستخدام `slice` بدلاً من `splice`. يجب أن تُقيّد مصفوفة `cities` المقدمة إلى طول 3، وتُعيد مصفوفة جديدة تحتوي فقط على أول ثلاثة عناصر.

لا تُغير المصفوفة الأصلية المقدمة إلى الدالة.

# --hints--

يجب أن يستخدم شفرتك طريقة `slice`.

```js
assert(__helpers.removeJSComments(code).match(/\.slice/g));
```

يجب ألا تستخدم شفرتك طريقة `splice`.

```js
assert(!__helpers.removeJSComments(code).match(/\.?[\s\S]*?splice/g));
```

يجب ألا تُغير المصفوفة الأصلية الممررة إلى الدالة.

```js
assert(
  (function () {
    const _inputCities = ["Chicago", "Delhi", "Islamabad", "London", "Berlin"];
    nonMutatingSplice(_inputCities);
    return (
      JSON.stringify(_inputCities) ===
      JSON.stringify(["Chicago", "Delhi", "Islamabad", "London", "Berlin"])
    );
  })()
);
```

`nonMutatingSplice(["Chicago", "Delhi", "Islamabad", "London", "Berlin"])` يجب أن تُعيد `["Chicago", "Delhi", "Islamabad"]`.

```js
assert.deepEqual(
  nonMutatingSplice(["Chicago", "Delhi", "Islamabad", "London", "Berlin"]),
  ["Chicago", "Delhi", "Islamabad"]
);
```

# --seed--

## --seed-contents--

```js
function nonMutatingSplice(cities) {

  return cities.splice(3);
}
```

# --solutions--

```js
function nonMutatingSplice(cities) {
  return cities.slice(0,3);
}
```
