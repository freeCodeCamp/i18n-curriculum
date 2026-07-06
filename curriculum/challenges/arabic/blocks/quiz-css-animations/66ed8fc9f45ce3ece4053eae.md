---
id: 66ed8fc9f45ce3ece4053eae
title: اختبار الرسوم المتحركة في CSS
challengeType: 8
dashedName: quiz-css-animations
---

# --description--

لنجاح الاختبار، يجب أن تجيب بشكل صحيح على 18 سؤالًا على الأقل من أصل 20 سؤالًا أدناه.

# --quizzes--

## --quiz--

### --question--

#### --text--

ما الغرض من خاصية `transform` في CSS؟

#### --distractors--

تغيير مستوى الظهور لعنصر.

---

تطبيق تأثير بصري على النص.

---

تعيين أبعاد عنصر.

#### --answer--

تعديل موقع وحجم وشكل عنصر.

### --question--

#### --text--

كيف تؤثر خاصية `animation-direction` في CSS على الرسوم المتحركة؟

#### --distractors--

تحدد ما إذا كان يجب تكرار الرسوم المتحركة.

---

تحدد مدة الرسوم المتحركة.

---

تعرف سرعة الرسوم المتحركة.

#### --answer--

تعرف كيف يجب أن تُشغل الرسوم المتحركة.

### --question--

#### --text--

أي خاصية CSS تجعل الرسوم المتحركة تعمل 3 مرات؟

#### --distractors--

`animation-repeat: 3`

---

`animation-loop: 3`

---

`animation-delay: 3`

#### --answer--

`animation-iteration-count: 3`

### --question--

#### --text--

أي دالة توقيت في CSS تجعل الرسوم المتحركة تعمل بسرعة ثابتة من البداية للنهاية؟

#### --distractors--

`ease`

---

`ease-in`

---

`ease-in-out`

#### --answer--

`linear`

### --question--

#### --text--

ماذا تعرف قاعدة عند `@keyframes` في CSS؟

#### --distractors--

ألوان تدرج CSS.

---

زوايا دوران CSS.

---

أبعاد عنصر.

#### --answer--

مراحل الرسوم المتحركة في CSS.

### --question--

#### --text--

ما الغرض من دالة `translateX()` في CSS؟

#### --distractors--

تغير شفافية العنصر.

---

تدير العنصر.

---

تعيد تموضع العنصر عموديًا.

#### --answer--

تعيد تموضع العنصر أفقيًا.

### --question--

#### --text--

أي مما يلي ليس مصدر قلق محتمل مع الرسوم المتحركة في CSS؟

#### --distractors--

قد تسبب عدم راحة أو ضررًا جسديًا لبعض المستخدمين.

---

قد يجدها المستخدمون مشتتة للانتباه.

---

الإفراط في استخدامها قد يؤدي إلى ضعف الأداء.

#### --answer--

يمكنها تحسين تجربة المستخدم.

### --question--

#### --text--

أين تُعرف قاعدة عند `@keyframes`؟

#### --distractors--

داخل عنصر `body` في ملف HTML.

---

داخل عنصر `head` في ملف HTML.

---

داخل تعريف صنف CSS.

#### --answer--

على المستوى الأعلى، خارج أي محددات CSS.

### --question--

#### --text--

أي خاصية CSS تسمح لك بإيقاف واستئناف الرسوم المتحركة؟

#### --distractors--

`animation-timing-function`

---

`animation-delay`

---

`animation-direction`

#### --answer--

`animation-play-state`

### --question--

#### --text--

ما القيمة التي يجب تعيينها لخاصية `animation-name` في CSS؟

#### --distractors--

مدة الرسوم المتحركة بالثواني.

---

دالة التوقيت المستخدمة للرسوم المتحركة.

---

التأخير قبل بدء الرسوم المتحركة بالثواني.

#### --answer--

اسم الرسوم المتحركة المعرفة بواسطة `@keyframes`.

### --question--

#### --text--

ماذا تفعل قاعدة عند `@keyframes` هذه للعنصر المتحرك؟

