---
id: 5900f3f91000cf542c50ff0b
title: 'Завдання 141: вивчення прогресивних чисел n, які є квадратами'
challengeType: 1
forumTopicId: 301770
dashedName: problem-141-investigating-progressive-numbers-n-which-are-also-square
---

# --description--

При діленні натурального числа $n$ на $d$ отримуємо частку $q$ та остачу $r$. До того ж значення $d$, $q$ та $r$ є послідовними членами геометричної прогресії, але необов’язково в такому порядку.

Наприклад, якщо поділити 58 на 6, отримаємо частку 9 і остачу 4. Можна побачити, що 4, 6, 9 є послідовними членами геометричної прогресії (знаменником прогресії є $\frac{3}{2}$).

Такі числа $n$ називають прогресивними.

Деякі прогресивні числа, як-от 9 та 10404 = ${102}^2$, також є повними квадратами. Сума всіх прогресивних повних квадратів менших за сто тисяч дорівнює 124657.

Знайдіть суму всіх прогресивних повних квадратів менших за один трильйон (${10}^{12}$).

# --hints--

`progressivePerfectSquares()` має повернути `878454337159`.

```js
assert.strictEqual(progressivePerfectSquares(), 878454337159);
```

# --seed--

## --seed-contents--

```js
function progressivePerfectSquares() {

  return true;
}

progressivePerfectSquares();
```

# --solutions--

```js
// solution required
```