---
id: 5900f4591000cf542c50ff6b
title: 'Завдання 236: подарункові кошики'
challengeType: 1
forumTopicId: 301881
dashedName: problem-236-luxury-hampers
---

# --description--

Постачальники А та Б надали таку кількість продукції для ринку подарункових кошиків:

| Товар               | A    | Б    |
| ------------------- | ---- | ---- |
| Чорна ікра          | 5248 | 640  |
| Різдвяний пиріг     | 1312 | 1888 |
| Хамон               | 2624 | 3776 |
| Витриманий портвейн | 5760 | 3776 |
| Трюфелі             | 3936 | 5664 |

Хоча постачальники дуже стараються доставити свій товар в ідеальному стані, псування неминуче. Продукти зіпсувались.

Постачальники порівнюють свої показники, використовуючи два типи статистики:

- П’ять відсотків браку кожного продукту для постачальника дорівнюють кількості зіпсованих продуктів, поділеній на кількість доставлених продуктів, кожного продукту окремо.
- Загальний відсоток браку для постачальника дорівнює загальній кількості зіпсованих продуктів, поділеній на загальну кількість доставлених продуктів цього постачальника.

На своє здивування, постачальники виявили, що кожен з п’яти відсотків браку був гіршим (вищим) для Б, з однаковим коефіцієнтом (співвідношенням відсотків браку) $m > 1$. І все ж, парадоксально, загальний відсоток браку був гіршим для А, також з коефіцієнтом $m$.

Існує тридцять п’ять значень $m > 1$, за яких відбувається такий результат. Найменшим є $\frac{1476}{1475}$.

Яке найбільше можливе значення $m$? Надайте відповідь у вигляді дробу, скороченого до найменших спільних знаменників у вигляді `u/v`.

# --hints--

`luxuryHampers()` має повернути рядок.

```js
assert(typeof luxuryHampers() === 'string');
```

`luxuryHampers()` має повернути рядок `123/59`.

```js
assert.strictEqual(luxuryHampers(), '123/59');
```

# --seed--

## --seed-contents--

```js
function luxuryHampers() {

  return true;
}

luxuryHampers();
```

# --solutions--

```js
// solution required
```