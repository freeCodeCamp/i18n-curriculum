---
id: 66ed8ffcf45ce3ece4053eb5
title: اختبار تحديد موضع CSS
challengeType: 8
dashedName: quiz-css-positioning
---

# --description--

لتجاوز الاختبار، يجب أن تجيب بشكل صحيح على 18 سؤالًا على الأقل من أصل 20 سؤالًا أدناه.

# --quizzes--

## --quiz--

### --question--

#### --text--

أي مما يلي ليس قيمة صحيحة لخاصية `position`؟

#### --distractors--

`fixed`

---

`absolute`

---

`relative`

#### --answer--

`above`

### --question--

#### --text--

ما هو الغرض الرئيسي من خاصية `float` في CSS؟

#### --distractors--

تُستخدم خاصية float لإخراج عنصر من تدفقه الطبيعي في الصفحة وتحديد موقعه تلقائيًا في الجانب العلوي الأيمن من صفحة الويب.

---

تُستخدم خاصية float لإخراج عنصر من تدفقه الطبيعي في الصفحة وتحديد موقعه في أعلى الحاوية الخاصة به.

---

تُستخدم خاصية float لإخراج عنصر من تدفقه الطبيعي في الصفحة وتحديد موقعه تلقائيًا في الجانب السفلي الأيمن من صفحة الويب.

#### --answer--

تُستخدم خاصية float لإخراج عنصر من تدفقه الطبيعي في الصفحة وتحديد موقعه إما على الجانب الأيسر أو الأيمن من الحاوية الخاصة به.

### --question--

#### --text--

أي مما يلي مثال على جعل عنصر صندوق يطفو إلى اليسار؟

#### --distractors--

```css
.box {
  left: float;
  margin-right: 15px;
  width: 50px;
  height: 50px;
  background-color: black;
}
```

---

```css
.box {
  position: float-left;
  margin-right: 15px;
  width: 50px;
  height: 50px;
  background-color: black;
}
```

---

```css
.box {
  float: left-side;
  margin-right: 15px;
  width: 50px;
  height: 50px;
  background-color: black;
}
```

#### --answer--

```css
.box {
  float: left;
  margin-right: 15px;
  width: 50px;
  height: 50px;
  background-color: black;
}
```

### --question--

#### --text--

ما هو دور خاصية `clear`؟

#### --distractors--

تُستخدم لتحديد ما إذا كان يجب نقل عنصر إلى أسفل الصفحة.

---

تُستخدم لتحديد ما إذا كان يجب مسح عنصر بالكامل من الصفحة.

---

تُستخدم لتحديد ما إذا كان يجب تثبيت عنصر في أعلى الصفحة.

#### --answer--

تُستخدم لتحديد ما إذا كان يجب نقل عنصر أسفل المحتوى الطافي.

### --question--

#### --text--

أي خاصية CSS تُستخدم للتحكم في ترتيب التكديس الرأسي للعناصر المحددة الموضع التي تتداخل على الصفحة؟

#### --distractors--

`position`

---

`bg-green`

---

`float`

#### --answer--

`z-index`

### --question--

#### --text--

أي مما يلي هو الصيغة الصحيحة لتحديد الموضع النسبي؟

#### --distractors--

```css
.relative {
  position: relative-position;
  top: 30px;
  left: 30px;
}
```

---

```css
.relative {
  relative-position: relative;
  top: 30px;
  left: 30px;
}
```

---

```css
.relative {
  relative: position;
  top: 30px;
  left: 30px;
}
```

#### --answer--

```css
.relative {
  position: relative;
  top: 30px;
  left: 30px;
}
```

### --question--

#### --text--

أي خاصية CSS تستخدم لتثبيت عنصر في موقع معين على الصفحة بحيث لا يتحرك عند التمرير؟

#### --distractors--

`position: no-scroll;`

---

`position: relative;`

---

`display: block;`

