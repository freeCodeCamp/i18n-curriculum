---
id: 587d7b85367417b2b2512b38
title: Використання оператора присвоєння замість оператора рівності
challengeType: 1
forumTopicId: 301191
dashedName: catch-use-of-assignment-operator-instead-of-equality-operator
---

# --description--

Branching programs, i.e. ones that do different things if certain conditions are met, rely on `if`, `else if`, and `else` statements in JavaScript. The condition sometimes takes the form of testing whether a result is equal to a value.

Ця логіка формулюється як «якщо x дорівнює y, то...», що буквально можна перекласти в код за допомогою `=`, або оператора присвоєння. Це призводить до неочікуваного керування потоком у вашій програмі.

У попередніх завданнях зазначено, що оператор присвоєння у JavaScript (`=`) присвоює значення до назв змінних. А оператори `==` та `===` перевіряють рівність (потрійний `===` перевіряє строгу рівність, тобто значення та тип однакові).

Нижченаведений код присвоює значення 2 до `x`, що оцінюватиметься як `true`. Майже кожне значення у JavaScript оцінюється як `true`, за винятком деяких випадків, які відомі як «хибні» значення: `false`, `0`, `""` (пустий рядок), `NaN`, `undefined` та `null`.

```js
let x = 1;
let y = 2;
if (x = y) {

} else {

}
```

У цьому прикладі блок коду в інструкції `if` виконується для будь-якого значення `y`, якщо `y` не є хибним. Блок `else`, який, як ми очікуємо, буде виконано, насправді не запуститься.

# --instructions--

Виправте умову таким чином, щоб програма виконувалася у правій гілці, а до `result` було присвоєно відповідне значення.

# --hints--

Код повинен виправити умову так, щоб вона перевіряла рівність, а не використовувала присвоєння.

```js
assert(result == 'Not equal!');
```

Умова повинна використовувати `==` або `===`, щоб перевірити рівність.

```js
assert(__helpers.removeJSComments(code).match(/x\s*?===?\s*?y/g));
```

# --seed--

## --seed-contents--

```js
let x = 7;
let y = 9;
let result = "to come";

if(x = y) {
  result = "Equal!";
} else {
  result = "Not equal!";
}

console.log(result);
```

# --solutions--

```js
let x = 7;
let y = 9;
let result = "to come";

if(x === y) {
 result = "Equal!";
} else {
 result = "Not equal!";
}

console.log(result);
```
