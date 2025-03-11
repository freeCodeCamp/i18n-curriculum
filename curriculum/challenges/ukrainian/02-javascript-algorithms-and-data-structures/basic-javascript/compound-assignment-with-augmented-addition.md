---
id: 56533eb9ac21ba0edf2244af
title: Складене присвоєння з додаванням
challengeType: 1
forumTopicId: 16661
dashedName: compound-assignment-with-augmented-addition
---

# --description--

In programming, it is common to use assignments to modify the contents of a variable. Remember that everything to the right of the equals sign is evaluated first, so we can say:

```js
myVar = myVar + 5;
```

додасть `5` до `myVar`. Оскільки це загальний шаблон, то існують оператори, які виконують математичні дії та присвоєння одночасно.

Одним з таких операторів є `+=`.

```js
let myVar = 1;
myVar += 5;
console.log(myVar);
```

На консолі відображатиметься `6`.

# --instructions--

Конвертуйте присвоєння для `a`, `b` та `c`, використовуючи оператор `+=`.

# --hints--

`a` має дорівнювати `15`.

```js
assert(a === 15);
```

`b` має дорівнювати `26`.

```js
assert(b === 26);
```

`c` має дорівнювати `19`.

```js
assert(c === 19);
```

Ви повинні використати оператор `+=` для кожної змінної.

```js
assert(__helpers.removeJSComments(code).match(/\+=/g).length === 3);
```

Не змінюйте код над зазначеним коментарем.

```js
assert(
  /let a = 3;/.test(__helpers.removeJSComments(code)) &&
    /let b = 17;/.test(__helpers.removeJSComments(code)) &&
    /let c = 12;/.test(__helpers.removeJSComments(code))
);
```

# --seed--

## --after-user-code--

```js
(function(a,b,c){ return "a = " + a + ", b = " + b + ", c = " + c; })(a,b,c);
```

## --seed-contents--

```js
let a = 3;
let b = 17;
let c = 12;

// Only change code below this line
a = a + 12;
b = 9 + b;
c = c + 7;
```

# --solutions--

```js
let a = 3;
let b = 17;
let c = 12;

a += 12;
b += 9;
c += 7;
```