```css
@keyframes animation {
  0% {
    transform: translateX(-50px);
  }
  100% {
    transform: translateX(100px);
  }
}
```

#### --distractors--

تدير العنصر 90 درجة باتجاه عقارب الساعة.

---

تغير لون العنصر إلى الأزرق.

---

تكبر العنصر إلى 50% من حجمه الأصلي ثم إلى 100%.

#### --answer--

تحرك العنصر أفقيًا من -50 بكسل إلى 100 بكسل، نسبة إلى نقطة البداية.

### --question--

#### --text--

أي خاصية CSS تعرف كيف تتقدم الرسوم المتحركة مع مرور الوقت؟

#### --distractors--

`animation-delay`

---

`animation-fill-mode`

---

`animation-iteration-count`

#### --answer--

`animation-timing-function`

### --question--

#### --text--

أي خاصية CSS تستخدم لتحديد أن الرسوم المتحركة يجب أن تستغرق 5 ثوانٍ لإكمالها؟

#### --distractors--

```css
animation-name: 5s;
```

---

```css
animation-delay: 5s;
```

---

```css
animation-timing-function: 5s;
```

#### --answer--

```css
animation-duration: 5s;
```

### --question--

#### --text--

ماذا يمثل `50%` في قاعدة عند `@keyframes` التالية في CSS؟

```css
@keyframes animation {
  0% {
    transform: translateX(-50px);
  }
  50% {
    transform: translateX(25px);
  }
  100% {
    transform: translateX(100px);
  }
}
```

#### --distractors--

نقطة بداية الرسوم المتحركة.

---

نقطة نهاية الرسوم المتحركة.

---

سرعة الرسوم المتحركة.

#### --answer--

نقطة منتصف الرسوم المتحركة.

### --question--

#### --text--

ماذا سيحدث عند تطبيق الخاصية `transform: translateX(200px);`؟

#### --distractors--

سينتقل العنصر 200 بكسل إلى اليسار.

---

سينتقل العنصر 200 بكسل إلى الأسفل.

---

سيدور العنصر 200 درجة باتجاه عقارب الساعة.

#### --answer--

سينتقل العنصر 200 بكسل إلى اليمين.

### --question--

#### --text--

كيف ستتصرف الرسوم المتحركة إذا تم تعيين `animation-iteration-count` إلى `infinite`؟

#### --distractors--

ستعمل مرة واحدة وتتوقف.

---

ستتوقف مؤقتًا بعد التكرار الأول.

---

ستتوقف بعد ثلاث تكرارات.

#### --answer--

ستتكرر إلى ما لا نهاية.

### --question--

#### --text--

أي محدد `@keyframes` يحدد نقطة بداية الرسوم المتحركة؟

#### --distractors--

`50%`

---

`25%`

---

`100%`

#### --answer--

`0%`

### --question--

#### --text--

ما الخصائص التي يمكن تحديدها باستخدام خاصية CSS المختصرة `animation`؟

#### --distractors--

اسم الرسوم المتحركة فقط.

---

الاسم والمدة للرسوم المتحركة.

---

الاسم والمدة والتأخير للرسوم المتحركة.

#### --answer--

جميع خصائص الرسوم المتحركة.

### --question--

#### --text--

أي خاصية CSS تستخدم لتطبيق رسوم متحركة معرفة بواسطة قاعدة عند `@keyframes`؟

#### --distractors--

`animation-duration`

---

`apply`

---

`translate`

#### --answer--

`animation`

### --question--

#### --text--

أي خاصية CSS تسمح لك بتعيين وقت قبل بدء الرسوم المتحركة؟

#### --distractors--

`animation-fill-mode`

---

`animation-timing-function`

---

`animation-iteration-count`

#### --answer--

`animation-delay`

## --quiz--

### --question--

#### --text--

ماذا تفعل خاصية CSS `animation-delay`؟

#### --distractors--

تحدد مدة استمرار الرسوم المتحركة.

---

تحدد دالة التوقيت.

