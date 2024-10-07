---
id: bd7168d8c242eddfaeb5bd13
title: التمثيل البياني باستخدام مخطط الأعمدة
challengeType: 3
forumTopicId: 301464
dashedName: visualize-data-with-a-bar-chart
---

# --description--

**Objective:** Build an app that is functionally similar to this: <a href="https://bar-chart.freecodecamp.rocks" target="_blank" rel="noopener noreferrer nofollow">https://bar-chart.freecodecamp.rocks</a>.

أكمل "قصص المستخدم" بالأسفل وتأكد من اكتمال جميع الاختبارات بنجاح. استخدم أي مَكتبة أو API تَحتاج. أعطها التصميم الخاص بك.

يُمكنك استخدام HTML و JavaScript و CSS إلى جانب مكتبة D3. الاختبارات تتطلب إنتاج المَحاور باستخدام خاصية axis في D3 والتي بدورها سَتُوَلد الخٌطوط البيانية موازيتاََ للمحور. وهذه الـخٌطوط البيانية لازمة لاجتياز اختبارات D3, لأن مواقعها تُستخدم لتحديد محاذاة العناصر المرسومة بيانياََ. You will find information about generating axes at <https://d3js.org/d3-axis>. يجري الاستعلام عن كُل عٌنصر (DOM elements) في أثناء كُل اختبار. في حال كُنت تستخدم مكتبة (frontend framework) مثل Vue، فإن نتائج الاختبار ربما تكون غير دقيقة بسبب أنَّ المحتوى ديناميكي. نتمنى أن نتوافق معهم في القريب العاجل، لكن هذه المكتبات غير مدعومة لمشاريع D3 حالياََ.

**قصة المٌستخدم 1#:**: يجب أن يحتوي المخطط علي عنوان متوافق مع `id="title"`.

**قصة المستخدم الثانية 2#:**: يجب أن يحتوي المخطط علي عنصر `g` علي المحور x (الأفقي) مع `id="x-axis"`.

**قصة المُستخدم الثالثة 3#:** يجب أن يحتوى المخطط علي عُنصر `g` علي المحور y (العمودي) مع `id="y-axis"`.

**قصة المٌستخدم 4#:** يجب أن يحتوي كِلا المحورين x و y علي العديد من الخطوط الموازية (ticks) ويكون لكل منهم `class="tick"`.

**قصة المٌستخدم الخامسة 5#:** يَجب أن يحتوي المخطط على عُنصر من نوع `rect` لكل معلومة مع عرض للبيانات بواسطة سمة `class="bar"`.

**قصة المٌستخدم 6#:** كُل عمود `.bar` يجب أن يحتوي علي خصائص `data-date` و `data-gdp` يحتويان علي قيمتا `date` و `GDP`.

**قصة المٌستخدم 7#:** يجب أن تتوافق خصائص العناصر `.bar` المسمى `data-date` مع ترتيب البيانات المتوفرة.

**قصة المٌستخدم 8#:** يجب أن تتوافق خصائص العناصر `.bar` المسمى `data-gdp` مع ترتيب البيانات المتوفرة.

**قصة المستخدم #9:** يجب أن يمثل طول كل عنصر `.bar` البيانات المقابلة `GDP` بدقة.

**قصة المستخدم 10:** يجب أن تتوافق سمة `data-date` والعنصر `.bar` الموافق معها مع القيمة الموافقة على المحور الأفقي (x-axis).

**قصة المستخدم 11:** يجب أن تتوافق سمة `data-gdp` والعنصر `.bar` الموافق معها مع القيمة الموافقة على المحور العمودي (y-axis).

**قصة المستخدم #12:** يمكنني أن أحوم الماوس فوق منطقة وأرى تلميح ذات `id="tooltip"`، الذي يعرض المزيد من المعلومات حول المنطقة.

**قصة المستخدم #13:** يجب أن يحتوي التلميح الخاص بي على خاصية `data-date` التي تتوافق مع `data-date` في المنطقة النشطة.

إليك مجموعة البيانات التي ستحتاج إلى إكمال هذا المشروع: `https://raw.githubusercontent.com/freeCodeCamp/ProjectReferenceData/master/GDP-data.json`

يمكنك بناء مشروعك عن طريق <a href='https://codepen.io/pen?template=MJjpwO' target="_blank" rel="noopener noreferrer nofollow">استخدام هذا نموذج CodePen</a> والنقر على `Save` لإنشاء تطبيقك الخاص بك. Or you can use this CDN link to run the tests in any environment you like: `https://cdn.freecodecamp.org/testable-projects-fcc/v1/bundle.js`.

بمجرد أن تنتهي، ارسل عنوان URL لمشروعك الفَعَّال الذي يجتاز جميع الاختبارات.

# --solutions--

```js
// solution required
```