#### --answer--

`position: fixed;`

### --question--

#### --text--

ماذا يفعل التحديد المطلق لعنصر؟

#### --distractors--

يُستخدم التحديد المطلق لتحديد ما إذا كان يجب نقل عنصر أسفل المحتوى الطافي.

---

يُستخدم التحديد المطلق لوضع العنصر ضمن التدفق الطبيعي للوثيقة.

---

يُستخدم التحديد المطلق للتحكم في ترتيب التكديس الرأسي للعناصر المحددة الموضع التي تتداخل على الصفحة.

#### --answer--

يسمح التحديد المطلق بأخذ عنصر خارج التدفق الطبيعي للوثيقة، مما يجعله يتصرف بشكل مستقل عن العناصر الأخرى.

### --question--

#### --text--

أي مما يلي ليست خاصية صحيحة يمكنك استخدامها مع التحديد المطلق؟

#### --distractors--

`right`

---

`bottom`

---

`top`

#### --answer--

`side`

### --question--

#### --text--

ما هو الفرق الأساسي بين التحديد النسبي والمطلق؟

#### --distractors--

يحدد التحديد المطلق العنصر في موضع لاصق بينما يخرج التحديد النسبي العنصر من التدفق الطبيعي للوثيقة.

---

يحدد التحديد النسبي العنصر في موضع ثابت بينما يخرج التحديد المطلق العنصر من التدفق الطبيعي للوثيقة.

---

يحدد التحديد المطلق العنصر ضمن التدفق الطبيعي للوثيقة بينما يخرج التحديد النسبي العنصر من التدفق الطبيعي للوثيقة.

#### --answer--

يحدد التحديد النسبي العنصر ضمن التدفق الطبيعي للوثيقة بينما يخرج التحديد المطلق العنصر من التدفق الطبيعي للوثيقة.

### --question--

#### --text--

أي مما يلي مثال على تحديد موضع صندوق في الزاوية العلوية اليسرى من الصفحة؟

#### --distractors--

```css
.box {
  position: absolute;
  bottom: 0;
  left: 0;
  background-color: coral;
  width: 50px;
  height: 50px;
}
```

---

```css
.box {
  position: absolute;
  top: 0;
  right: 0;
  background-color: coral;
  width: 50px;
  height: 50px;
}
```

---

```css
.box {
  position: absolute;
  bottom: 0;
  right: 0;
  background-color: coral;
  width: 50px;
  height: 50px;
}
```

#### --answer--

```css
.box {
  position: absolute;
  top: 0;
  left: 0;
  background-color: coral;
  width: 50px;
  height: 50px;
}
```

### --question--

#### --text--

أي طريقة تحديد تسمح لعنصر بالالتصاق بموقع محدد فقط عند التمرير بعد نقطة معينة؟

#### --distractors--

تحديد الطفو.

---

التحديد الثابت.

---

التحديد المطلق.

#### --answer--

التحديد اللاصق.

### --question--

#### --text--

أي مما يلي مثال صحيح لاستخدام التحديد اللاصق؟

#### --distractors--

```css
.box {
  sticky: position;
  top: 30px;
  right: 30px;
  width: 50px;
  height: 50px;
  background-color: red;
}
```

---

```css
.box {
  position: sticky-fixed;
  top: 30px;
  right: 30px;
  width: 50px;
  height: 50px;
  background-color: red;
}
```

---

```css
.box {
  position: sticky-top;
  right: 30px;
  width: 50px;
  height: 50px;
  background-color: red;
}
```

#### --answer--

```css
.box {
  position: sticky;
  top: 30px;
  right: 30px;
  width: 50px;
  height: 50px;
  background-color: red;
}
```

### --question--

#### --text--

ما الفرق بين التحديد اللاصق والتحديد الثابت؟

#### --distractors--

يمكن استخدام العناصر اللاصقة فقط في تخطيطات الجداول بينما يمكن استخدام العناصر الثابتة في أي نوع من تخطيطات CSS.

