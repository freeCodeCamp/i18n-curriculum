---
id: 66ed8fedf45ce3ece4053eb3
title: اختبار شبكة CSS
challengeType: 8
dashedName: quiz-css-grid
---

# --description--

لتجاوز الاختبار، يجب أن تجيب بشكل صحيح على 18 سؤالًا على الأقل من أصل 20 سؤالًا أدناه.

# --quizzes--

## --quiz--

### --question--

#### --text--

ما هي شبكة CSS؟

#### --distractors--

طريقة تُستخدم لعرض الجداول على موقع ويب.

---

طريقة تُستخدم لترتيب الصور بشكل متجاور.

---

طريقة لعرض حدود حول عناصر HTML.

#### --answer--

تخطيط ثنائي الأبعاد لوثائق HTML.

### --question--

#### --text--

أي مما يلي هو الطريقة الصحيحة لإنشاء حاوية شبكة؟

#### --distractors--

`display: grid-area;`

---

`grid: grid-template;`

---

`grid-template: set;`

#### --answer--

`display: grid;`

### --question--

#### --text--

ماذا تفعل الخاصية `grid-template-columns`؟

#### --distractors--

تعريف عمودين وثلاثة صفوف لحاوية الشبكة.

---

تعيين جميع أعمدة تخطيط الشبكة إلى طول ثابت.

---

إنشاء حاوية تخطيط شبكة ذات عمودين.

#### --answer--

تعريف عدد الأعمدة في تخطيط الشبكة.

### --question--

#### --text--

ماذا تفعل الخاصية `grid-template-rows`؟

#### --distractors--

تحديد حجم وموقع عنصر شبكي في تخطيط الشبكة.

---

إنشاء قالب لإنشاء صفوف شبكة جديدة.

---

تحديد حجم صف افتراضي في حاوية الشبكة.

#### --answer--

تحديد عدد وارتفاع كل صف في تخطيط الشبكة.

### --question--

#### --text--

ماذا تفعل الدالة `minmax()`؟

#### --distractors--

تبديل بين القيمة الأولى والثانية حسب المساحة المتاحة.

---

تعيد متوسط القيمتين المدخلتين.

---

تعيين الحد الأدنى لحجم العنصر عند عمل المتصفح في وضع ملء الشاشة.

#### --answer--

تعيين الحد الأدنى والحد الأقصى لأبعاد المسار.

### --question--

#### --text--

ما هو الاختصار الخاص بخاصيتي `column-gap` و `row-gap`؟

#### --distractors--

`gap-column-row`

---

`gutters`

---

`grid-space`

#### --answer--

`gap`

### --question--

#### --text--

ما الفرق بين الشبكة الضمنية والصريحة؟

#### --distractors--

تستخدم الشبكات الضمنية الخاصية `grid-template-columns` بينما تستخدم الشبكات الصريحة الخاصية `grid-template-rows`.

---

تستخدم الشبكات الصريحة الخاصية `grid-template-columns` بينما تستخدم الشبكات الضمنية الخاصية `grid-template-rows`.

---

تستخدم الشبكات الضمنية الخاصيتين `grid-template-columns` أو `grid-template-rows` لإنشاء الأعمدة بينما تُنشأ الصفوف والأعمدة تلقائيًا في الشبكات الصريحة.

#### --answer--

تستخدم الشبكات الصريحة الخاصيتين `grid-template-columns` أو `grid-template-rows` لإنشاء الأعمدة بينما تُنشأ الصفوف والأعمدة تلقائيًا في الشبكات الضمنية.

### --question--

#### --text--

أي من الوحدات التالية تمثل كسرًا من المساحة داخل حاوية الشبكة؟

#### --distractors--

`fractional`

---

`frac`

---

`f`

#### --answer--

`fr`

### --question--

#### --text--

ما هي خطوط الشبكة؟

#### --distractors--

اختصار للصفوف والأعمدة.

---

حدود عنصر الشبكة.

---

خطوط تُنشأ عليها أعمدة وصفوف الشبكة.

#### --answer--

خطوط تبدأ وتنتهي عندها كل عناصر الشبكة.

### --question--

#### --text--

ماذا تفعل الخاصية `grid-column`؟

#### --distractors--

تضيف عنصر شبكة جديد كطفل للعنصر الذي تُطبق عليه.

---

تُحاذي النص عموديًا داخل عنصر الشبكة.

---

تعيين عمودين لحاوية الشبكة.

#### --answer--

تحدد لعنصر الشبكة خط الشبكة الذي يبدأ وينتهي عنده.

### --question--

#### --text--

