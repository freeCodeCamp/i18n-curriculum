---
id: 56533eb9ac21ba0edf2244b7
title: Об’єднання рядків за допомогою оператора +
challengeType: 1
forumTopicId: 16802
dashedName: concatenating-strings-with-plus-operator
---

# --description--

In JavaScript, when the `+` operator is used with a `String` value, it is called the <dfn>concatenation</dfn> operator. You can build a new string out of other strings by <dfn>concatenating</dfn> them together.

**Наприклад:**

```js
'My name is Alan,' + ' I concatenate.'
```

**Примітка:** зверніть увагу на пробіли. Конкатенація не додає пробіли між об’єднаними рядками, вам потрібно додавати їх самостійно.

Наприклад:

```js
const ourStr = "I come first. " + "I come second.";
```

Рядок ` I come first. I come second.` відображатиметься у консолі.
# --instructions--

Побудуйте `myStr` з рядків `This is the start.` та `This is the end.`, використовуючи оператор `+`. Не забудьте використати пробіл між двома рядками.

# --hints--

`myStr` повинен містити один пробіл між двома рядками.

```js
assert(/start\. This/.test(myStr));
```

`myStr` should have a value of the string `This is the start. This is the end.`

```js
assert(myStr === 'This is the start. This is the end.');
```

Ви повинні використати оператор `+`, щоб побудувати `myStr`.

```js
assert(__helpers.removeJSComments(code).match(/(["']).*\1\s*\+\s*(["']).*\2/g));
```

Ви повинні використати ключове слово `const`, щоб створити `myStr`.

```js
assert(/const\s+myStr/.test(__helpers.removeJSComments(code)));
```

Ви повинні присвоїти результат до змінної `myStr`.

```js
assert(/myStr\s*=/.test(__helpers.removeJSComments(code)));
```

# --seed--

## --after-user-code--

```js
(function(){
  if(typeof myStr === 'string') {
    return 'myStr = "' + myStr + '"';
  } else {
    return 'myStr is not a string';
  }
})();
```

## --seed-contents--

```js
const myStr = ""; // Change this line
```

# --solutions--

```js
const myStr = "This is the start. " + "This is the end.";
```