---

ستظل العناصر اللاصقة دائمًا في نفس الموضع بينما تلتصق العناصر الثابتة بنقطة معينة ثم تتصرف كعناصر نسبية.

---

سيتم تحديد موضع العناصر الثابتة بالنسبة لموضعها الطبيعي بينما تلتصق العناصر اللاصقة فقط بنقطة معينة ثم تتصرف كعناصر نسبية.

#### --answer--

ستظل العناصر الثابتة في نفس الموضع على الشاشة بينما تلتصق العناصر اللاصقة فقط بنقطة معينة ثم تتصرف كعناصر نسبية.

### --question--

#### --text--

ما المشكلة التي حلها اختراق `clearfix` عند العمل مع الطفو؟

#### --distractors--

ساعد اختراق `clearfix` في حل مشكلة إزالة العناصر الطافية من التدفق الطبيعي للوثيقة ووضعها في موضع ثابت على الصفحة.

---

ساعد اختراق `clearfix` في حل مشكلة عدم تجاوب العناصر الطافية في تخطيطات الهواتف المحمولة والأجهزة اللوحية.

---

ساعد اختراق `clearfix` في حل مشكلة اختفاء العناصر الطافية من الصفحة.

#### --answer--

ساعد اختراق `clearfix` في حل مشكلة التداخل والانهيار في التخطيطات عندما تتكدس عدة عناصر طافية بجانب بعضها البعض.

### --question--

#### --text--

أي مما يلي مثال صحيح لاستخدام اختراق `clearfix`؟

#### --distractors--

```css
.clearfix::before {
  position: fixed;
  top: 0;
  width: 100%;
  clear: both;
}
```

---

```css
.clearfix::after {
  position: relative;
  top: 30px;
  left: 30px;
  clear: all;
}
```

---

```css
.clearfix::before {
  top: 30px;
  clear: none;
}
```

#### --answer--

```css
.clearfix::after {
  content: "";
  display: block;
  clear: both;
}
```

### --question--

#### --text--

ما هو التحديد الثابت؟

#### --distractors--

يُستخدم هذا لإخراج عنصر من تدفقه الطبيعي في الصفحة وتحديد موقعه تلقائيًا في الجانب العلوي الأيمن من صفحة الويب.

---

يسمح لك هذا بأخذ عنصر خارج التدفق الطبيعي للوثيقة، مما يجعله يتصرف بشكل مستقل عن العناصر الأخرى.

---

يسمح هذا لعنصر بالالتصاق بموقع محدد فقط عند التمرير بعد نقطة معينة.

#### --answer--

هذا هو التدفق الطبيعي للوثيقة. يتم تحديد مواضع العناصر من الأعلى إلى الأسفل ومن اليسار إلى اليمين واحدًا تلو الآخر.

### --question--

#### --text--

أي مما يلي مثال على تعيين شريط التنقل في أعلى الصفحة باستخدام التحديد الثابت؟

#### --distractors--

```css
.navbar {
  fixed: top;
  top: 0;
  width: 100%;
}
```

---

```css
.navbar {
  upper: fixed;
  width: 100%;
}
```

---

```css
.navbar {
  position: fixed-top;
  top: 0;
  width: 100%;
}
```

#### --answer--

```css
.navbar {
  position: fixed;
  top: 0;
  width: 100%;
}
```

### --question--

#### --text--

أي مما يلي قيمة صحيحة لاستخدامها مع خاصية `z-index`؟

#### --distractors--

`12.0`

---

`none`

---

`up`

#### --answer--

`1`

### --question--

#### --text--

ما هي القيمة الافتراضية لخاصية `position`؟

#### --distractors--

`inherit`

---

`initial`

---

`relative`

#### --answer--

`static`

## --quiz--

### --question--

#### --text--

