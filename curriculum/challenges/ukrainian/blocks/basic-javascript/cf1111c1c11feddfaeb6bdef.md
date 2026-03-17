---
id: cf1111c1c11feddfaeb6bdef
title: Ділення одного числа на інше за допомогою JavaScript
challengeType: 1
forumTopicId: 17566
dashedName: divide-one-number-by-another-with-javascript
---

# --description--

Ми також можемо поділити одне число на інше.

JavaScript використовує символ `/` для ділення.

**Приклад**

```js
const myVar = 16 / 2;
```

`myVar` тепер має значення `8`.
# --instructions--

Змініть `0`, щоб `quotient` дорівнювало `2`.

# --hints--

Змінна `quotient` має дорівнювати 2.

```js
assert(quotient === 2);
```

Ви маєте використати оператор `/`.

```js
assert(/\d+\s*\/\s*\d+/.test(__helpers.removeJSComments(code)));
```

# --seed--

## --seed-contents--

```js
const quotient = 66 / 0;
```

# --solutions--

```js
const quotient = 66 / 33;
```
