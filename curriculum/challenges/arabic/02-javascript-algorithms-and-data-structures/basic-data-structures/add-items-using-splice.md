---
id: 587d78b3367417b2b2512b11
title: إضافة عناصر باستخدام splice()
challengeType: 1
forumTopicId: 301152
dashedName: add-items-using-splice
---

# --description--

Remember in the last challenge we mentioned that `splice()` can take up to three parameters? Well, you can use the third parameter, comprised of one or more element(s), to add to the array. This can be incredibly useful for quickly switching out an element, or a set of elements, for another.

```js
const numbers = [10, 11, 12, 12, 15];
const startIndex = 3;
const amountToDelete = 1;

numbers.splice(startIndex, amountToDelete, 13, 14);
console.log(numbers);
```

تمت إزالة الحدث الثاني من `12`, وإضافة `13` و `14` في نفس الترتيب. القائمة `numbers` ستكون الآن `[ 10, 11, 12, 13, 14, 15 ]`.

وهنا نبدأ بالقائمة من الأرقام. ثم نمرر ما يلي إلى `splice()`: الترتيب الذي نبدأ منه لحذف العناصر (3)، وعدد العناصر المراد حذفها (1)، والوسيطات المتبقية (13، 14) سيتم أدخالها بدءا في نفس الترتيب. لاحظ أنه يمكن أن يكون هناك أي عدد من العناصر (مفصولة بفواصل) بعد `amountToDelete`، وكل عنصر منهم يتم إدخاله.

# --instructions--

لقد حددنا الوظيفة `htmlColorNames`، التي تأخذ قائمة من ألوان HTML كحجة. عدّل الوظيفة باستخدام `splice()` لإزالة العنصرين الأولين من القائمة وإضافة `'DarkSalmon'` و `'BlanchedAlmond'` في الأماكن الخاصة بهم.

# --hints--

`htmlColorNames` يجب ينتج `["DarkSalmon", "BlanchedAlmond", "LavenderBlush", "PaleTurquoise", "FireBrick"]`

```js
assert.deepEqual(
  htmlColorNames([
    'DarkGoldenRod',
    'WhiteSmoke',
    'LavenderBlush',
    'PaleTurquoise',
    'FireBrick'
  ]),
  [
    'DarkSalmon',
    'BlanchedAlmond',
    'LavenderBlush',
    'PaleTurquoise',
    'FireBrick'
  ]
);
```

يجب أن تستخدم وظيفة `htmlColorNames` الطريقة `splice()`

```js
assert(/.splice/.test(__helpers.removeJSComments(code)));
```

لا يجب عليك استخدام `shift()` أو `unshift()`.

```js
assert(!/shift|unshift/.test(__helpers.removeJSComments(code)));
```

لا يجب عليك استخدام bracket notation القائمة.

```js
assert(!/\[\d\]\s*=/.test(__helpers.removeJSComments(code)));
```

# --seed--

## --seed-contents--

```js
function htmlColorNames(arr) {
  // Only change code below this line

  // Only change code above this line
  return arr;
}

console.log(htmlColorNames(['DarkGoldenRod', 'WhiteSmoke', 'LavenderBlush', 'PaleTurquoise', 'FireBrick']));
```

# --solutions--

```js
function htmlColorNames(arr) {
  arr.splice(0,2,'DarkSalmon', 'BlanchedAlmond');
  return arr;
}
```
