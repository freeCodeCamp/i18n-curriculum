---
id: bd7123c9c443eddfaeb5bdef
title: أعلان المتغيرات في JavaScript
challengeType: 1
videoUrl: 'https://scrimba.com/c/cNanrHq'
forumTopicId: 17556
dashedName: declare-javascript-variables
---

# --description--

In computer science, <dfn>data</dfn> is anything that is meaningful to the computer. JavaScript provides eight different <dfn>data types</dfn> which are `undefined`, `null`, `boolean`, `string`, `symbol`, `bigint`, `number`, and `object`.

على سبيل المثال، يقوم الحاسوب بالتمييز بين الأرقام، مثل الرَّقَم `12` و `strings` مثل `"12"` و `"dog"` أو `"123 cats"`, وهي مجموعات من الرموز. يمكن للحواسيب عمليات رياضية على الأعداد، ولكن ليس على المقاطع النصية (strings).

تسمح <dfn>المتغيرات</dfn> للحواسيب بتخزين البيانات ومعالجتها بطريقة ديناميكية. ويفعلوا ذلك باستخدام "المسمى" للإشارة إلى البيانات بدلاً من استخدام البيانات نفسها. ويمكن تخزين أي نوع من أنواع البيانات الثمانية في متغير.

المتغيرات مشابهة للمتغيرات x و y التي تستخدمها في الرياضيات، مما يعني أنهم اسم بسيط لتمثيل البيانات التي نريد الرجوع إليها. وتختلف متغيرات الحاسوب عن المتغيرات الرياضية من حيث أنها تستطيع تخزين قيم مختلفة في أوقات مختلفة.

نطلب من JavaScript إنشاء أو <dfn>أعلان</dfn> متغير عن طريق وضع الكلمة `var` أمامه، مثل ذلك:

```js
var ourName;
```

هذا ينشئ متغير يسمى `ourName`. في JavaScript, تنهي التعبيرات باستخدام الفاصلة المنقوطة (;). يمكن أن تتكون أسماء المتغيرات من أرقام وحروف و `$` أو `_`، ولكن قد لا تحتوي على مسافات أو تبدأ برقم.

# --instructions--

استخدم كلمة `var` لإنشاء متغير يسمى `myName`.

**تلميح**  
أنظر إلى مثال `ourName` أعلاه إذا علقت.

# --hints--

يجب أن تعلن `myName` باستخدام كلمة `var` و تنهي بالفاصلة المنقوطة (;)

```js
assert(/var\s+myName\s*;/.test(__helpers.removeJSComments(code)));
```

# --seed--

## --after-user-code--

```js
if(typeof myName !== "undefined"){(function(v){return v;})(myName);}
```

## --seed-contents--

```js

```

# --solutions--

```js
var myName;
```