---

تعرف اتجاه الرسوم المتحركة.

#### --answer--

تؤخر بدء الرسوم المتحركة.

### --question--

#### --text--

أي خاصية للرسوم المتحركة تحدد كيف يجب تنسيق العنصر قبل وبعد الرسوم المتحركة؟

#### --distractors--

`animation-delay`

---

`animation-direction`

---

`animation-iteration-count`

#### --answer--

`animation-fill-mode`

### --question--

#### --text--

لماذا يجب استخدام الرسوم المتحركة في CSS باعتدال؟

#### --distractors--

كثرة الرسوم المتحركة في CSS قد تؤدي إلى تعطل الأنماط وعدم اتساقها عبر المتصفحات المختلفة.

---

كثرة الرسوم المتحركة في CSS قد تؤدي إلى ترتيب أقل أو عدم وجود ترتيب في نتائج محركات البحث.

---

كثرة الرسوم المتحركة في CSS ستؤدي تلقائيًا إلى تعطل الخادم وزيادة احتمالية المخاطر الأمنية.

#### --answer--

كثرة الرسوم المتحركة في CSS قد تؤدي إلى ضعف الأداء وقد تكون مشتتة أو تسبب مشاكل لمستخدمين لديهم احتياجات إمكانية الوصول معينة.

### --question--

#### --text--

أي خاصية للرسوم المتحركة تحدد ما إذا كانت الرسوم المتحركة يجب أن تُشغل للأمام، للخلف، أو بالتناوب؟

#### --distractors--

`animation-fill-mode`

---

`animation-delay`

---

`animation-timing-function`

#### --answer--

`animation-direction`

### --question--

#### --text--

أي استعلام وسائط CSS يكتشف إذا طلب المستخدم تقليل الرسوم المتحركة أو تأثيرات الحركة؟

#### --distractors--

`reduce-motion`

---

`min-motion-preference`

---

`motion-preferences`

#### --answer--

`prefers-reduced-motion`

### --question--

#### --text--

أي خاصية تحدد عدد مرات تكرار الـ `animation`؟

#### --distractors--

`animation-duration`

---

`animation-count`

---

`animation-delay`

#### --answer--

`animation-iteration-count`

### --question--

#### --text--

أي قاعدة CSS تستخدم لتعريف مراحل وأنماط الرسوم المتحركة في نقاط مختلفة خلال مدتها؟

#### --distractors--

`@style`

---

`@transition`

---

`@transform`

#### --answer--

`@keyframes`

### --question--

#### --text--

داخل استعلام الوسائط `prefers-reduced-motion`، أي إعلان يعطل الانتقالات؟

#### --distractors--

`animation: none;`

---

`transition: remove;`

---

`animation-play-state: paused;`

#### --answer--

`transition: none;`

### --question--

#### --text--

ماذا تسمح لك خاصية `animation-play-state` بفعل؟

#### --distractors--

تعيين عدد مرات تكرار الرسوم المتحركة.

---

تحديد مدة استكمال الرسوم المتحركة.

---

تحديد اتجاه تشغيل الرسوم المتحركة.

#### --answer--

إيقاف واستئناف الرسوم المتحركة.

### --question--

#### --text--

أي مما يلي ممارسة جيدة عند العمل مع الرسوم المتحركة؟

#### --distractors--

استخدم أكبر عدد ممكن من الألوان اللامعة والحركات السريعة لجذب الانتباه.

---

تجنب اختبار الرسوم المتحركة على أجهزة أو أحجام شاشات مختلفة.

---

اجعل الرسوم المتحركة تدوم لأطول فترة ممكنة لضمان ملاحظتها من المستخدمين.

#### --answer--

تجنب المحتوى الذي يلمع أكثر من ثلاث مرات في الثانية لمنع تحفيز النوبات أو التسبب في عدم الراحة.

### --question--

#### --text--

لماذا تُستخدم العبارة `!important` في قواعد CSS؟

#### --distractors--

لمنع تحميل استعلامات الوسائط الأخرى.