كيف تنشئ أربعة أعمدة متساوية العرض؟

#### --distractors--

`grid-template-columns: repeat(4);`

---

`grid-template-columns: repeat(1, 4);`

---

`grid-template-columns: repeat(1fr, 4);`

#### --answer--

`grid-template-columns: repeat(4, 1fr);`

### --question--

#### --text--

ماذا تفعل الخاصية `grid-template-areas`؟

#### --distractors--

تُستخدم لتحديد مكان بداية العنصر على خط في حاوية الشبكة.

---

تُستخدم لإنشاء فجوات بين المسارات في الحاوية.

---

تُستخدم لتكرار أقسام في قائمة المسارات.

#### --answer--

تُستخدم لتوفير اسم للعناصر التي ستوضع على الشبكة.

### --question--

#### --text--

ماذا تفعل الخاصية `grid-auto-flow`؟

#### --distractors--

تتحكم في ترتيب عرض عناصر الشبكة.

---

تضبط المسافات بين عناصر الشبكة.

---

تُعدل العنصر تلقائيًا ليتناسب مع الشبكة.

#### --answer--

تتحكم في كيفية إدخال العناصر التي تُوضع تلقائيًا في الشبكة.

### --question--

#### --text--

أي مما يلي هو الطريقة الصحيحة لاستخدام الخاصية `grid-template-areas`؟

#### --distractors--

```css
.container {
  display: grid;
  grid-template-columns: 200px 1fr; 
  grid-template-rows: auto 1fr auto; 
  grid-template-areas: set(
    "header header"
    "sidebar main"
    "footer footer" 
  );
  gap: 20px; 
}
```

---

```css
.container {
  display: grid;
  grid-template-columns: 200px 1fr; 
  grid-template-rows: auto 1fr auto; 
  grid-template-areas: apply(
    "header header"
    "sidebar main"
    "footer footer" 
  );
  gap: 20px; 
}
```

---

```css
.container {
  display: grid;
  grid-template-columns: 200px 1fr; 
  grid-template-rows: auto 1fr auto; 
  grid-template-areas: set-areas;
  gap: 20px; 
}
```

#### --answer--

```css
.container {
  display: grid;
  grid-template-columns: 200px 1fr; 
  grid-template-rows: auto 1fr auto; 
  grid-template-areas:
    "header header"
    "sidebar main"
    "footer footer"; 
  gap: 20px; 
}
```

### --question--

#### --text--

أي مما يلي هو الطريقة الصحيحة للعمل مع الخاصية `grid-auto-flow`؟

#### --distractors--

```css
.social-icons {
  display: grid;
  grid-template-columns: repeat(5, 1fr);
  grid-auto-flow: none;
  grid-auto-columns: 1fr;
}
```

---

```css
.social-icons {
  display: grid;
  grid-template-columns: repeat(5, 1fr);
  grid-auto-flow: allow;
  grid-auto-columns: 1fr;
}
```

---

```css
.social-icons {
  display: grid;
  grid-template-columns: repeat(5, 1fr);
  grid-auto-flow: set;
  grid-auto-columns: 1fr;
}
```

#### --answer--

```css
.social-icons {
  display: grid;
  grid-template-columns: repeat(5, 1fr);
  grid-auto-flow: column;
  grid-auto-columns: 1fr;
}
```

### --question--

#### --text--

أي مما يلي ليس خاصية شبكة صحيحة؟

#### --distractors--

`gap`

---

`grid-column`

---

`grid-template-columns`

#### --answer--

`grid-set`

### --question--

#### --text--

أي من هذه الخصائص يمكن استخدامها لمركزة العناصر داخل عنصر شبكي؟

#### --distractors--

`allow-items`

---

`set-items`

---

`center-items`

#### --answer--

`align-items`

### --question--

#### --text--

أي من القيم التالية صحيحة للاستخدام مع الخاصية `grid-auto-columns`؟

#### --distractors--

`grid-auto-columns: unset-grid;`

---

`grid-auto-columns: revert-grid;`

---

`grid-auto-columns: set-content(20%);`

#### --answer--

`grid-auto-columns: 1fr;`

### --question--

#### --text--

ما هي مسارات الشبكة؟

#### --distractors--

اختصار للصفوف والأعمدة.

---

خطوط يمكن تحريك حركة عناصر الشبكة عليها.

---

خطوط تبدأ وتنتهي عندها كل عناصر الشبكة.

#### --answer--

المساحات بين خطي شبكة متجاورين.

### --question--

#### --text--

أي مما يلي هو الطريقة الصحيحة لاستخدام الدالة `minmax()`؟

#### --distractors--

