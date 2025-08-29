---
id: 587d7db4367417b2b2512b92
title: Вилучення збігів
challengeType: 1
forumTopicId: 301340
dashedName: extract-matches
---

# --description--

So far, you have only been checking if a pattern exists or not within a string. You can also extract the actual matches you found with the `.match()` method.

Щоб використати метод `.match()`, застосуйте його до рядка та передайте регулярний вираз всередині дужок.

Ось приклад:

```js
"Hello, World!".match(/Hello/);
let ourStr = "Regular expressions";
let ourRegex = /expressions/;
ourStr.match(ourRegex);
```

У цьому випадку перший `match` поверне `["Hello"]`, а другий — `["expressions"]`.

Зверніть увагу, що синтаксис `.match` є протилежним до методу `.test`, яким ви користувались дотепер:

```js
'string'.match(/regex/);
/regex/.test('string');
```

# --instructions--

Застосуйте метод `.match()`, щоб вилучити рядок `coding`.

# --hints--

Результат (`result`) повинен містити рядок `coding`

```js
assert(result.join() === 'coding');
```

Ваш регулярний вираз `codingRegex` повинен шукати рядок `coding`

```js
assert(codingRegex.source === 'coding');
```

Використайте метод `.match()`.

```js
assert(__helpers.removeJSComments(code).match(/\.match\(.*\)/));
```

# --seed--

## --seed-contents--

```js
let extractStr = "Extract the word 'coding' from this string.";
let codingRegex = /change/; // Change this line
let result = extractStr; // Change this line
```

# --solutions--

```js
let extractStr = "Extract the word 'coding' from this string.";
let codingRegex = /coding/; // Change this line
let result = extractStr.match(codingRegex); // Change this line
```
