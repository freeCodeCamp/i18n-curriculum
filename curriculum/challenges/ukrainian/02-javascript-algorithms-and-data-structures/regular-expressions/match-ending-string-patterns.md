---
id: 587d7db7367417b2b2512b9e
title: Збіги кінця рядка
challengeType: 1
forumTopicId: 301352
dashedName: match-ending-string-patterns
---

# --description--

In the last challenge, you learned to use the caret character to search for patterns at the beginning of strings. There is also a way to search for patterns at the end of strings.

Ви можете виконати пошук по кінцях рядків, використовуючи символ долара `$` у кінці регулярного виразу.

```js
let theEnding = "This is a never ending story";
let storyRegex = /story$/;
storyRegex.test(theEnding);
let noEnding = "Sometimes a story will have to end";
storyRegex.test(noEnding);
```

Перший виклик `test` повернеться як `true`, тоді ж як другий повернеться як `false`.

# --instructions--

Використайте символ прив’язки (`$`), щоб знайти збіг рядка `caboose` у кінці рядка `caboose`.

# --hints--

Знайдіть `caboose` за допомогою символа долара `$` у регулярному виразі.

```js
assert(lastRegex.source == 'caboose$');
```

Ваш регулярний вираз не повинен містити жодних прапорців.

```js
assert(lastRegex.flags == '');
```

Знайдіть збіг для `caboose` у кінці рядка `The last car on a train is the caboose`

```js
lastRegex.lastIndex = 0;
assert(lastRegex.test('The last car on a train is the caboose'));
```

# --seed--

## --seed-contents--

```js
let caboose = "The last car on a train is the caboose";
let lastRegex = /change/; // Change this line
let result = lastRegex.test(caboose);
```

# --solutions--

```js
let caboose = "The last car on a train is the caboose";
let lastRegex = /caboose$/; // Change this line
let result = lastRegex.test(caboose);
```