```css
.container {
  display: grid;
  grid-template-columns: repeat(4, 1fr);
  grid-auto-rows: minmax(apply);
}
```

---

```css
.container {
  display: grid;
  grid-template-columns: repeat(4, 1fr);
  grid-auto-rows: minmax();
}
```

---

```css
.container {
  display: grid;
  grid-template-columns: repeat(4, 1fr);
  grid-auto-rows: minmax(set);
}
```

#### --answer--

```css
.container {
  display: grid;
  grid-template-columns: repeat(4, 1fr);
  grid-auto-rows: minmax(150px, auto);
}
```

## --quiz--

### --question--

#### --text--

كيف تحدد موقع عنصر شبكي داخل تخطيط معرف بـ `grid-template-areas`؟

#### --distractors--

بتحديد حجم وموقع العنصر مباشرة داخل الشبكة باستخدام `grid-template-rows` و `grid-template-columns`.

---

باستخدام الخاصية `grid-area` وتحديد بداية ونهاية الصف والعمود.

---

بتعيين كل من `grid-area` والإحداثيات الصريحة بالبكسل.

#### --answer--

بتعيين المنطقة المسماة إلى الخاصية `grid-area` للعنصر.

### --question--

#### --text--

ماذا تتحكم الخاصية `grid-auto-rows`؟

#### --distractors--

ارتفاع الصفوف المعرفة صراحةً.

---

العرض الأقصى لأعمدة الشبكة.

---

المسافة بين الصفوف.

#### --answer--

حجم الصفوف التي تُنشأ ضمنيًا.

### --question--

#### --text--

أي خاصية تستخدم لجعل عنصر الشبكة يمتد عبر عدة صفوف؟

#### --distractors--

`grid-row-span`

---

`row-span`

---

`span-rows`

#### --answer--

`grid-row`

### --question--

#### --text--

ما الذي يحدد الشبكة الصريحة؟

#### --distractors--

المسارات التي تُنشأ تلقائيًا لتناسب المحتوى.

---

المسارات المعرفة بوحدة `fr`.

---

المسارات المضافة باستخدام `grid-auto-flow`.

#### --answer--

المسارات المعرفة صراحةً بواسطة `grid-template-columns` أو `grid-template-rows`.

### --question--

#### --text--

أي قيمة لـ `grid-auto-flow` تجعل العناصر الجديدة تملأ الأعمدة أولًا؟

#### --distractors--

`row`

---

`vertical`

---

`row dense`

#### --answer--

`column`

### --question--

#### --text--

ما هو الغرض من `grid-template-areas`؟

#### --distractors--

لإنشاء مسارات ضمنية تلقائيًا.

---

لاستبدال وحدة `fr`.

---

لتعيين قيم `z-index`.

#### --answer--

لرسم خريطة بصرية للعناصر إلى مناطق شبكة مسماة.

### --question--

#### --text--

كيف تجعل عنصر الشبكة يبدأ عند خط العمود 2 وينتهي عند خط العمود 4؟

#### --distractors--

`grid-column: 2 / span 4;`

---

`grid-column: start 2 / end 4;`

---

`grid-column: from 2 to 4;`

#### --answer--

`grid-column: 2 / 4;`

### --question--

#### --text--

ما تأثير `grid-template-columns: 1fr 2fr 1fr`؟

#### --distractors--

ينشئ ثلاثة أعمدة متساوية العرض.

---

يجعل العمود الأوسط أعرض بثلاث مرات من الأعمدة الأخرى.

---

يجبر كل الأعمدة على أن تكون بعرض `1fr` بالضبط.

#### --answer--

ينشئ ثلاثة أعمدة حيث يكون العمود الأوسط ضعف عرض الجانبين.

### --question--

#### --text--

كيف تنشئ شبكة بثلاثة أعمدة متساوية وفجوة `20px` بينها؟

#### --distractors--

```css
.container {
  display: grid;
  grid-template: repeat(3, 1fr) / 20px;
} 
```

---

```css
.container {
  display: grid;
  grid: 1fr 1fr 1fr / gap 20px;
}
```

---

```css
.container {
  display: grid;
  grid-template-columns: 20px 1fr 1fr 1fr;
}
```

#### --answer--

```css
.container {
  display: grid;
  grid-template-columns: repeat(3, 1fr);
  gap: 20px;
}
```

### --question--

#### --text--

ماذا ينشئ `repeat(3, minmax(100px, 1fr))`؟

#### --distractors--

ثلاثة أعمدة لا يمكن أن تقل عن عرض `100px`.

---

ثلاثة أعمدة ثابتة بعرض `100px`.

