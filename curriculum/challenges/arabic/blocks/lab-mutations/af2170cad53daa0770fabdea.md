---
id: af2170cad53daa0770fabdea
title: تنفيذ خوارزمية التحوُّل
challengeType: 26
dashedName: implement-the-mutations-algorithm
---

# --description--

**الهدف:** نفذ قصص المستخدم أدناه واجعل جميع الاختبارات تنجح لإكمال المختبر.

**قصص المستخدم:**

1. أنشئ دالة باسم `mutation` تأخذ مصفوفة كمعلم.
1. يجب أن تُرجع `mutation` القيمة `true` إذا كانت السلسلة النصية في العنصر الأول من المصفوفة تحتوي على جميع حروف السلسلة النصية في العنصر الثاني من المصفوفة، و`false` خلاف ذلك. على سبيل المثال:
    - يجب أن تُرجع `mutation(["hello", "Hello"])` القيمة `true` لأن جميع حروف السلسلة الثانية موجودة في الأولى، متجاهلة حالة الأحرف.
    - يجب أن تُرجع `mutation(["hello", "hey"])` القيمة `false` لأن السلسلة `hello` لا تحتوي على الحرف `y`.
    - يجب أن تُرجع `mutation(["Alien", "line"])` القيمة `true` لأن جميع حروف `line` موجودة في `Alien`.

# --hints--

يجب أن تُرجع `mutation(["hello", "hey"])` القيمة `false`.

```js
assert.isFalse(mutation(['hello', 'hey']));
```

يجب أن تُرجع `mutation(["hello", "Hello"])` القيمة `true`.

```js
assert.isTrue(mutation(['hello', 'Hello']));
```

يجب أن تُرجع `mutation(["zyxwvutsrqponmlkjihgfedcba", "qrstu"])` القيمة `true`.

```js
assert.isTrue(mutation(['zyxwvutsrqponmlkjihgfedcba', 'qrstu']));
```

يجب أن تُرجع `mutation(["Mary", "Army"])` القيمة `true`.

```js
assert.isTrue(mutation(['Mary', 'Army']));
```

يجب أن تُرجع `mutation(["Mary", "Aarmy"])` القيمة `true`.

```js
assert.isTrue(mutation(['Mary', 'Aarmy']));
```

يجب أن تُرجع `mutation(["Alien", "line"])` القيمة `true`.

```js
assert.isTrue(mutation(['Alien', 'line']));
```

يجب أن تُرجع `mutation(["floor", "for"])` القيمة `true`.

```js
assert.isTrue(mutation(['floor', 'for']));
```

يجب أن تُرجع `mutation(["hello", "neo"])` القيمة `false`.

```js
assert.isFalse(mutation(['hello', 'neo']));
```

يجب أن تُرجع `mutation(["voodoo", "no"])` القيمة `false`.

```js
assert.isFalse(mutation(['voodoo', 'no']));
```

يجب أن تُرجع `mutation(["ate", "date"])` القيمة `false`.

```js
assert.isFalse(mutation(['ate', 'date']));
```

يجب أن تُرجع `mutation(["Tiger", "Zebra"])` القيمة `false`.

```js
assert.isFalse(mutation(['Tiger', 'Zebra']));
```

يجب أن تُرجع `mutation(["Noel", "Ole"])` القيمة `true`.

```js
assert.isTrue(mutation(['Noel', 'Ole']));
```

# --seed--

## --seed-contents--

```js
```

# --solutions--

```js
function mutation(arr) {
  let hash = Object.create(null);

  arr[0]
    .toLowerCase()
    .split('')
    .forEach(c => (hash[c] = true));

  return !arr[1]
    .toLowerCase()
    .split('')
    .filter(c => !hash[c]).length;
}

mutation(['hello', 'hey']);
```
