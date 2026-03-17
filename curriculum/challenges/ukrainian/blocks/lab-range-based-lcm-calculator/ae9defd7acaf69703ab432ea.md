---
id: ae9defd7acaf69703ab432ea
title: реалізувати калькулятор НСК для діапазону чисел
challengeType: 26
dashedName: implement-a-range-based-lcm-calculator
---

# --description--

У цій лабораторній роботі ви створите функцію, яка приймає масив із двох чисел і повертає найменше спільне кратне (НСК) цих двох чисел та всіх чисел між ними.

**Мета**: Виконайте наведені нижче історії користувача та пройдіть усі тести, щоб завершити лабораторну роботу.

**Історії користувача**

1. У вас має бути `smallestCommons` функція, яка приймає масив із двох чисел як аргумент.
1. `smallestCommons` функція має повертати найменше спільне кратне, яке рівно ділиться на обидва числа та всі послідовні числа в діапазоні між ними.
1. Функція має обробляти вхідні дані, де два числа не йдуть у числовому порядку.

# --hints--

У вас має бути `smallestCommons` функція.

```js
assert.isFunction(smallestCommons);
```

`smallestCommons([1, 5])` має повертати число.

```js
assert.isNumber(smallestCommons([1, 5]));
```

`smallestCommons([1, 5])` має повертати `60`.

```js
assert.strictEqual(smallestCommons([1, 5]), 60);
```

`smallestCommons([5, 1])` має повертати `60`.

```js
assert.strictEqual(smallestCommons([5, 1]), 60);
```

`smallestCommons([2, 10])` має повертати `2520`.

```js
assert.strictEqual(smallestCommons([2, 10]), 2520);
```

`smallestCommons([1, 13])` має повертати `360360`.

```js
assert.strictEqual(smallestCommons([1, 13]), 360360);
```

`smallestCommons([23, 18])` має повертати `6056820`.

```js
assert.strictEqual(smallestCommons([23, 18]), 6056820);
```

# --seed--

## --seed-contents--

```js

```

# --solutions--

```js
function smallestCommons(arr) {
  let [min, max] = arr.sort((a, b) => a - b);

  function gcd(a, b) {
    return b === 0 ? a : gcd(b, a % b);
  }

  function lcm(a, b) {
    return (a * b) / gcd(a, b);
  }

  let multiple = min;

  for (let i = min + 1; i <= max; i++) {
    multiple = lcm(multiple, i);
  }

  return multiple;
}
```
