---
id: 5cdafbc32913098997531680
title: أكمل كائن Promise باستخدام resolve و reject
challengeType: 1
forumTopicId: 301196
dashedName: complete-a-promise-with-resolve-and-reject
---

# --description--

A promise has three states: `pending`, `fulfilled`, and `rejected`. The promise you created in the last challenge is forever stuck in the `pending` state because you did not add a way to complete the promise. The `resolve` and `reject` parameters given to the promise argument are used to do this. `resolve` is used when you want your promise to succeed, and `reject` is used when you want it to fail. These are methods that take an argument, as seen below.

```js
const myPromise = new Promise((resolve, reject) => {
  if(condition here) {
    resolve("Promise was fulfilled");
  } else {
    reject("Promise was rejected");
  }
});
```

المثال الوارد أعلاه يستخدم مقاطع (strings) نصية كمعطى (argument) لهذه الوظائف (functions)، ولكن يمكن أن تكون أي شيء حقا. في كثير من الأحيان، قد يكون كائناً، يمكنك استخدام البيانات منه، لوضع البيانات على موقعك أو في أي مكان آخر.

# --instructions--

اجعل كائن promise يتعامل مع النجاح والفشل. إذا كان `responseFromServer` صحيحاً `true`، ففعيل طريقة `resolve` لإكمال كائن promise بنجاح. مرر `resolve` مقطع نصي بقيمة `We got the data`. إذا كانت حالة `responseFromServer` بقيمة `false`، استخدم طريقة `reject` كبديل و مررها المقطع النصي (string) الآتي: `Data not received`.

# --hints--

`resolve` يجب أن تُستدعى مع الـ string المتوقع عندما يكون شرط `if` صحيح، اي `true`.

```js
assert(
  __helpers.removeJSComments(code).match(/if\s*\(\s*responseFromServer\s*\)\s*{\s*resolve\s*\(\s*('|"|`)We got the data\1\s*\)(\s*|\s*;\s*)}/g)
);
```

`reject` يجب أن تُستدعى مع الـ string المتوقع عندما يكون شرط `if` خاطئ، اي `false`.

```js
assert(
  __helpers.removeJSComments(code).match(/}\s*else\s*{\s*reject\s*\(\s*('|"|`)Data not received\1\s*\)(\s*|\s*;\s*)}/g)
);
```

# --seed--

## --seed-contents--

```js
const makeServerRequest = new Promise((resolve, reject) => {
  // responseFromServer represents a response from a server
  let responseFromServer;

  if(responseFromServer) {
    // Change this line
  } else {  
    // Change this line
  }
});
```

# --solutions--

```js
const makeServerRequest = new Promise((resolve, reject) => {
  // responseFromServer represents a response from a server
  let responseFromServer;

  if(responseFromServer) {
    resolve("We got the data");
  } else {  
    reject("Data not received");
  }
});
```
