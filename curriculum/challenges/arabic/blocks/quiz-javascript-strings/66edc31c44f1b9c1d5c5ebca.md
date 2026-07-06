---
id: 66edc31c44f1b9c1d5c5ebca
title: اختبار سلاسل نصية في JavaScript
challengeType: 8
dashedName: quiz-javascript-strings
---

# --description--

لتجاوز الاختبار، يجب أن تجيب بشكل صحيح على 18 سؤالًا على الأقل من أصل 20 سؤالًا أدناه.

# --quizzes--

## --quiz--

### --question--

#### --text--

ما هي قيمة الإرجاع للطريقة `includes()`؟

#### --distractors--

إذا وُجدت السلسلة الفرعية داخل السلسلة النصية، تُرجع الطريقة السلسلة النصية. وإلا، تُرجع `undefined`.

---

إذا وُجدت السلسلة الفرعية داخل السلسلة النصية، تُرجع الطريقة `true`. وإلا، تُرجع سلسلة نصية فارغة.

---

إذا وُجدت السلسلة الفرعية داخل السلسلة النصية، تُرجع الطريقة السلسلة النصية. وإلا، تُرجع `null`.

#### --answer--

إذا وُجدت السلسلة الفرعية داخل السلسلة النصية، تُرجع الطريقة `true`. وإلا، تُرجع `false`.

### --question--

#### --text--

أي خيار يُظهر استيفاء السلسلة النصية؟

#### --distractors--

`"Hello, " + user + "!"`

---

`"Hello, $user!"`

---

`` `Hello, {user}!` ``

#### --answer--

`` `Hello, ${user}!` ``

### --question--

#### --text--

أي من الخيارات التالية هو رمز السطر الجديد؟

#### --distractors--

`\newline`

---

`\new`

---

`\line`

#### --answer--

`\n`

### --question--

#### --text--

أي من العبارات التالية صحيحة عن السلاسل النصية؟

#### --distractors--

السلاسل النصية قابلة للتغيير ويمكن تعديلها بعد إنشائها.

---

السلاسل النصية هي أنواع بيانات غير بدائية.

---

يمكن إنشاء السلاسل النصية باستخدام علامات اقتباس مفردة فقط.

#### --answer--

السلاسل النصية غير قابلة للتغيير.

### --question--

#### --text--

ماذا تعني اختصار ASCII؟

#### --distractors--

الرمز القياسي الأمريكي لمعلومات الإنترنت

---

الرمز المنهجي المتقدم للتبادل الداخلي

---

الرمز القياسي التلقائي للمعلومات الداخلية

#### --answer--

الرمز القياسي الأمريكي لتبادل المعلومات

### --question--

#### --text--

أي من الطرق التالية تستخرج جزءًا من سلسلة نصية وتُرجع سلسلة جديدة؟

#### --distractors--

`trim()`

---

`indexOf()`

---

`prompt()`

#### --answer--

`slice()`

### --question--

#### --text--

ما الغرض من الطريقة `prompt()`؟

#### --distractors--

تعرض رسالة في وحدة التحكم.

---

تعرض مربع تنبيه مع رسالة.

---

تعرض مربع تأكيد مع رسالة.

#### --answer--

تعرض مربع حوار ينتظر مُدخَل المستخدم.

### --question--

#### --text--

ما هي الطريقة الصحيحة للوصول إلى الحرف الثالث في سلسلة نصية؟

#### --distractors--

```js
const developer = "Jessica";
developer[3];
```

---

```js
const developer = "Jessica";
developer[-1];
```

---

```js
const developer = "Jessica";
developer[0];
```

#### --answer--

```js
const developer = "Jessica";
developer[2];
```

### --question--

#### --text--

كيف تحصل على قيمة ASCII للحرف الأول في السلسلة النصية `"hello"`؟

#### --distractors--

`"hello".charCode(0)`

---

`"hello".codeAt(0)`

---

`"hello".getCharIndex(0)`

#### --answer--

`"hello".charCodeAt(0)`

### --question--

#### --text--

أي طريقة يمكنك استخدامها للحصول على الحرف المقابل لقيمة ASCII؟

#### --distractors--

`toASCII()`

---

`toChar()`

---

`toCode()`

#### --answer--

`fromCharCode()`

### --question--

#### --text--

أي من أمثلة `indexOf` التالية ستسجل `-1` في وحدة التحكم؟

#### --distractors--

```js
const organization = "freeCodeCamp";
console.log(organization.indexOf("e"));
```

---

```js
const organization = "freeCodeCamp";
console.log(organization.indexOf("f"));
```

---

```js
const organization = "freeCodeCamp";
console.log(organization.indexOf("C"));
```

#### --answer--

```js
const organization = "freeCodeCamp";
console.log(organization.indexOf("c"));
```

### --question--

#### --text--

كيف تتحقق مما إذا كانت السلسلة النصية `"JavaScript"` تحتوي على `"Script"`؟

#### --distractors--

`"JavaScript".has("Script")`

---

`"JavaScript".contains("Script")`

---

`"JavaScript".exists("Script")`

#### --answer--

`"JavaScript".includes("Script")`

### --question--

#### --text--

أي من الخيارات التالية يستخرج السلسلة الفرعية `"Script"` من السلسلة النصية `"JavaScript"`؟

#### --distractors--

`"JavaScript".find(5)`

---

`"JavaScript".extract(4)`

---

`"JavaScript".cut(5)`

#### --answer--

`"JavaScript".slice(4)`

### --question--

#### --text--

كيف تحول السلسلة النصية `"JavaScript"` إلى أحرف كبيرة؟

#### --distractors--

`"JavaScript".upper()`

---

`"JavaScript".toUpper()`

---

`"JavaScript".convertUpper()`

#### --answer--

`"JavaScript".toUpperCase()`

### --question--

#### --text--

كيف تحول السلسلة النصية `"JavaScript"` إلى أحرف صغيرة؟

#### --distractors--

`"JavaScript".lower()`

---

`"JavaScript".toLower()`

---

`"JavaScript".convertLower()`

#### --answer--

`"JavaScript".toLowerCase()`

### --question--

#### --text--

أي من الخيارات التالية سيستبدل `"dogs"` بـ `"cats"` في السلسلة النصية `"I love dogs"`؟

#### --distractors--

`"I love dogs".slice("dogs", "cats")`

---

`"I love dogs".replaceWith("dogs", "cats")`

---

`"I love dogs".find("dogs", "cats")`

#### --answer--

`"I love dogs".replace("dogs", "cats")`

### --question--

#### --text--

أي طريقة تُستخدم لتكرار سلسلة نصية عددًا محددًا من المرات؟

#### --distractors--

`times()`

---

`repeatTimes()`

---

`repeatNumber()`

#### --answer--

`repeat()`

### --question--

#### --text--

ماذا سترجع الشفرة التالية: `"abc".repeat(3)`؟

#### --distractors--

`"abcabc"`

---

`"abcabcabcabc"`

---

سيرمي خطأ.

#### --answer--

`"abcabcabc"`

### --question--

#### --text--

أي طريقة ستزيل الفراغات من بداية ونهاية السلسلة النصية؟

#### --distractors--

`strip()`

---

`removeWhitespace()`

---

`trimWhitespace()`

#### --answer--

`trim()`

### --question--

#### --text--

أي من الصيغ النحوية التالية صحيحة للهروب من علامات الاقتباس؟

#### --distractors--

```js
"She said, ?"Hello!?""
```

---

```js
"She said, ."Hello!.""
```

---

```js
"She said, //"Hello!//""
```

#### --answer--

```js
"She said, \"Hello!\""
```