أي قيمة `position` تتيح لك تعديل موضع عنصر باستخدام `top` و`left` مع إبقائه ضمن التدفق الطبيعي للوثيقة؟

#### --distractors--

`position: absolute;`

---

`position: static;`

---

`position: fixed;`

#### --answer--

`position: relative;`

### --question--

#### --text--

كيف يتصرف عنصر مع `position: sticky;` في البداية؟

#### --distractors--

يتصرف كعنصر `fixed` حتى يتم الوصول إلى موضع التمرير.

---

يتم دائمًا إزالته من التدفق الطبيعي للوثيقة.

---

يتصرف كعنصر `absolute` داخل العنصر الأب الخاص به.

#### --answer--

يتصرف كعنصر `relative` حتى يتم الوصول إلى موضع التمرير المحدد.

### --question--

#### --text--

أي مما يلي يوضح استخدامًا صحيحًا وفعالًا لخاصية `z-index` لجعل `.box-two` يظهر فوق `.box-one`؟

#### --distractors--

```css
.box-one {
  position: static;
  z-index: 2;
}
.box-two {
  position: static;
  z-index: 1;
}
```

---

```css
.box-one {
  position: absolute;
  stack-order: 1;
}
.box-two {
  position: absolute;
  stack-order: 2;
}
```

---

```css
.box-one {
  float: left;
  z-index: 1;
}
.box-two {
  float: left;
  z-index: 2;
}
```

#### --answer--

```css
.box-one {
  position: absolute;
  z-index: 1;
}
.box-two {
  position: absolute;
  z-index: 2;
}
```

### --question--

#### --text--

ما هو استخدام خاصية `z-index` في CSS؟

#### --distractors--

تحدد مستوى التكبير للصفحة.

---

تتحكم في المحاذاة الأفقية للعناصر داخل الحاوية المرنة.

---

تحدد المسافة بين محتوى العنصر وحدوده.

#### --answer--

تتحكم في ترتيب التكديس الرأسي للعناصر المحددة الموضع التي تتداخل.

### --question--

#### --text--

عندما تطبق `top: 10%;` على عنصر مع `position: fixed;`، فما الذي يُحسب بناءً عليه الـ `10%`؟

#### --distractors--

ارتفاع العنصر نفسه.

---

ارتفاع الحاوية الأب الخاصة به.

---

عرض إطار العرض.

#### --answer--

ارتفاع إطار العرض.

### --question--

#### --text--

أي من أمثلة الشفرة التالية استخدام صحيح لخاصية `z-index` لوضع تراكب فوق محتوى آخر؟

#### --distractors--

```css
.overlay {
  z-index: 5;
  background-color: black;
}
```

---

```css
.overlay {
  display: block;
  z-layer: 1;
  background-color: black;
}
```

---

```css
.overlay {
  float: left;
  z-index: 2;
  background-color: black;
}
```

#### --answer--

```css
.overlay {
  position: absolute;
  z-index: 10;
  background-color: black;
}
```

### --question--

#### --text--

أي خاصية CSS تُستخدم للتحكم فيما إذا كان يجب نقل عنصر أسفل العناصر الطافية؟

#### --distractors--

`float`

---

`overflow`

---

`display`

#### --answer--

`clear`

### --question--

#### --text--

كيف سيتم تحريك عنصر مع `position: relative;` و`bottom: 25px;`؟

#### --distractors--

سيتحرك 25 بكسل إلى الأسفل من موضعه الطبيعي.

---

سيتحرك 25 بكسل إلى اليمين من موضعه الطبيعي.

---

سيتم تحديد موضعه على بعد 25 بكسل من أسفل إطار العرض.

#### --answer--

سيتحرك 25 بكسل إلى الأعلى من موضعه الطبيعي.

### --question--

#### --text--

خاصية `z-index` تؤثر فقط على العناصر التي تم تطبيق أي خاصية CSS عليها؟

