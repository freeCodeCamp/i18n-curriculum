---
id: 587d7b86367417b2b2512b3d
title: Запобігання нескінченного циклу з дійсною кінцевою умовою
challengeType: 1
forumTopicId: 301192
dashedName: prevent-infinite-loops-with-a-valid-terminal-condition
---

# --description--

The final topic is the dreaded infinite loop. Loops are great tools when you need your program to run a code block a certain number of times or until a condition is met, but they need a terminal condition that ends the looping. Infinite loops are likely to freeze or crash the browser, and cause general program execution mayhem, which no one wants.

У вступі до цього розділу був приклад нескінченного циклу: у ньому немає кінцевої умови для того, щоб закінчити цикл `while` всередині `loopy()`. НЕ викликайте цю функцію!

```js
function loopy() {
  while(true) {
    console.log("Hello, world!");
  }
}
```

Завданням програміста — гарантувати, що кінцева умова, яка вказує програмі на кінець циклу, буде досягнута. Однією з помилок є зменшення або збільшення змінної лічильника у неправильному від кінцевої умови напрямку. Іншою помилкою є випадкове скидання змінної лічильника або індексу всередині циклу замість збільшення або зменшення.

# --instructions--

Функція `myFunc()` містить нескінченний цикл, оскільки кінцева умова `i != 4` ніколи не буде `false` (та не закінчить цикл): `i` збільшуватиметься на 2 при кожному виконанні та пропустить 4, оскільки `i` має бути непарним числом. Виправте оператор порівняння у кінцевій умові так, щоб цикл виконувався лише за умови, що `i` менше або дорівнює 4.

# --hints--

Ваш код повинен змінити оператора порівняння у кінцевій умові (середня частина) циклу `for`.

```js
assert(__helpers.removeJSComments(code).match(/i\s*?<=\s*?4;/g).length == 1);
```

Ваш код повинен виправити оператора порівняння у кінцевій умові циклу.

```js
assert(!__helpers.removeJSComments(code).match(/i\s*?!=\s*?4;/g));
```

# --seed--

## --seed-contents--

```js
function myFunc() {
  for (let i = 1; i != 4; i += 2) {
    console.log("Still going!");
  }
}
```

# --solutions--

```js
function myFunc() {
 for (let i = 1; i <= 4; i += 2) {
   console.log("Still going!");
 }
}
```
