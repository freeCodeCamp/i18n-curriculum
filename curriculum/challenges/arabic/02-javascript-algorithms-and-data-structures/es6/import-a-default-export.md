---
id: 587d7b8d367417b2b2512b59
title: Import a Default Export
challengeType: 1
forumTopicId: 301205
dashedName: import-a-default-export
---

# --description--

In the last challenge, you learned about `export default` and its uses. To import a default export, you need to use a different `import` syntax. In the following example, `add` is the default export of the `math_functions.js` file. Here is how to import it:

```js
import add from "./math_functions.js";
```

الـ syntax يختلف في مكان رئيسي واحد. القيمة المستوردة (imported)، `add`، ليست محاطة بأقواس متعرجة (`{}`). `add` هنا ببساطة اسم متغير لأيا كان الـ default export لـ ملف `math_functions.js`. يمكنك استخدام أي اسم هنا عند استيراد default.

# --instructions--

في الكود التالي، قم باستيراد default export من ملف `math_functions.js`، الموجود في نفس الدليل مثل هذا الملف. قم بإعطاء الاستيراد اسم `subtract`.

# --hints--

يجب عليك استيراد `subtract` بشكل صحيح من `math_functions.js`.

```js
assert(__helpers.removeJSComments(code).match(/import\s+subtract\s+from\s+('|")\.\/math_functions\.js\1/g));
```

# --seed--

## --seed-contents--

```js

// Only change code above this line

subtract(7,4);
```

# --solutions--

```js
import subtract from "./math_functions.js";

subtract(7,4);
```
