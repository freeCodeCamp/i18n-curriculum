---
id: bd7993c9ca9feddfaeb7bdef
title: поділ одного десяткового числа на інше за допомогою JavaScript
challengeType: 1
forumTopicId: 18255
dashedName: divide-one-decimal-by-another-with-javascript
---

# --description--

Тепер поділимо одне десяткове число на інше.

# --instructions--

Змініть `0.0` так, щоб `quotient` дорівнювало `2.2`.

# --hints--

Змінна `quotient` має дорівнювати `2.2`

```js
assert(quotient === 2.2);
```

Ви повинні використати оператор `/` для ділення 4.4 на 2

```js
assert(/4\.40*\s*\/\s*2\.*0*/.test(__helpers.removeJSComments(code)));
```

Змінна частка має бути призначена лише один раз

```js
assert(__helpers.removeJSComments(code).match(/quotient\s*=/g).length === 1);
```

# --seed--

## --seed-contents--

```js
const quotient = 0.0 / 2.0; // Change this line
```

# --solutions--

```js
const quotient = 4.4 / 2.0;
```
