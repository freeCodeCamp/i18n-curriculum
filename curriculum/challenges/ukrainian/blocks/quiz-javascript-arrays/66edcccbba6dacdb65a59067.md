---
id: 66edcccbba6dacdb65a59067
title: Тест на масиви JavaScript
challengeType: 8
dashedName: quiz-javascript-arrays
---

# --description--

Щоб пройти тест, ви повинні правильно відповісти щонайменше на 18 із 20 питань нижче.

# --quizzes--

## --quiz--

### --question--

#### --text--

Яким буде вихідний результат для наступного коду?

```js
const numbers = [1, 2, 3];
console.log(numbers[10]);
```

#### --distractors--

`[1, 2, 3]`

---

`null`

---

`10`

#### --answer--

`undefined`

### --question--

#### --text--

Який із наведених способів є правильним для доступу до рядка `"Jessica"` з масиву `developers`?

#### --distractors--

```js
const developers = ["Jessica", "Naomi", "Tom"];
developers[1]
```

---

```js
const developers = ["Jessica", "Naomi", "Tom"];
developers[2]
```

---

```js
const developers = ["Jessica", "Naomi", "Tom"];
developers[-1]
```

#### --answer--

```js
const developers = ["Jessica", "Naomi", "Tom"];
developers[0]
```

### --question--

#### --text--

Яке значення буде призначене змінній `index`?

```js
const numbers = [10, 20, 30, 40];
const index = numbers.indexOf(20);
console.log(index);
```

#### --distractors--

2

---

3

---

-1

#### --answer--

1

### --question--

#### --text--

Що робить синтаксис rest?

#### --distractors--

Він використовується для розбиття рядка на масив підрядків.

---

Він використовується для додавання або видалення елементів з будь-якої позиції в масиві.

---

Він використовується для додавання елементів у кінець масиву і повертає нову довжину.

#### --answer--

Він захоплює залишкові елементи масиву у новий масив.

### --question--

#### --text--

Що таке деструктуризація масиву?

#### --distractors--

Вона використовується для об’єднання всіх елементів масиву в один рядок.

---

Вона використовується для перевірки, чи містить масив певне значення.

---

Вона використовується для видалення останнього елемента з масиву і повертає цей видалений елемент.

#### --answer--

Вона використовується для вилучення значень з масивів і призначення їх змінним у більш стислому та читабельному вигляді.

### --question--

#### --text--

Яке значення буде призначене змінній `arr2`?

```js
const arr1 = [1, 2, 3];
const arr2 = [...arr1, 4, 5];
console.log(arr2);
```

#### --distractors--

`[4, 5, 1, 2, 3]`

---

`[1, 2, [3, 4, 5]]`

---

`[1, 2, 3]`

#### --answer--

`[1, 2, 3, 4, 5]`

### --question--

#### --text--

Що цей код виведе в консоль?

```js
const colors = ["red", "blue", "green", "yellow"];
colors.splice(1, 2, "purple");
console.log(colors);
```

#### --distractors--

`["red", "blue", "green", "yellow"]`

---

`["red", "blue", "yellow"]`

---

`["red", "yellow"]`

#### --answer--

`["red", "purple", "yellow"]`

### --question--

#### --text--

Яке значення буде призначене змінній `slicedArr`?

```js
const arr = ["apple", "banana", "cherry", "date"];
const slicedArr = arr.slice(1, 3);
console.log(slicedArr);
```

#### --distractors--

`["apple", "banana"]`

---

`["cherry", "date"]`

---

`["apple", "cherry"]`

#### --answer--

`["banana", "cherry"]`

### --question--

#### --text--

Який метод повертає перший індекс заданого елемента в масиві?

#### --distractors--

`firstIndex()`

---

`lastIndex()`

---

`searchIndex()`

#### --answer--

`indexOf()`

### --question--

#### --text--

Який метод використовується для видалення першого елемента з масиву і повертає цей видалений елемент?

#### --distractors--

`pop()`

---

`slice()`

---

`splice()`

#### --answer--

`shift()`

### --question--

#### --text--

Що робить метод `concat()`?

#### --distractors--

Об’єднує елементи масиву в рядок.

---

Додає елемент на початок масиву.

---

Видаляє елемент з масиву.

#### --answer--

Об’єднує два масиви в новий масив.

### --question--

#### --text--

Яким буде вихідний результат цього коду?

```js
const fruits = ["apple", "banana", "cherry", "apple", "orange"];

fruits.splice(0, 1);

console.log(fruits);
```

#### --distractors--

`["apple", "banana", "cherry", "apple", "orange"]`

---

`["apple", "banana", "cherry"]`

---

`["cherry", 'apple']`

#### --answer--

`["banana", "cherry", "apple", "orange"]`

### --question--

#### --text--

Що робить метод `includes()`?

#### --distractors--

Він використовується для розбиття рядка на масив підрядків.

---

Він використовується для об’єднання всіх елементів масиву в один рядок.

---

Він використовується для додавання або видалення елементів з будь-якої позиції в масиві.

#### --answer--

Він використовується для перевірки, чи містить масив певне значення.

### --question--

#### --text--

Який із наведених методів використовується для обернення масиву на місці?

#### --distractors--

`reversed()`

---

`reverseArr()`

---

`reversing()`

#### --answer--

`reverse()`

### --question--

#### --text--

Що таке двовимірний масив?

#### --distractors--

Масив, який містить лише літерали об’єктів.

---

Масив фіксованої довжини.

---

Масив чисел з плаваючою комою.

#### --answer--

Масив масивів.

### --question--

#### --text--

Що з наведеного є правдою про метод `indexOf()` у масивах?

#### --distractors--

Він завжди повертає останнє входження елемента.

---

Він викликає помилку, якщо елемент не знайдено.

---

Він вимагає, щоб масив був відсортований.

#### --answer--

Він повертає `-1`, якщо елемент не знайдено.

### --question--

#### --text--

Який із наведених не є методом масиву?

#### --distractors--

`includes()`

---

`pop()`

---

`push()`

#### --answer--

`trim()`

### --question--

#### --text--

Яким буде вихідний результат для наступного коду?

```js
const arr = ["o", "l", "l", "e", "h"];
console.log(arr.join(""));
```

#### --distractors--

`["o", "l", "l", "e", "h"]`

---

`"hello"`

---

`undefined`

#### --answer--

`"olleh"`

### --question--

#### --text--

Яким буде результат використання методу `shift()` на порожньому масиві?

#### --distractors--

`TypeError`

---

`[]`

---

`null`

#### --answer--

`undefined`

### --question--

#### --text--

Який метод поверне новий масив, не змінюючи оригінальний масив?

#### --distractors--

`shift()`

---

`pop()`

---

`push()`

#### --answer--

`slice()`
