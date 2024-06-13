---
id: 5900f4cb1000cf542c50ffdd
title: 'Завдання 350: обмеження найменшого найбільшого та найбільшого найменшого'
challengeType: 1
forumTopicId: 302010
dashedName: problem-350-constraining-the-least-greatest-and-the-greatest-least
---

# --description--

Список розміром $n$ є послідовністю з $n$ натуральних чисел. Прикладами можуть бути (2, 4, 6), (2, 6, 4), (10, 6, 15, 6) та (11).

Найбільший спільний дільник ($нсд$) списку — це найбільше натуральне число, на яке ділиться кожен елемент списку. Приклади: $нсд(2, 6, 4) = 2$, $нсд(10, 6, 15, 6) = 1$ та $нсд(11) = 11$.

Найменше спільне кратне ($нск$) списку — це найменше натуральне число, яке ділиться на кожен елемент списку. Приклади: $нск(2, 6, 4) = 12$, $нск(10, 6, 15, 6) = 30$ та $нск(11) = 11$.

Нехай $f(G, L, N)$ буде кількістю списків розміром $N$ за умови $нсд ≥ G$ та $нск ≤ L$. Наприклад:

$$\begin{align}   & f(10, 100, 1) = 91 \\\\
  & f(10, 100, 2) = 327 \\\\   & f(10, 100, 3) = 1135 \\\\
  & f(10, 100, 1000)\bmod {101}^4 = 3\\,286\\,053 \end{align}$$

Знайдіть $f({10}^6, {10}^{12}, {10}^{18})\bmod {101}^4$.

# --hints--

`leastGreatestAndGreatestLeast()` має повернути `84664213`.

```js
assert.strictEqual(leastGreatestAndGreatestLeast(), 84664213);
```

# --seed--

## --seed-contents--

```js
function leastGreatestAndGreatestLeast() {

  return true;
}

leastGreatestAndGreatestLeast();
```

# --solutions--

```js
// solution required
```