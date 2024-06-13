---
id: 5900f4951000cf542c50ffa8
title: 'Завдання 297: представлення Цекендорфа'
challengeType: 1
forumTopicId: 301949
dashedName: problem-297-zeckendorf-representation
---

# --description--

Кожне нове значення у послідовності Фібоначчі дорівнює сумі двох попередніх значень.

Починаючи з 1 та 2, першими десятьма значеннями будуть 1, 2, 3, 5, 8, 13, 21, 34, 55, 89.

Кожне натуральне число можна унікально записати як суму непослідовних значень послідовності Фібоначчі. Наприклад, 100 = 3 + 8 + 89.

Така сума називається представленням Цекендорфа.

Нехай $z(n)$ буде кількістю значень в представленні Цекендорфа числа $n$ для будь-якого цілого числа $n>0$.

Таким чином, $z(5) = 1$, $z(14) = 2$, $z(100) = 3$ тощо.

$\sum z(n) = 7\\,894\\,453$ за умови $0 &lt; n &lt; {10}^6$.

Знайдіть $\sum z(n)$ за умови $0 &lt; n &lt; {10}^{17}$.

# --hints--

`zeckendorfRepresentation()` має повернути `2252639041804718000`.

```js
assert.strictEqual(zeckendorfRepresentation(), 2252639041804718000);
```

# --seed--

## --seed-contents--

```js
function zeckendorfRepresentation() {

  return true;
}

zeckendorfRepresentation();
```

# --solutions--

```js
// solution required
```