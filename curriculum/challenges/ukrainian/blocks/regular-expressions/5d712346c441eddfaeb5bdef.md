---
id: 5d712346c441eddfaeb5bdef
title: знайти всі числа
challengeType: 1
forumTopicId: 18181
dashedName: match-all-numbers
---

# --description--

Ви вивчили скорочення для загальних шаблонів рядків, таких як алфавітно-цифрові символи. Ще один загальний шаблон — це пошук лише цифр або чисел.

Скорочення для пошуку символів-цифр — це `\d` з нижнім регістром `d`. Це еквівалентно класу символів `[0-9]`, який шукає один символ будь-якого числа від нуля до дев’яти.

# --instructions--

Використайте скорочений клас символів `\d`, щоб порахувати, скільки цифр у назвах фільмів. Записані словами числа ("six" замість 6) не враховуються.

# --hints--

Ваш регулярний вираз має використовувати скорочений клас символів для пошуку цифр

```js
assert(/\\d/.test(numRegex.source));
```

Ваш регулярний вираз має використовувати глобальний прапорець.

```js
assert(numRegex.global);
```

Ваш регулярний вираз має знайти 1 цифру у рядку `9`.

```js
assert('9'.match(numRegex).length == 1);
```

Ваш регулярний вираз має знайти 2 цифри у рядку `Catch 22`.

```js
assert('Catch 22'.match(numRegex).length == 2);
```

Ваш регулярний вираз має знайти 3 цифри у рядку `101 Dalmatians`.

```js
assert('101 Dalmatians'.match(numRegex).length == 3);
```

Ваш регулярний вираз не має знайти цифр у рядку `One, Two, Three`.

```js
assert('One, Two, Three'.match(numRegex) == null);
```

Ваш регулярний вираз має знайти 2 цифри у рядку `21 Jump Street`.

```js
assert('21 Jump Street'.match(numRegex).length == 2);
```

Ваш регулярний вираз має знайти 4 цифри у рядку `2001: A Space Odyssey`.

```js
assert('2001: A Space Odyssey'.match(numRegex).length == 4);
```

# --seed--

## --seed-contents--

```js
let movieName = "2001: A Space Odyssey";
let numRegex = /change/; // Change this line
let result = movieName.match(numRegex).length;
```

# --solutions--

```js
let movieName = "2001: A Space Odyssey";
let numRegex = /\d/g; // Change this line
let result = movieName.match(numRegex).length;
```
