---
id: 5900f3d61000cf542c50fee7
title: 'Завдання 103: суми особливих підмножин (оптимум)'
challengeType: 1
forumTopicId: 301727
dashedName: problem-103-special-subset-sums-optimum
---

# --description--

Нехай $S(A)$ є сумою елементів множини A розміру n. Назвемо це особливою множиною сум, якщо для будь-яких двох непорожніх й неперетинних множин В і С виконуються умови:

1. $S(B) ≠ S(C)$; тобто суми підмножин не можуть бути рівними.
2. Якщо B містить більше елементів ніж C, тоді $S(B) > S(C)$.

Якщо сума $S(A)$ змінімізована до заданого значення n, її називають оптимальною особливою множиною сум. Нижче наведено перші п’ять оптимальних особливих множин сум.

$$\begin{align}   & n = 1: \\{1\\} \\\\
  & n = 2: \\{1, 2\\} \\\\   & n = 3: \\{2, 3, 4\\} \\\\
  & n = 4: \\{3, 5, 6, 7\\} \\\\   & n = 5: \\{6, 9, 11, 12, 13\\} \\\\
\end{align}$$

Схоже, що для даної оптимальної множини $A = \\{a_1, a_2, \ldots, a_n\\}$, наступною оптимальною множиною є $B = \\{b, a_1 + b, a_2 + b, \ldots, a_n + b\\}$, де b — «середній» елемент попереднього рядка.

За цим правилом можна очікувати, що оптимальною множиною за умови $n = 6$ є $A = \\{11, 17, 20, 22, 23, 24\\}$, де $S(A) = 117$. Однак ця множина не є оптимальною, оскільки ми просто застосували алгоритм, щоб отримати близьку до оптимальної множину. Оптимальною множиною за умови $n = 6$ є $A = \\{11, 18, 19, 20, 22, 25\\}$, де $S(A) = 115$, а відповідним рядком є `111819202225`.

Дано, що A є оптимальною множиною сум за умови $n = 7$. Знайдіть рядок цієї множини.

**Примітка:** це завдання пов’язане із завданнями №105 та №106.

# --hints--

`optimumSpecialSumSet()` має повернути рядок `20313839404245`.

```js
assert.strictEqual(optimumSpecialSumSet(), '20313839404245');
```

# --seed--

## --seed-contents--

```js
function optimumSpecialSumSet() {

  return true;
}

optimumSpecialSumSet();
```

# --solutions--

```js
// solution required
```