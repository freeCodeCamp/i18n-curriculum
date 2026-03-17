---
id: bd7123c9c444eddfaeb5bdef
title: Оголосити рядкові змінні
challengeType: 1
forumTopicId: 17557
dashedName: declare-string-variables
---

# --description--

Раніше ви використовували такий код, щоб оголосити змінну:

```js
var myName;
```

Але ви також можете оголосити рядкову змінну так:

```js
var myName = "your name";
```

`"your name"` називається <dfn>рядковим</dfn> <dfn>літералом</dfn>. Рядковий літерал, або рядок, — це послідовність нуля або більше символів, взятих у одинарні або подвійні лапки.

# --instructions--

Створіть дві нові рядкові змінні: `myFirstName` і `myLastName` та призначте їм значення вашого імені та прізвища відповідно.

# --hints--

`myFirstName` має бути рядком, що містить принаймні один символ.

```js
assert(
  (function () {
    if (
      typeof myFirstName !== 'undefined' &&
      typeof myFirstName === 'string' &&
      myFirstName.length > 0
    ) {
      return true;
    } else {
      return false;
    }
  })()
);
```

`myLastName` має бути рядком, що містить принаймні один символ.

```js
assert(
  (function () {
    if (
      typeof myLastName !== 'undefined' &&
      typeof myLastName === 'string' &&
      myLastName.length > 0
    ) {
      return true;
    } else {
      return false;
    }
  })()
);
```

# --seed--

## --seed-contents--

```js

```

# --solutions--

```js
var myFirstName = "Alan";
var myLastName = "Turing";
```