#### --distractors--

قيمة `float` غير `none`.

---

قيمة `display` من نوع `inline-block`.

---

تعيين `background-color`.

#### --answer--

قيمة `position` غير `static`.

### --question--

#### --text--

ما هو تأثير تطبيق `float: right;` على شعار في القسم العلوي؟

#### --distractors--

سيتم محاذاة الشعار إلى اليمين، لكنه سيظل ضمن التدفق الطبيعي للوثيقة، مما يمنع التفاف المحتوى الآخر حوله.

---

سيتم إخراج الشعار من التدفق وتحديد موقعه على الجانب الأيمن من إطار المتصفح بالكامل، وليس حاويته.

---

سيصبح الشعار عنصرًا على مستوى الكتلة يشغل العرض الكامل للقسم العلوي، مما يدفع العناصر الأخرى تحته.

#### --answer--

سيتم إخراج الشعار من تدفقه الطبيعي ووضعه على الجانب الأيمن من الحاوية الخاصة به، مع التفاف المحتوى الآخر حوله.

### --question--

#### --text--

أي مقتطف CSS سيبقي عنصرًا مثبتًا في أعلى إطار العرض بمجرد التمرير إليه؟

#### --distractors--

```css
.header {
  position: fixed;
  top: 0;
}
```

---

```css
.header {
  position: relative;
  top: 0;
}
```

---

```css
.header {
  position: absolute;
  top: 0;
}
```

#### --answer--

```css
.header {
  position: sticky;
  top: 0;
}
```

### --question--

#### --text--

ما هو الغرض المحدد من `clear: both;` في CSS؟

#### --distractors--

يلغي خاصية `float` على العنصر نفسه، معيدًا إياه إلى التدفق الطبيعي للوثيقة.

---

يزيل أي خصائص `clear` تم وراثتها من عنصر أب، مستعيدًا السلوك الافتراضي للطفو.

---

يمسح فقط العناصر الطافية على الجانب الأيمن، مما يسمح للعناصر الطافية على اليسار بالبقاء كما هي.

#### --answer--

يضمن نقل العنصر أسفل أي عناصر طافية تظهر قبله على كلا الجانبين الأيسر والأيمن.

### --question--

#### --text--

بالنظر إلى الشفرة التالية، كيف سيتم تحديد موضع `.child`؟

```css
.parent {
  /* No position property set */
  height: 200px;
}
.child {
  position: absolute;
  top: 10px;
}
```

#### --distractors--

سيتم وضعه على بعد 10 بكسل من أعلى عنصر `.parent`، إذ إن التمركز بـ `absolute` يكون دائمًا نسبيًا إلى الوالد المباشر.

---

سيظل في موضعه الثابت الافتراضي لأن قيمة `absolute` غير صالحة بدون خاصية `z-index`.

---

سيتم تحديد موضعه على بعد 10 بكسل من أعلى نافذة المتصفح، ويبقى ثابتًا في مكانه حتى عند تمرير المستخدم الصفحة.

#### --answer--

سيتم تحديد موضعه على بعد 10 بكسل من أعلى كتلة الحاوية الأولية، مثل `<body>`، لأن العنصر الأب غير محدد الموضع.

### --question--

#### --text--

ما هو تأثير CSS التالي على عنصر `.box`؟

```css
.box {
  position: absolute;
  top: 50px;
  left: 50px;
}
```

#### --distractors--

سيبقى العنصر في تدفقه الطبيعي لكنه سيُزاح بمقدار 50 بكسل من الأعلى واليسار، مما يدفع العناصر الأخرى بعيدًا.

---

سيُثبت العنصر في إطار العرض ويبقى على بعد 50 بكسل من الأعلى و50 بكسل من اليسار، حتى عند التمرير في الصفحة.

---

سيُوضع العنصر بالنسبة لنقطة انطلاقه الخاصة، متحركًا 50 بكسل إلى الأسفل و50 بكسل إلى اليمين دون الخروج من تدفق المستند.

