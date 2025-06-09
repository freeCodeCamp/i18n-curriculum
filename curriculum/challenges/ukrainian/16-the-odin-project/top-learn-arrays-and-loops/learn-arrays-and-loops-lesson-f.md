---
id: 661e27598602567c118451d6
title: Вивчіть масиви та цикли. Урок №6
challengeType: 15
dashedName: learn-arrays-and-loops-lesson-f
---

# --description--

Цикл `for` — ще один тип циклу, який використовують для виконання блоку коду декілька разів. Цикл `for` використовують, якщо відома кількість ітерацій. Синтаксис циклу `for` такий:

```javascript
for (initialization; condition; increment/decrement) {
  // code block to be executed
}
```

Наприклад, наведений нижче фрагмент коду друкує числа від 1 до 5:

```javascript
for (let i = 1; i <= 5; i++) {
  console.log(i);
}
```

Щоб ітерувати над масивом за допомогою методу `for`, можна використати властивість довжини масиву. Наприклад, наведений нижче фрагмент коду надрукує елементи масиву:

```javascript
const arr = [1, 2, 3, 4, 5];
for (let i = 0; i < arr.length; i++) {
  console.log(arr[i]);
}
```

# --questions--

## --text--

Яким буде вивід даного фрагменту коду JavaScript?

```javascript
const items = ['apple', 'banana', 'cherry', 'date'];
for (let i = 1; i < items.length; i++) {
  console.log(items[i]);
}
```

## --answers--

```md
apple
banana
cherry
date
```

---

```md
banana
cherry
```

---

```md
apple
banana
cherry
```

---

```md
banana
cherry
date
```

## --video-solution--

4
