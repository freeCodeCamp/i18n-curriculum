---
id: ae9defd7acaf69703ab432ea
title: أصغر مضاعف مشترك
challengeType: 1
forumTopicId: 16075
dashedName: smallest-common-multiple
---

# --description--

ابحث عن أصغر مضاعف مشترك للمعلمات المقدمة يمكن قسمته بالتساوي على كل منهما، وكذلك على جميع الأعداد المتتالية في النطاق بين هاتين المعلمتين.

سيكون النطاق مصفوفة مكونة من رقمين قد لا يكونان بالضرورة بالترتيب الرقمي.

على سبيل المثال، إذا أعطيت الرقم 1 والرقم 3، ابحث عن أصغر مضاعف مشترك لكل من 1 و3 يمكن قسمته بالتساوي على جميع الأعداد *بين* 1 و3. الإجابة هنا ستكون 6.

# --hints--

يجب أن تُرجع الدالة `smallestCommons([1, 5])` رقمًا.

```js
assert.deepEqual(typeof smallestCommons([1, 5]), 'number');
```

يجب أن تُرجع الدالة `smallestCommons([1, 5])` القيمة 60.

```js
assert.deepEqual(smallestCommons([1, 5]), 60);
```

يجب أن تُرجع الدالة `smallestCommons([5, 1])` القيمة 60.

```js
assert.deepEqual(smallestCommons([5, 1]), 60);
```

يجب أن تُرجع الدالة `smallestCommons([2, 10])` القيمة 2520.

```js
assert.deepEqual(smallestCommons([2, 10]), 2520);
```

يجب أن تُرجع الدالة `smallestCommons([1, 13])` القيمة 360360.

```js
assert.deepEqual(smallestCommons([1, 13]), 360360);
```

يجب أن تُرجع الدالة `smallestCommons([23, 18])` القيمة 6056820.

```js
assert.deepEqual(smallestCommons([23, 18]), 6056820);
```

# --seed--

## --seed-contents--

```js
function smallestCommons(arr) {
  return arr;
}

smallestCommons([1,5]);
```

# --solutions--

```js
function gcd(a, b) {
    while (b !== 0) {
        a = [b, b = a % b][0];
    }
    return a;
}

function lcm(a, b) {
    return (a * b) / gcd(a, b);
}

function smallestCommons(arr) {
  arr.sort(function(a,b) {return a-b;});
  var rng = [];
  for (var i = arr[0]; i <= arr[1]; i++) {
    rng.push(i);
  }
  return rng.reduce(lcm);
}
```
