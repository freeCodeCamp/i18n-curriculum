---
id: 66f1aeb60b11aec5abe83c2e
title: اختبار مكتبات وإطارات عمل CSS
challengeType: 8
dashedName: quiz-css-libraries-and-frameworks
---

# --description--

لتجاوز الاختبار، يجب أن تجيب بشكل صحيح على 9 أسئلة على الأقل من أصل 10 أسئلة أدناه.

# --quizzes--

## --quiz--

### --question--

#### --text--

ما هو إطار عمل CSS؟

#### --distractors--

أداة لإصلاح أخطاء CSS.

---

أداة لفحص ملفات CSS.

---

منسق لملفات CSS.

#### --answer--

مكتبة لأنماط CSS.

### --question--

#### --text--

أي مما يلي هو إطار عمل CSS شائع يعتمد على المرافق أولاً؟

#### --distractors--

Template CSS

---

Loading CSS

---

Minimal CSS

#### --answer--

Tailwind CSS

### --question--

#### --text--

ما هي عيوب إطارات عمل CSS؟

#### --distractors--

قلة المكوِّنات.

---

عدم وجود خيارات تخصيص.

---

تحسين دعم المتصفحات.

#### --answer--

يمكن أن تُثقل ملفات CSS.

### --question--

#### --text--

ماذا تعني SCSS؟

#### --distractors--

أوراق الأنماط المتتالية الفائقة.

---

CSS منظم.

---

CSS بسيط.

#### --answer--

Sassy CSS.

### --question--

#### --text--

أي مما يلي ميزة من ميزات Sass؟

#### --distractors--

تعليقات

---

فحص CSS.

---

CSS مضمَّن.

#### --answer--

خليطات

### --question--

#### --text--

أي مما يلي هو الطريقة الصحيحة لاستخدام أصناف المرافق في Tailwind CSS؟

#### --distractors--

```html
<button class="color-blue text-color font-size allow-hover round-btn">
  Button
</button>
```

---

```html
<button class="blue text font-size hover round-btn margin-full">
  Button
</button>
```

---


```html
<button class="set-blue set-text set-font set-hover round-btn padding-full">
  Button
</button>
```

#### --answer--


```html
<button class="bg-blue-500 text-white font-bold py-2 px-4 rounded-full hover:bg-blue-700">
  Button
</button>
```

### --question--

#### --text--

ما نوعا إطارات عمل CSS؟

#### --distractors--

إطارات عمل CSS التي تبدأ بالأجهزة اللوحية وإطارات عمل CSS القائمة على المكوِّنات.

---

إطارات عمل CSS التي تعتمد على المرافق أولاً وإطارات عمل CSS التي تعتمد على التحميل الكسول.

---

إطارات عمل CSS البسيطة وإطارات عمل CSS التي تعتمد على المرافق أولاً.

#### --answer--

إطارات عمل CSS التي تعتمد على المرافق أولاً وإطارات عمل CSS القائمة على المكوِّنات.

### --question--

#### --text--

ما هو امتداد الملف الخاص بـ SCSS؟

#### --distractors--

`.sass`

---

`.scsss`

---

`.css`

#### --answer--

`.scss`

### --question--

#### --text--

أي مما يلي هو الطريقة الصحيحة لتعريف متغير في SCSS؟

#### --distractors--

```css
#primary-color: #3498eb;

header {
  background-color: #primary-color;
}
```

---

```css
>primary-color: #3498eb;

header {
  background-color: >primary-color;
}
```

---

```css
?primary-color: #3498eb;

header {
  background-color: ?primary-color;
}
```

#### --answer--

```css
$primary-color: #3498eb;

header {
  background-color: $primary-color;
}
```

### --question--

#### --text--

أي مما يلي هو الطريقة الصحيحة لتعريف خليط؟

#### --distractors--

```css
--mixin center-flex {
  display: flex;
  justify-content: center;
  align-items: center;
}
```

---

```css
>mixin center-flex {
  display: flex;
  justify-content: center;
  align-items: center;
}
```

---

```css
mixin center-flex {
  display: flex;
  justify-content: center;
  align-items: center;
}
```

#### --answer--

```css
@mixin center-flex {
  display: flex;
  justify-content: center;
  align-items: center;
}
```

