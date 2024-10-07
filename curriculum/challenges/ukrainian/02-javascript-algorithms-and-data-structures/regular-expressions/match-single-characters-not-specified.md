---
id: 587d7db6367417b2b2512b98
title: Збіги невказаного символа
challengeType: 1
forumTopicId: 301358
dashedName: match-single-characters-not-specified
---

# --description--

So far, you have created a set of characters that you want to match, but you could also create a set of characters that you do not want to match. These types of character sets are called <dfn>negated character sets</dfn>.

Щоб створити набір заперечних символів, поставте символ карет (`^`) після відкриваючої дужки та перед символами, для яких не хочете шукати збіги.

Наприклад, `/[^aeiou]/gi` знайде збіги для всіх символів, що не є голосними. Зверніть увагу, що для символів типу `.`, `!`, `[`, `@`, `/` та пробілів також будуть знайдені збіги: набір заперечних голосних символів голосних виключає лише символи голосних.

# --instructions--

Створіть регулярний вираз, що знаходить збіги для всіх символів, які не є числами чи голосними. Не забудьте включити відповідні прапорці у регулярному виразі.

# --hints--

Ваш регулярний вираз `myRegex` повинен знайти збіги для 9 елементів.

```js
assert(result.length == 9);
```

Ваш регулярний вираз `myRegex` має використати глобальний прапорець.

```js
assert(myRegex.flags.match(/g/).length == 1);
```

Ваш регулярний вираз `myRegex` має використати прапорець без урахування регістру.

```js
assert(myRegex.flags.match(/i/).length == 1);
```

# --seed--

## --seed-contents--

```js
let quoteSample = "3 blind mice.";
let myRegex = /change/; // Change this line
let result = myRegex; // Change this line
```

# --solutions--

```js
let quoteSample = "3 blind mice.";
let myRegex = /[^0-9aeiou]/gi; // Change this line
let result = quoteSample.match(myRegex); // Change this line
```
