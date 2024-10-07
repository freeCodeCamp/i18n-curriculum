---
id: 9d7123c8c441eeafaeb5bdef
title: Видалення елементів з масиву за допомогою slice замість splice
challengeType: 1
forumTopicId: 301236
dashedName: remove-elements-from-an-array-using-slice-instead-of-splice
---

# --description--

A common pattern while working with arrays is when you want to remove items and keep the rest of the array. JavaScript offers the `splice` method for this, which takes arguments for the index of where to start removing items, then the number of items to remove. If the second argument is not provided, the default is to remove items through the end. However, the `splice` method mutates the original array it is called on. Ось приклад:

```js
const cities = ["Chicago", "Delhi", "Islamabad", "London", "Berlin"];
cities.splice(3, 1);
```

Тут `splice` повертає рядок `London` і видаляє його із масиву міст. `cities` матиме значення `["Chicago", "Delhi", "Islamabad", "Berlin"]`.

Як ми бачили у попередньому завданні, метод `slice` не змінює вихідний масив, а повертає новий, який можна зберегти як змінну. Пригадайте, що метод `slice` використовує два аргументи для того, щоб почати і закінчити слайс (кінець не включається) та повертає ці елементи у новому масиві. Використання методу `slice` замість `splice` допомагає уникнути будь-яких побічних дій.

# --instructions--

Перепишіть функцію `nonMutatingSplice`, використовуючи `slice` замість `splice`. Він повинен обмежити наданий масив `cities` до довжини 3, і повернути новий масив лише із першими трьома елементами.

Не змінюйте вихідний масив, наданий до функції.

# --hints--

Ваш код повинен використовувати метод `slice`.

```js
assert(__helpers.removeJSComments(code).match(/\.slice/g));
```

Ваш код не повинен використовувати метод `splice`.

```js
assert(!__helpers.removeJSComments(code).match(/\.?[\s\S]*?splice/g));
```

Не змінюйте початковий масив, переданий до функції.

```js
assert.deepEqual(_inputCities, ["Chicago", "Delhi", "Islamabad", "London", "Berlin"]);
```

`nonMutatingSplice(["Chicago", "Delhi", "Islamabad", "London", "Berlin"])` має повертати `["Chicago", "Delhi", "Islamabad"]`.

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