---

ثلاثة صفوف بارتفاع أقصى `1fr`.

#### --answer--

ثلاثة أعمدة تنمو تناسبيًا لكنها لا تقل عن `100px`.

### --question--

#### --text--

أي عبارة عن الشبكات الضمنية صحيحة؟

#### --distractors--

تتجاهل الشبكات الضمنية الخاصية `gap`.

---

يجب تعريف المسارات الضمنية باستخدام `grid-template-areas`.

---

يمكن إنشاء المسارات الضمنية فقط باستخدام الخاصية `grid-auto-flow`.

#### --answer--

تُنشأ المسارات الضمنية عندما لا يتناسب المحتوى مع المسارات الصريحة.

### --question--

#### --text--

ما وظيفة الخاصية `place-items` في CSS Grid؟

#### --distractors--

تحدد حجم عناصر الشبكة تلقائيًا بناءً على المساحة المتاحة.

---

تتحكم في تعريف أعمدة وصفوف قالب الشبكة.

---

تضبط ترتيب عناصر الشبكة داخل الحاوية.

#### --answer--

هي اختصار لمحاذاة عناصر الشبكة في المحورين العمودي والمضمّن.

### --question--

#### --text--

ما الذي تحققه هذه الشفرة CSS؟

```css
.container {
  grid-template-columns: repeat(auto-fit, minmax(150px, 1fr));
}
```

#### --distractors--

تنشئ أعمدة ثابتة بعرض `150px` تتجاوز سعة الحاوية.

---

تنشئ أعمدة بعرض `1fr` بالضبط بغض النظر عن المحتوى.

---

يملأ كل صف بأكبر عدد ممكن من الأعمدة بعرض `150px`، مع تخصيص مسارات فارغة عندما لا يكون هناك عدد كافٍ من العناصر لملئها.

#### --answer--

تنشئ أعمدة مرنة لا يقل عرضها عن `150px` وتنهار عند ضيق المساحة.

### --question--

#### --text--

كيف يمكنك إنشاء تخطيطات شبكية غير متماثلة؟

#### --distractors--

باستخدام وحدات `fr` فقط.

---

بخلط وحدات طول مختلفة في `grid-template-columns`.

---

بتعيين `grid-asymmetric: true`.

#### --answer--

بتحديد أحجام مختلفة لكل مسار.

### --question--

#### --text--

ما تأثير `grid-column-start: 2` على عنصر الشبكة؟

#### --distractors--

يجعله يمتد عبر عمودين.

---

يزاح بمقدار 2 بكسل.

---

يضعه ليبدأ عند خط الشبكة العمودي الثاني.

#### --answer--

يجعله يبدأ عند خط العمود الثاني.

### --question--

#### --text--

أي خاصية تستخدم للتحكم في سلوك تجاوز السعة في مسارات الشبكة؟

#### --distractors--

`grid-overflow`

---

`track-sizing`

---

`fit-content`

#### --answer--

`minmax()`

### --question--

#### --text--

ما النتيجة للكود التالي؟

```css
.container {
  display: grid;
  grid-template-columns: 100px 1fr 2fr;
  grid-template-rows: auto 150px;
  gap: 10px;
}
```

#### --distractors--

ستحتوي الحاوية على ثلاثة أعمدة متساوية العرض وصفين بارتفاع `150px` لكل منهما.

---

ستحتوي الحاوية على ثلاثة أعمدة، كل منها بعرض `100px`، وصفين بارتفاع `150px`.

---

ستحتوي الحاوية على صفين، كل منهما بارتفاع `1fr`.

#### --answer--

ستحتوي الحاوية على ثلاثة أعمدة بعرض 100px و`1fr` و`2fr`، وصفين: واحد تلقائي والآخر بارتفاع `150px`.

### --question--

#### --text--

كيف تجعل عنصر الشبكة يمتد عبر كل الصفوف المتاحة؟

#### --distractors--

`grid-row: full;`

---

`grid-row: auto / -1;`

---

`grid-row: 1 / span infinite;`

#### --answer--

`grid-row: 1 / -1;`

### --question--

#### --text--

أي خاصية تتحكم في محاذاة عناصر الشبكة على المحور العمودي؟

#### --distractors--

`justify-items`

---

`place-items`

---

`align-content`

#### --answer--

`align-items`

### --question--

#### --text--

كيف تضمن بقاء عنصر الشبكة في العمود الأول بغض النظر عن تغييرات الشبكة؟

#### --distractors--

`grid-column: fixed;`

---

`grid-column: first;`

---

`grid-lock: column;`

#### --answer--

`grid-column: 1;`