#### --answer--

سيُخرج العنصر من التدفق الطبيعي ويُوضع على بعد 50 بكسل من الأعلى و50 بكسل من اليسار لأقرب سلف له مُحدد الموضع.

### --question--

#### --text--

أي من قيم `position` التالية تزيل العنصر تمامًا من التدفق الطبيعي للمستند؟

#### --distractors--

`position: static;`

---

`position: relative;`

---

`position: inherit;`

#### --answer--

`position: absolute;`

### --question--

#### --text--

بالنظر إلى عنصر `.parent` وعنصر `.child`، أي مقطع CSS سيُوضع فيه `.child` بشكل صحيح على بعد 20 بكسل من الزاوية العلوية اليسرى لعنصر `.parent`؟

#### --distractors--

```css
.parent {
  /* position: static; by default */
}
.child {
  position: absolute;
  top: 20px;
  left: 20px;
}
```

---

```css
.parent {
  position: relative;
}
.child {
  position: relative;
  top: 20px;
  left: 20px;
}
```

---

```css
.parent {
  position: relative;
}
.child {
  float: left;
  top: 20px;
  left: 20px;
}
```

#### --answer--

```css
.parent {
  position: relative;
}
.child {
  position: absolute;
  top: 20px;
  left: 20px;
}
```

### --question--

#### --text--

ما الفرق بين تحديد الموضع بـ `static` و `relative`؟

#### --distractors--

تحديد الموضع بـ `static` يزيل العنصر من تدفق المستند، بينما تحديد الموضع بـ `relative` يبقيه في التدفق.

---

يمكن تحريك عنصر بقيمة `position: static;` باستخدام خاصيتي `top` و`left`، بينما لا يمكن ذلك مع `position: relative;`.

---

تحديد الموضع بـ `static` مخصص للعناصر على مستوى الكتلة، بينما تحديد الموضع بـ `relative` مخصص فقط للعناصر المضمَّنة.

#### --answer--

كلاهما يبقي العنصر في التدفق الطبيعي للمستند، لكن `relative` يسمح بتحريك العنصر من موقعه الأصلي.

### --question--

#### --text--

أي مقطع CSS يطفو بصورة صحيحة إلى اليسار، مما يسمح بتغليف المحتوى الآخر حولها؟

#### --distractors--

```css
.image {
  position: absolute;
  left: 0;
}
```

---

```css
.image {
  display: inline-block;
}
```

---

```css
.image {
  text-align: left;
}
```

#### --answer--

```css
.image {
  float: left;
}
```

### --question--

#### --text--

ما الفرق بين تحديد الموضع بـ `absolute` و `fixed`؟

#### --distractors--

تحديد الموضع بـ `absolute` يكون بالنسبة لإطار العرض، بينما تحديد الموضع بـ `fixed` يكون بالنسبة لأقرب سلف محدد الموضع.

---

تحديد الموضع بـ `absolute` يبقي العنصر في تدفق المستند الطبيعي، بينما تحديد الموضع بـ `fixed` يخرجه من التدفق.

---

كلاهما يُوضعان بالنسبة لإطار العرض، لكن العناصر ذات الموضع `fixed` تتحرك مع الصفحة عند التمرير، بينما عناصر `absolute` لا تتحرك.

#### --answer--

تحديد الموضع بـ `absolute` يكون بالنسبة لأقرب سلف محدد الموضع، بينما تحديد الموضع بـ `fixed` يكون بالنسبة لإطار عرض المتصفح.

### --question--

#### --text--

أي قيمة `position` تضع العنصر في التدفق الطبيعي للمستند وتمنع خصائص الإزاحة مثل `top` و`left` من التأثير؟

#### --distractors--

`position: relative;`

---

`position: absolute;`

---

`position: fixed;`

#### --answer--

`position: static;`

