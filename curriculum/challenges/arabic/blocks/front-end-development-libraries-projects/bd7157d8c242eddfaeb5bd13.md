---
id: bd7157d8c242eddfaeb5bd13
title: بناء عارض Markdown
challengeType: 3
forumTopicId: 301372
dashedName: build-a-markdown-previewer
---

# --description--
**ملاحظة:** **React 18 لديها تعارضات معروفة مع اختبارات هذا المشروع (انظر [المشكلة](https://github.com/freeCodeCamp/freeCodeCamp/issues/45922))**

**الهدف:** بناء تطبيق يشبه وظيفيًا هذا: <a href="https://markdown-previewer.freecodecamp.rocks/" target="_blank" rel="noopener noreferrer nofollow">https://markdown-previewer.freecodecamp.rocks/</a>.

نفذ قصص المستخدم التالية واجعل جميع الاختبارات تمر بنجاح. استخدم أي مكتبات أو واجهات برمجة التطبيقات تحتاجها. أضف لمستك الشخصية.

يمكنك استخدام أي مزيج من HTML وJavaScript وCSS وBootstrap وSASS وReact وRedux وjQuery لإكمال هذا المشروع. يجب أن تستخدم إطار عمل للواجهة الأمامية (مثل React على سبيل المثال) لأن هذا القسم يركز على تعلم أُطُر العمل للواجهة الأمامية. لا يُنصح باستخدام تقنيات إضافية غير المذكورة أعلاه، واستخدامها يكون على مسؤوليتك. نحن ندرس دعم أُطُر عمل أخرى للواجهة الأمامية مثل Angular وVue، لكنها غير مدعومة حاليًا. سنقبل ونحاول إصلاح جميع تقارير المشاكل التي تستخدم مجموعة التقنيات المقترحة لهذا المشروع. برمجة سعيدة!

**قصة المستخدم #1:** يمكنني رؤية عنصر `textarea` مع `id="editor"` المقابل.

**قصة المستخدم #2:** يمكنني رؤية عنصر مع `id="preview"` المقابل.

**قصة المستخدم #3:** عندما أدخل نصًا في العنصر `#editor`، يتم تحديث العنصر `#preview` أثناء الكتابة لعرض محتوى مربع النص.

**قصة المستخدم #4:** عندما أدخل Markdown بنكهة GitHub في العنصر `#editor`، يُعرض النص كـ HTML في العنصر `#preview` أثناء الكتابة (تلميح: لا تحتاج لتحليل Markdown بنفسك - يمكنك استيراد مكتبة Marked لهذا الغرض: <https://cdnjs.com/libraries/marked>).

**قصة المستخدم #5:** عندما يبدأ عارض Markdown الخاص بي بالتحميل، يجب أن يحتوي النص الافتراضي في حقل `#editor` على Markdown صالح يمثل على الأقل واحدًا من كل العناصر التالية: عنصر عنوان (حجم H1)، عنصر عنوان فرعي (حجم H2)، رابط، شفرة مضمَّنة، كتلة شفرة، عنصر قائمة، اقتباس، صورة، ونص عريض.

**قصة المستخدم #6:** عندما يبدأ عارض Markdown الخاص بي بالتحميل، يجب أن يُعرض Markdown الافتراضي في حقل `#editor` كـ HTML في العنصر `#preview`.

**ميزة اختيارية (لا تحتاج لجعل هذا الاختبار ينجح):** يفسر عارض Markdown الخاص بي عوائد السطر ويعرضها كعناصر `br` (فواصل أسطر).

يمكنك بناء مشروعك باستخدام <a href='https://codepen.io/pen?template=MJjpwO' target='_blank' rel="noopener noreferrer nofollow">قالب CodePen هذا</a> والنقر على `Save` لإنشاء القلم الخاص بك. إذا فضلت استخدام بيئة أخرى، ضع هذا الوسم `<script>` داخل جسم ملف `index.html` الخاص بك: `<script src="https://cdn.freecodecamp.org/testable-projects-fcc/v1/bundle.js"></script>`

عندما تنتهي، أرسل عنوان URL لمشروعك العامل مع اجتياز جميع الاختبارات.

# --solutions--

```js
// solution required
```
