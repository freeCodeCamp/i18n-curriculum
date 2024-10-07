---
id: 587d7daa367417b2b2512b6b
title: Split a String into an Array Using the split Method
challengeType: 1
forumTopicId: 18305
dashedName: split-a-string-into-an-array-using-the-split-method
---

# --description--

The `split` method splits a string into an array of strings. It takes an argument for the delimiter, which can be a character to use to break up the string or a regular expression. For example, if the delimiter is a space, you get an array of words, and if the delimiter is an empty string, you get an array of each character in the string.

في ما يلي مثالان يقسمان string واحد بمسافات، ثم آخر بأرقام باستخدام regular expression:

```js
const str = "Hello World";
const bySpace = str.split(" ");

const otherString = "How9are7you2today";
const byDigits = otherString.split(/\d/);
```

`bySpace` ستكون له القيمة`["Hello", "World"]` and `byDigits` ستكون له القيمة `["How", "are", "you", "today"]`.

نظرًا لأن ال strings غير قابلة للتغيير، فإن طريقة `split` تجعل من الأسهل التعامل معهم.

# --instructions--

استخدم طريقة `split` داخل دالة `splitify` لتقسيم `str` إلى array من الكلمات. يجب أن تعيد الدالة array. لاحظ أن الكلمات لا تفصل دائما بمسافات ولا ينبغي أن تحتوي ال array على علامات الترقيم.

# --hints--

يجب أن يستخدم الكود الخاص بك دالة `split`.

```js
assert(__helpers.removeJSComments(code).match(/\.split/g));
```

`splitify("Hello World,I-am code")` يجب ان يعيد `["Hello", "World", "I", "am", "code"]`.

```js
assert(
  JSON.stringify(splitify('Hello World,I-am code')) ===
    JSON.stringify(['Hello', 'World', 'I', 'am', 'code'])
);
```

`splitify("Earth-is-our home")` يجب ان يعيد `["Earth", "is", "our", "home"]`.

```js
assert(
  JSON.stringify(splitify('Earth-is-our home')) ===
    JSON.stringify(['Earth', 'is', 'our', 'home'])
);
```

`splitify("This.is.a-sentence")` يجب ان يعيد `["This", "is", "a", "sentence"]`.

```js
assert(
  JSON.stringify(splitify('This.is.a-sentence')) ===
    JSON.stringify(['This', 'is', 'a', 'sentence'])
);
```

# --seed--

## --seed-contents--

```js
function splitify(str) {
  // Only change code below this line


  // Only change code above this line
}

splitify("Hello World,I-am code");
```

# --solutions--

```js
function splitify(str) {
  return str.split(/\W/);
}
```
