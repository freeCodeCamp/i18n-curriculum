---
id: 587d7b8c367417b2b2512b56
title: Use export to Share a Code Block
challengeType: 1
forumTopicId: 301219
dashedName: use-export-to-share-a-code-block
---

# --description--

Imagine a file called `math_functions.js` that contains several functions related to mathematical operations. One of them is stored in a variable, `add`, that takes in two numbers and returns their sum. You want to use this function in several different JavaScript files. In order to share it with these other files, you first need to `export` it.

```js
export const add = (x, y) => {
  return x + y;
}
```

بالأعلى طريقة شائعة لتصدير وظيفة واحدة (export single function)، ولكن يمكنك تحقيق الشيء نفسه هكذا:

```js
const add = (x, y) => {
  return x + y;
}

export { add };
```

عند تصدير (export) متغير أو وظيفة، يمكنك استيراده (import) في مِلَفّ آخر واستخدامه دون الحاجة إلى إعادة كتابة الكود. يمكنك تصدير (export) أشياء متعددة بتكرار المثال الأول لكل شيء تريد تصديره، أو بوضعها كلها في export statement من المثال الثاني، مثل هذا:

```js
export { add, subtract };
```

# --instructions--

هناك وظيفتان متعلقتين بالمقاطع النصية (strings) في المحرر. قم بعمل export لكليهما باستخدام الطريقة التي تختارها.

# --hints--

يجب عليك تصدير `uppercaseString` بشكل صحيح.

```js
assert(
  __helpers.removeJSComments(code).match(
    /(export\s+const\s+uppercaseString|export\s*{\s*(uppercaseString[^}]*|[^,]*,\s*uppercaseString\s*)})/g
  )
);
```

يجب عليك تصدير `lowercaseString` بشكل صحيح.

```js
assert(
  __helpers.removeJSComments(code).match(
    /(export\s+const\s+lowercaseString|export\s*{\s*(lowercaseString[^}]*|[^,]*,\s*lowercaseString\s*)})/g
  )
);
```

# --seed--

## --seed-contents--

```js
const uppercaseString = (string) => {
  return string.toUpperCase();
}

const lowercaseString = (string) => {
  return string.toLowerCase()
}
```

# --solutions--

```js
export const uppercaseString = (string) => {
  return string.toUpperCase();
}

export const lowercaseString = (string) => {
  return string.toLowerCase()
}
```
