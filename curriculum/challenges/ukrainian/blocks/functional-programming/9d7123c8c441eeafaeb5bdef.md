---
id: 9d7123c8c441eeafaeb5bdef
title: Видалення елементів із масиву за допомогою slice замість splice
challengeType: 1
forumTopicId: 301236
dashedName: remove-elements-from-an-array-using-slice-instead-of-splice
---

# --description--

Загальний шаблон при роботі з масивами — коли потрібно видалити елементи і зберегти залишок масиву. JavaScript пропонує метод `splice` для цього, який приймає аргументи: індекс, з якого починати видалення елементів, а також кількість елементів для видалення. Якщо другий аргумент не вказаний, за замовчуванням видаляються елементи до кінця. Однак метод `splice` змінює оригінальний масив, на якому його викликають. Ось приклад:

```js
const cities = ["Chicago", "Delhi", "Islamabad", "London", "Berlin"];
cities.splice(3, 1);
```

Тут `splice` повертає рядок `London` і видаляє його з масиву cities. `cities` матиме значення `["Chicago", "Delhi", "Islamabad", "Berlin"]`.

Як ми бачили в останньому завданні, метод `slice` не змінює оригінальний масив, а повертає новий, який можна зберегти у змінну. Нагадаємо, що метод `slice` приймає два аргументи — індекси початку і кінця зрізу (кінець не включно) — і повертає ці елементи у новому масиві. Використання методу `slice` замість `splice` допомагає уникнути побічних ефектів зміни масиву.

# --instructions--

Перепишіть функцію `nonMutatingSplice`, використовуючи `slice` замість `splice`. Вона має обмежити переданий масив `cities` довжиною 3 і повернути новий масив, що містить лише перші три елементи.

Не змінюйте оригінальний масив, переданий у функцію.

# --hints--

Ваш код має використовувати метод `slice`.

```js
assert(__helpers.removeJSComments(code).match(/\.slice/g));
```

Ваш код не повинен використовувати метод `splice`.

```js
assert(!__helpers.removeJSComments(code).match(/\.?[\s\S]*?splice/g));
```

Ви не повинні змінювати оригінальний масив, переданий у функцію.

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

`nonMutatingSplice(["Chicago", "Delhi", "Islamabad", "London", "Berlin"])` має повертати `["Chicago", "Delhi", "Islamabad"]`.

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
