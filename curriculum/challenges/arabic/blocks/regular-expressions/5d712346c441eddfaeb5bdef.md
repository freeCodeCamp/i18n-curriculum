---
id: 5d712346c441eddfaeb5bdef
title: مطابقة كل الأرقام
challengeType: 1
forumTopicId: 18181
dashedName: match-all-numbers
---

# --description--

تعلمت اختصارات لأنماط السلاسل النصية الشائعة مثل الأبجدي الرقمي. نمط شائع آخر هو البحث عن الأرقام فقط أو الأرقام الرقمية.

الاختصار للبحث عن أحرف الأرقام هو `\d`، بحرف `d` صغير. هذا يعادل صنف الأحرف `[0-9]`، الذي يبحث عن حرف واحد لأي رقم بين الصفر والتسعة.

# --instructions--

استخدم صنف الأحرف المختصر `\d` لحساب عدد الأرقام في عناوين الأفلام. الأرقام المكتوبة بالكلمات (مثل "six" بدلاً من 6) لا تُحتسب.

# --hints--

يجب أن يستخدم التعبير النمطي الخاص بك حرف الاختصار لمطابقة أحرف الأرقام

```js
assert(/\\d/.test(numRegex.source));
```

يجب أن يستخدم التعبير النمطي الخاص بك العلامة العامة.

```js
assert(numRegex.global);
```

يجب أن يجد التعبير النمطي رقمًا واحدًا في السلسلة `9`.

```js
assert('9'.match(numRegex).length == 1);
```

يجب أن يجد التعبير النمطي رقمين في السلسلة `Catch 22`.

```js
assert('Catch 22'.match(numRegex).length == 2);
```

يجب أن يجد التعبير النمطي ثلاثة أرقام في السلسلة `101 Dalmatians`.

```js
assert('101 Dalmatians'.match(numRegex).length == 3);
```

يجب أن لا يجد التعبير النمطي أي أرقام في السلسلة `One, Two, Three`.

```js
assert('One, Two, Three'.match(numRegex) == null);
```

يجب أن يجد التعبير النمطي رقمين في السلسلة `21 Jump Street`.

```js
assert('21 Jump Street'.match(numRegex).length == 2);
```

يجب أن يجد التعبير النمطي أربعة أرقام في السلسلة `2001: A Space Odyssey`.

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
