---
id: cf1111c1c12feddfaeb3bdef
title: Використання умовної логіки з операторами if
challengeType: 1
forumTopicId: 18348
dashedName: use-conditional-logic-with-if-statements
---

# --description--

`if` інструкції використовуються для прийняття рішень у коді. Ключове слово `if` каже JavaScript виконати код у фігурних дужках за певних умов, визначених у круглих дужках. Ці умови відомі як `Boolean` умови, і вони можуть бути лише `true` або `false`.

Коли умова оцінюється як `true`, програма виконує інструкцію всередині фігурних дужок. Коли булева умова оцінюється як `false`, інструкція всередині фігурних дужок не виконується.

**Псевдокод**

<blockquote>if (<i>умова істинна</i>) {<br>  <i>інструкція виконується</i><br>}</blockquote>

**Приклад**

```js
function test(myCondition) {
  if (myCondition) {
    return "It was true";
  }
  return "It was false";
}

test(true);
test(false);
```

`test(true)` повертає рядок `It was true`, а `test(false)` повертає рядок `It was false`.

Коли `test` викликається зі значенням `true`, інструкція `if` оцінює `myCondition`, щоб перевірити, чи є воно `true` чи ні. Оскільки воно є `true`, функція повертає `It was true`. Коли ми викликаємо `test` зі значенням `false`, `myCondition` *не* є `true`, і інструкція у фігурних дужках не виконується, а функція повертає `It was false`.

# --instructions--

Створіть інструкцію `if` всередині функції, щоб повертати `Yes, that was true`, якщо параметр `wasThatTrue` є `true`, і повертати `No, that was false` в іншому випадку.

# --hints--

`trueOrFalse` має бути функцією

```js
assert(typeof trueOrFalse === 'function');
```

`trueOrFalse(true)` має повертати рядок

```js
assert(typeof trueOrFalse(true) === 'string');
```

`trueOrFalse(false)` має повертати рядок

```js
assert(typeof trueOrFalse(false) === 'string');
```

`trueOrFalse(true)` має повертати рядок `Yes, that was true`

```js
assert(trueOrFalse(true) === 'Yes, that was true');
```

`trueOrFalse(false)` має повертати рядок `No, that was false`

```js
assert(trueOrFalse(false) === 'No, that was false');
```

# --seed--

## --seed-contents--

```js
function trueOrFalse(wasThatTrue) {
  // Only change code below this line



  // Only change code above this line

}
```

# --solutions--

```js
function trueOrFalse(wasThatTrue) {
  if (wasThatTrue) {
    return "Yes, that was true";
  }
  return "No, that was false";
}
```
