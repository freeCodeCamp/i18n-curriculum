---
id: af2170cad53daa0770fabdea
title: التحوُّلات
challengeType: 1
forumTopicId: 16025
dashedName: mutations
---

# --description--

أرجع `true` إذا كانت السلسلة النصية في العنصر الأول من المصفوفة تحتوي على جميع حروف السلسلة النصية في العنصر الثاني من المصفوفة.

على سبيل المثال، `["hello", "Hello"]` يجب أن تُرجع `true` لأن جميع الحروف في السلسلة الثانية موجودة في الأولى، متجاهلة حالة الأحرف.

المعلمات `["hello", "hey"]` يجب أن تُرجع `false` لأن السلسلة `hello` لا تحتوي على الحرف `y`.

أخيرًا، `["Alien", "line"]` يجب أن تُرجع `true` لأن جميع الحروف في `line` موجودة في `Alien`.

# --hints--

`mutation(["hello", "hey"])` يجب أن تُرجع `false`.

```js
assert.isFalse(mutation(['hello', 'hey']));
```

`mutation(["hello", "Hello"])` يجب أن تُرجع `true`.

```js
assert.isTrue(mutation(['hello', 'Hello']));
```

`mutation(["zyxwvutsrqponmlkjihgfedcba", "qrstu"])` يجب أن تُرجع `true`.

```js
assert.isTrue(mutation(['zyxwvutsrqponmlkjihgfedcba', 'qrstu']));
```

`mutation(["Mary", "Army"])` يجب أن تُرجع `true`.

```js
assert.isTrue(mutation(['Mary', 'Army']));
```

`mutation(["Mary", "Aarmy"])` يجب أن تُرجع `true`.

```js
assert.isTrue(mutation(['Mary', 'Aarmy']));
```

`mutation(["Alien", "line"])` يجب أن تُرجع `true`.

```js
assert.isTrue(mutation(['Alien', 'line']));
```

`mutation(["floor", "for"])` يجب أن تُرجع `true`.

```js
assert.isTrue(mutation(['floor', 'for']));
```

`mutation(["hello", "neo"])` يجب أن تُرجع `false`.

```js
assert.isFalse(mutation(['hello', 'neo']));
```

`mutation(["voodoo", "no"])` يجب أن تُرجع `false`.

```js
assert.isFalse(mutation(['voodoo', 'no']));
```

`mutation(["ate", "date"])` يجب أن تُرجع `false`.

```js
assert.isFalse(mutation(['ate', 'date']));
```

`mutation(["Tiger", "Zebra"])` يجب أن تُرجع `false`.

```js
assert.isFalse(mutation(['Tiger', 'Zebra']));
```

`mutation(["Noel", "Ole"])` يجب أن تُرجع `true`.

```js
assert.isTrue(mutation(['Noel', 'Ole']));
```

# --seed--

## --seed-contents--

```js
function mutation(arr) {
  return arr;
}

mutation(['hello', 'hey']);
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
