---
id: cf1111c1c12feddfaeb1bdef
title: Генерувати випадкові цілі числа за допомогою JavaScript
challengeType: 1
forumTopicId: 18186
dashedName: generate-random-whole-numbers-with-javascript
---

# --description--

Ви можете генерувати випадкові десяткові числа за допомогою `Math.random()`, але іноді потрібно згенерувати випадкові цілі числа. Наступний процес дасть вам випадкове ціле число менше за `20`:

1. Використайте `Math.random()` для генерації випадкового десяткового числа.
2. Помножте це випадкове десяткове число на `20`.
3. Використайте `Math.floor()`, щоб округлити це число вниз до найближчого цілого числа.

Пам’ятайте, що `Math.random()` ніколи не може повернути `1`, тому фактично отримати `20` неможливо, оскільки ви округлюєте вниз за допомогою `Math.floor()`. Цей процес дасть вам випадкове ціле число в діапазоні від `0` до `19`.

Об’єднуючи все разом, ваш код виглядає так:

```js
Math.floor(Math.random() * 20);
```

Ви викликаєте `Math.random()`, множите результат на 20, а потім передаєте значення в `Math.floor()`, щоб округлити його вниз до найближчого цілого числа.

# --instructions--

Використайте цю техніку, щоб згенерувати та повернути випадкове ціле число в діапазоні від `0` до `9`.

# --hints--

Результат `randomWholeNum` має бути цілим числом.

```js
assert(
  typeof randomWholeNum() === 'number' &&
    (function () {
      var r = randomWholeNum();
      return Math.floor(r) === r;
    })()
);
```

Ви маєте використати `Math.random` для генерації випадкового числа.

```js
assert(__helpers.removeJSComments(code).match(/Math.random/g).length >= 1);
```

Ви маєте помножити результат `Math.random` на 10, щоб отримати число в діапазоні від нуля до дев’яти.

```js
assert(
  __helpers.removeJSComments(code).match(/\s*?Math.random\s*?\(\s*?\)\s*?\*\s*?10[\D]\s*?/g) ||
    __helpers.removeJSComments(code).match(/\s*?10\s*?\*\s*?Math.random\s*?\(\s*?\)\s*?/g)
);
```

Ви маєте використати `Math.floor`, щоб видалити десяткову частину числа.

```js
assert(__helpers.removeJSComments(code).match(/Math.floor/g).length >= 1);
```

# --seed--

## --seed-contents--

```js
function randomWholeNum() {
  return Math.random();
}
```

# --solutions--

```js
function randomWholeNum() {
  return Math.floor(Math.random() * 10);
}
```