---

لتقييد الأنماط على أول عنصر فرعي.

---

لجعل تصحيح CSS أسهل.

#### --answer--

لضمان أسبقية هذه القواعد على الأنماط الأخرى.

### --question--

#### --text--

ماذا يضمن `animation-iteration-count: 1 !important;` في CSS؟

#### --distractors--

أن تُوقف الرسوم المتحركة مؤقتًا.

---

أن تعمل الرسوم المتحركة إلى ما لا نهاية.

---

أن تعكس الرسوم المتحركة اتجاهها في كل دورة.

#### --answer--

أن تُشغّل أي رسوم متحركة متكررة مرة واحدة فقط.

### --question--

#### --text--

ما الخاصية في CSS التي تُستخدم لتحديد مدة إكمال الرسوم المتحركة؟

#### --distractors--

`animation-delay`

---

`animation-timing-function`

---

`animation-iteration-count`

#### --answer--

`animation-duration`

### --question--

#### --text--

أي خاصية ليست جزءًا من الاختصار `animation`؟

#### --distractors--

`animation-delay`

---

`animation-timing-function`

---

`animation-direction`

#### --answer--

`animation-transform`

### --question--

#### --text--

ماذا تُعرّف قاعدة `@keyframes`؟

#### --distractors--

دالة التوقيت للرسوم المتحركة.

---

الحالة الافتراضية للعنصر.

---

استعلامات الوسائط للرسوم المتحركة.

#### --answer--

متتالية الأنماط في نقاط مختلفة خلال الرسوم المتحركة.

### --question--

#### --text--

ماذا تفعل قاعدة `@keyframes` هذه للعنصر المتحرك؟

```css
@keyframes fade-in {
  0% {
    opacity: 0;
  }
  100% {
    opacity: 1;
  }
}
```

#### --distractors--

تكبر العنصر من 0% إلى 100%.

---

تحرك العنصر من اليسار إلى اليمين.

---

تغير لون النص إلى الأسود.

#### --answer--

تجعل العنصر يتلاشى تدريجيًا عبر تقليل شفافيته.

### --question--

#### --text--

في قاعدة الإطارات المفتاحية، ماذا يمثل `100%`؟

#### --distractors--

بداية الرسوم المتحركة.

---

منتصف الرسوم المتحركة.

---

دالة التسهيل (التخفيف).

#### --answer--

نهاية الرسوم المتحركة.

### --question--

#### --text--

أي خاصية تتحكم في وتيرة `animation` خلال مدتها؟

#### --distractors--

`animation-duration`

---

`animation-delay`

---

`animation-iteration-count`

#### --answer--

`animation-timing-function`

### --question--

#### --text--

ما الذي يجب أن يأخذه المطوّرون في الاعتبار عند تنفيذ الرسوم المتحركة للحفاظ على إمكانية الوصول؟

#### --distractors--

الاعتماد كليًا على JavaScript لكل الرسوم المتحركة.

---

إضافة رسوم متحركة متكررة وشديدة التأثير.

---

استخدام تأثيرات عريضة وسريعة ومفاجئة فقط.

#### --answer--

استخدام تأثيرات دقيقة ومقصودة، واحترام التفضيلات، وتوفير تحكم للمستخدم.

### --question--

#### --text--

أي من الصيغ التالية هي الصيغة الصحيحة لتحريك عنصر من اليسار؟

#### --distractors--

```css
@keyframes slide-in {
  0 { 
    transform: translate(-100%); 
  }
  100 { 
    transform: translate(0); 
  }
}
```

---

```css
@keyframes slide-in {
  from { 
    translateX(-100%); 
  }
  to { 
    translateX(0); 
  }
}
```

---

```css
@keyframes slide-in {
  start { 
    transform: moveX(-100%); 
  }
  end { 
    transform: moveX(0); 
  }
}
```

#### --answer--

```css
@keyframes slide-in {
  0% { 
    transform: translateX(-100%); 
  }
  100% { 
    transform: translateX(0); 
  }
}
```
