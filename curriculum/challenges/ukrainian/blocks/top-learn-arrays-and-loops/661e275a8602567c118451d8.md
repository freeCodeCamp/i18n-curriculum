---
id: 661e275a8602567c118451d8
title: Вивчіть масиви та цикли. Урок №8
challengeType: 15
dashedName: learn-arrays-and-loops-lesson-h
---

# --description--

`filter()` — ще один корисний метод масиву. Метод `filter()` створює новий масив з усіх елементів, які проходять тест, реалізований наданою функцією. Синтаксис методу `filter()` такий:

```javascript
const numbers = [2, 5, 6, 1, 9, -1]

const newNumbers = numbers.filter((number) => {
  return number > 2;
});

console.log(newNumbers); // Output: [5, 6, 9]
```

Метод `filter()` створює новий масив з усіма елементами, які більші за 2. Метод `filter()` не змінює вхідний масив.

# --questions--

## --text--

Яким буде вивід даного фрагменту коду JavaScript?

```javascript
const strings = ['apple', 'banana', 'cherry', 'orange', 'kiwi', 'mango'];
const newStrings = strings.filter((string) => {
  return string.length > 5;
});

console.log(newStrings);
```

## --answers--

`['apple', 'banana', 'cherry', 'orange', 'kiwi', 'mango']`

---

`['apple', 'banana', 'cherry', 'orange', 'kiwi']`

---

`['banana, 'cherry', 'orange']`

---

`['banana', 'cherry', 'orange', 'kiwi', 'mango' ]`


## --video-solution--

3
