---
id: bd7178d8c242eddfaeb5bd13
title: التصوير المرئي للبيانات باستخدام مخطط التبعثر
challengeType: 3
forumTopicId: 301467
dashedName: visualize-data-with-a-scatterplot-graph
---

# --description--

**Objective:** Build an app that is functionally similar to this: <a href="https://scatterplot-graph.freecodecamp.rocks" target="_blank" rel="noopener noreferrer nofollow">https://scatterplot-graph.freecodecamp.rocks</a>.

أكمل "قصص المستخدم" بالأسفل وتأكد من اكتمال جميع الاختبارات بنجاح. استخدم أي مَكتبة أو API تَحتاج. أعطها التصميم الخاص بك.

يُمكنك استخدام HTML و JavaScript و CSS إلى جانب مكتبة D3. الاختبارات تتطلب إنتاج المَحاور باستخدام خاصية axis في D3 والتي بدورها سَتُوَلد الخٌطوط البيانية موازيتاََ للمحور. وهذه الـخٌطوط البيانية لازمة لاجتياز اختبارات D3, لأن مواقعها تُستخدم لتحديد محاذاة العناصر المرسومة بيانياََ. You will find information about generating axes at <https://d3js.org/d3-axis>. يجري الاستعلام عن كُل عٌنصر (DOM elements) في أثناء كُل اختبار. في حال كُنت تستخدم مكتبة (frontend framework) مثل Vue، فإن نتائج الاختبار ربما تكون غير دقيقة بسبب أنَّ المحتوى ديناميكي. نتمنى أن نتوافق معهم في القريب العاجل، لكن هذه المكتبات غير مدعومة لمشاريع D3 حالياََ.

**قصة المستخدم 1:** يمكنني أن أرى عنصر title مع موافقه `id="title"`.

**قصة المستخدم 2:** يمكنني رؤية محور أفقي (x-axis) يحتوي على سمة `id="x-axis"`.

**قصة المستخدم 3:** يمكنني رؤية محور رئسي (y-axis) يحتوي على `id="y-axis"`.

**قصة المستخدم 4:** يمكنني أن أرى نقاط (dots) ولكل منها فئة (class) `dot`، التي تمثل البيانات التي يتم رسمها.

**قصة المستخدم 5:** كل نقطة يجب أن تحتوي على الخصائص `data-xvalue` و `data-yvalue` التي توافق القيم `x` و `y`.

**قصة المستخدم 6:** يجب أن يضمن كل نقطة من `data-xvalue` و `data-yvalue` نطاق البيانات الفعلية وبتنسيق البيانات الصحيحة. في `data-xvalue`، يقبل تقييم الاختبارات الأرقام الصحيحة (السنوات الكاملة) أو كائنات `Date`. في `data-yvalue` (لدقائق)، استخدم كائنات `Date`.

**قصة المستخدم 7:** يجب أن تتوافق `data-xvalue` ونقطتها الموافقة مع النقطة/القيمة الموافقة على محور أفقي (x-axis).

**قصة المستخدم 8:** يجب أن توافق `data-yvalue` ونقطتها الموافقة مع النقطة/القيمة الموافقة على محور أفقي (y-axis).

**قصة المستخدم 9:** يمكننك رؤية تسميات علامة (tick) متعددة على المحور الرأسي (y-axis) مع تنسيق الوقت `%M:%S`.

**قصة المستخدم 10:** يمكننك رؤية تسميات علامة (tick) متعددة على المحور الأفقي (x-axis) الذي يظهر السنة.

**قصة المستخدم 11:** يمكننك رؤية نطاق (range) تسميات (labels) المحور الأفقي (x-axis) يقع ضمن نطاق بيانات المحور الأفقي (x-axis) فعلاً.

**قصة المستخدم 12:** يمكننك رؤية نطاق (range) تسميات (labels) المحور الرأسي (y-axis) تقع ضمن نطاق بيانات المحور الرأسي (y-axis) فعلاً.

**قصة المستخدم 13:** يمكننك رؤية legend تحتوي على نص وصفي وله سمة `id="legend"`.

**قصة المستخدم 14:** عند تحريك الفأر (mouse) فوق منطقة سترى أدوات نصيحة (tooltip) لها سمة `id="tooltip"`، وهي تعرض المزيد من المعلومات عن المنطقة.

**قصة المستخدم 15:** يجب أن تحتوي تلميح أدواتك (tooltip) على خاصية `data-year` التي تتوافق مع `data-xvalue` في المنطقة النشطة.

إليك مجموعة البيانات التي ستحتاج لإكمال هذا المشروع: `https://raw.githubusercontent.com/freeCodeCamp/ProjectReferenceData/master/cyclist-data.json`

يمكنك بناء مشروعك عن طريق <a href='https://codepen.io/pen?template=MJjpwO' target="_blank" rel="noopener noreferrer nofollow">استخدام هذا نموذج CodePen</a> والنقر على `Save` لإنشاء pen خاص بك. Or you can use this CDN link to run the tests in any environment you like: `https://cdn.freecodecamp.org/testable-projects-fcc/v1/bundle.js`

بمجرد أن تنتهي، ارسل عنوان URL لمشروعك مع اجتياز جميع الاختبارات.

# --solutions--

```js
// solution required
```
