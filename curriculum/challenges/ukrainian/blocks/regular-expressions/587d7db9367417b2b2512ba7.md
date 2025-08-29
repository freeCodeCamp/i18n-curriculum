---
id: 587d7db9367417b2b2512ba7
title: Визначення точної кількості збігів
challengeType: 1
forumTopicId: 301365
dashedName: specify-exact-number-of-matches
---

# --description--

You can specify the lower and upper number of patterns with quantity specifiers using curly brackets. Sometimes you only want a specific number of matches.

Щоб вказати певну кількість шаблонів, просто поставте одне число у фігурні дужки.

Наприклад, щоб мати збіг лише зі словом `hah` з літерою `a`, що повторюється `3` рази, регулярний вираз має бути таким: `/ha{3}h/`.

```js
let A4 = "haaaah";
let A3 = "haaah";
let A100 = "h" + "a".repeat(100) + "h";
let multipleHA = /ha{3}h/;
multipleHA.test(A4);
multipleHA.test(A3);
multipleHA.test(A100);
```

Три виклики `test` повернуть `false`, `true` та `false` по черзі.

# --instructions--

Змініть регулярний вираз `timRegex`, щоб він збігався зі словом `Timber`, тільки якщо в ньому є чотири літери `m`.

# --hints--

У регулярного виразу мають бути фігурні дужки.

```js
assert(timRegex.source.match(/{.*?}/).length > 0);
```

Ваш регулярний вираз не повинен збігатися з рядком `Timber`

```js
timRegex.lastIndex = 0;
assert(!timRegex.test('Timber'));
```

Ваш регулярний вираз не повинен збігатися з рядком `Timmber`

```js
timRegex.lastIndex = 0;
assert(!timRegex.test('Timmber'));
```

Ваш регулярний вираз не повинен збігатися з рядком `Timmmber`

```js
timRegex.lastIndex = 0;
assert(!timRegex.test('Timmmber'));
```

Ваш регулярний вираз повинен збігатися з рядком `Timmmmber`

```js
timRegex.lastIndex = 0;
assert(timRegex.test('Timmmmber'));
```

Ваш регулярний вираз не повинен збігатися з рядком `Timber` з 30 літерами `m`.

```js
timRegex.lastIndex = 0;
assert(!timRegex.test('Ti' + 'm'.repeat(30) + 'ber'));
```

# --seed--

## --seed-contents--

```js
let timStr = "Timmmmber";
let timRegex = /change/; // Change this line
let result = timRegex.test(timStr);
```

# --solutions--

```js
let timStr = "Timmmmber";
let timRegex = /Tim{4}ber/; // Change this line
let result = timRegex.test(timStr);
```
