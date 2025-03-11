---
id: 56533eb9ac21ba0edf2244b4
title: Цитування рядків одинарними лапками
challengeType: 1
forumTopicId: 18260
dashedName: quoting-strings-with-single-quotes
---

# --description--

<dfn>String</dfn> values in JavaScript may be written with single or double quotes, as long as you start and end with the same type of quote. Unlike some other programming languages, single and double quotes work the same in JavaScript.

```js
const doubleQuoteStr = "This is a string"; 
const singleQuoteStr = 'This is also a string';
```

Іноді можна використати обидва типи лапок в одному рядку. Наприклад, коли потрібно відтворити розмову в рядку і взяти її в лапки. Або ж, коли ви зберігаєте тег `<a>` з різними атрибутами в лапках і все в межах одного рядка.

```js
const conversation = 'Finn exclaims to Jake, "Algebraic!"';
```

Однак проблема виникає тоді, коли вам потрібно використати зовнішні лапки в межах рядка. Пам’ятайте, що на початку і в кінці рядка використовуються ті ж самі лапки. Але якщо ви використаєте ці лапки всередині рядка, то рядок закінчиться швидше і це призведе до помилки.

```js
const goodStr = 'Jake asks Finn, "Hey, let\'s go on an adventure?"'; 
const badStr = 'Finn responds, "Let's go!"';
```

В такому випадку `badStr` покаже помилку.

У <dfn>goodStr</dfn> вище можна спокійно використати лапки, додавши зворотну скісну риску `\` як екранований символ.

**Примітка:** не плутайте зворотну скісну риску `\` зі скісною рискою `/`. Вони мають різні функції.

# --instructions--

Змініть поданий рядок на рядок з одинарними лапками спочатку і вкінці, не використовуючи екрановані символи.

Наразі тег `<a>` у рядку використовує подвійні лапки всюди. Вам потрібно буде змінити зовнішні лапки на одинарні лапки, щоб видалити екрановані символи.

# --hints--

Ви повинні видалити всі зворотні скісні риски (`\`).

```js
assert(
  !/\\/g.test(__helpers.removeJSComments(code)) &&
    myStr.match(
      '\\s*<a href\\s*=\\s*"http://www.example.com"\\s*target\\s*=\\s*"_blank">\\s*Link\\s*</a>\\s*'
    )
);
```

Ви повинні мати дві одинарні лапки `'` та чотири подвійні лапки `"`.

```js
assert(__helpers.removeJSComments(code).match(/"/g).length === 4 && __helpers.removeJSComments(code).match(/'/g).length === 2);
```

# --seed--

## --seed-contents--

```js
const myStr = "<a href=\"http://www.example.com\" target=\"_blank\">Link</a>";
```

# --solutions--

```js
const myStr = '<a href="http://www.example.com" target="_blank">Link</a>';
```
