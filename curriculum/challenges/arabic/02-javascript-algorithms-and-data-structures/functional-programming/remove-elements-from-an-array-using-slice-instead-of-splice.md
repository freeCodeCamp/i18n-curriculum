---
id: 9d7123c8c441eeafaeb5bdef
title: Remove Elements from an Array Using slice Instead of splice
challengeType: 1
forumTopicId: 301236
dashedName: remove-elements-from-an-array-using-slice-instead-of-splice
---

# --description--

A common pattern while working with arrays is when you want to remove items and keep the rest of the array. JavaScript offers the `splice` method for this, which takes arguments for the index of where to start removing items, then the number of items to remove. If the second argument is not provided, the default is to remove items through the end. However, the `splice` method mutates the original array it is called on. إليك مثال:

```js
const cities = ["Chicago", "Delhi", "Islamabad", "London", "Berlin"];
cities.splice(3, 1);
```

هنا `splice` ترجع السلسلة `London` وتحذفها من cities array. `cities` سيكون لها القيمة `["Chicago", "Delhi", "Islamabad", "Berlin"]`.

وكما رأينا في التحدي الأخير، فإن طريقة `slice` لا تغير الـ array الأصلية، ولكن ترجع واحدة جديدة يمكن حفظها في متغير. تذكر أن طريقة `slice` تأخذ معطين لرقم الترتيب لبدء بتقسيم (slice) وإنهائه (النهاية غير مشمولة)، وأنتاج هذه العناصر في قائمة (array) جديدة. ويساعد استخدام طريقة `slice` بدلاً من `splice` على تجنب أي تأثيرات جانبية تغير في الـ array.

# --instructions--

أعّد كتابة الوظيفة `nonMutatingSplice` باستخدام `slice` بدلاً من `splice`. يجب أن يقصر طول القائمة `cities` المقدمة على 3، ويعيد array جديدة تحتوي على العناصر الثلاثة الأولى فقط.

لا تغيّر القائمة (array) الأصلية المقدمة للوظيفة (function).

# --hints--

يجب أن يستخدم كودك طريقة `slice`.

```js
assert(__helpers.removeJSComments(code).match(/\.slice/g));
```

يجب ألا يستخدم كودك طريقة `splice`.

```js
assert(!__helpers.removeJSComments(code).match(/\.?[\s\S]*?splice/g));
```

You should not mutate the original array passed to the function.

```js
assert.deepEqual(_inputCities, ["Chicago", "Delhi", "Islamabad", "London", "Berlin"]);
```

`nonMutatingSplice(["Chicago", "Delhi", "Islamabad", "London", "Berlin"])` يجب أن ترجع `["Chicago", "Delhi", "Islamabad"]`.

```js
assert.deepEqual(nonMutatingSplice(_inputCities), ["Chicago", "Delhi", "Islamabad"]);
```

# --seed--

## --seed-contents--

```js
function nonMutatingSplice(cities) {

  return cities.splice(3);
}
```

## --after-user-code--

```js
const _inputCities = ["Chicago", "Delhi", "Islamabad", "London", "Berlin"];
```

# --solutions--

```js
function nonMutatingSplice(cities) {
  return cities.slice(0,3);
}
```
