---
id: 6551eebe6cbb2e6cadf9b468
title: Крок 2
challengeType: 20
dashedName: step-2
---

# --description--

Змінні можуть зберігати значення різних типів даних. Ви щойно призначили ціле число, але якщо хочете представити текст, потрібно призначити рядок. Рядки — це послідовності символів, укладені в одинарні або подвійні лапки, але не можна починати рядок з одинарної лапки, а закінчувати подвійною або навпаки:

```py
string_1 = "I am a string"
string_2 = 'I am also a string'
string_3 = 'This is not valid"
```

Видаліть свою змінну `number` та її значення. Потім оголосіть іншу змінну з ім’ям `text` і призначте цій змінній рядок `'Hello World'`.

# --hints--

У вашому коді не повинно бути `number = 5`.

```js
const commentless_code = __helpers.python.removeComments(code);
assert.isFalse(/number\s*=\s*5/.test(commentless_code))
```

Ви повинні оголосити змінну з ім’ям `text`. Зверніть увагу, що ім’я змінної має бути на початку лінії.

```js
assert.match(code, /^text\s*=/m)
```

Ви повинні призначити рядок `'Hello World'` своїй змінній `text`. Пам’ятайте, що рядок потрібно укладати або в одинарні, або в подвійні лапки, і звертайте увагу на регістр літер.

```js
assert.match(code, /^text\s*=\s*("|')Hello World\1\s*(#.*)?$/m)
```

Ваш код містить неправильний синтаксис і/або неправильне відступлення.

```js
({test: () => assert(true) })
```

# --seed--

## --seed-contents--

```py
--fcc-editable-region--
number = 5
--fcc-editable-region--
```
