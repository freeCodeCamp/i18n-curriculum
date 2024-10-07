---
id: 56533eb9ac21ba0edf2244b7
title: ربط المقاطع النصية باستخدام مشغل الجمع
challengeType: 1
videoUrl: 'https://scrimba.com/c/cNpM8AN'
forumTopicId: 16802
dashedName: concatenating-strings-with-plus-operator
---

# --description--

In JavaScript, when the `+` operator is used with a `String` value, it is called the <dfn>concatenation</dfn> operator. You can build a new string out of other strings by <dfn>concatenating</dfn> them together.

**مثال**

```js
'My name is Alan,' + ' I concatenate.'
```

**ملاحظة:** احترس من المسافات. لإن مشغِّل الضم لا يضيف مسافات بين المقاطع الذي يجمعها، لذا ستحتاج إلى إضافتها بنفسك.

مثال:

```js
const ourStr = "I come first. " + "I come second.";
```

The string `I come first. I come second.` would be displayed in the console.
# --instructions--

أنشئ `myStr` من المقاطع الآتية `This is the start.` و `This is the end.` باستخدام المشغل `+`. تيقن من تضمين مسافة بين المقاطع.

# --hints--

يجب أن يوجد حرف فراغ واحد بين المقطعين في `myStr`.

```js
assert(/start\. This/.test(myStr));
```

`myStr` should have a value of the string `This is the start. This is the end.`

```js
assert(myStr === 'This is the start. This is the end.');
```

يجب عليك استخدام مشغل `+` لبناء `myStr`.

```js
assert(__helpers.removeJSComments(code).match(/(["']).*\1\s*\+\s*(["']).*\2/g));
```

يجب أن يتم إنشاء `myStr` باستخدام كلمة `const`.

```js
assert(/const\s+myStr/.test(__helpers.removeJSComments(code)));
```

يجب عليك تعيين النتيجة إلى المتغير `myStr`.

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
