---
id: 66ed8fd0f45ce3ece4053eaf
title: اختبار محددات الخاصية في CSS
challengeType: 8
dashedName: quiz-css-attribute-selectors
---

# --description--

لتجاوز الاختبار القصير، يجب أن تجيب بشكل صحيح على 9 أسئلة على الأقل من أصل 10 أسئلة أدناه.

# --quizzes--

## --quiz--

### --question--

#### --text--

ما الغرض من استخدام محددات الخاصية في CSS؟

#### --distractors--

لتطبيق الأنماط على العناصر بناءً على اسم الوسم الخاص بها.

---

لتطبيق الأنماط على العناصر بناءً على اسم الصنف الخاص بها.

---

لتطبيق الأنماط على العناصر بناءً على عنصر الأصل الخاص بها.

#### --answer--

لتطبيق الأنماط على العناصر بناءً على خصائصها.

### --question--

#### --text--

أي مما يلي لن يتم تحديده بواسطة محدد CSS هذا؟

```css
[title~="flower"] {
  border: 5px solid yellow;
}
```

#### --distractors--

```html
<img src="img1.jpg" title="clematis flower" width="150" height="113">
```

---

```html
<img src="img2.jpg" title="flower" width="150" height="113">
```

---

```html
<img src="img2.jpg" title="FLOWERS of flower" width="150" height="113">
```

#### --answer--

```html
<img src="img2.jpg" title="flowers" width="150" height="113">
```

### --question--

#### --text--

أي محدد CSS يطابق كل عناصر `p` التي تحتوي على خاصية `lang` بقيمة `"fr"`؟

#### --distractors--

```css
p[lang-="fr"] { color: blue; }
```

---

```css
p[lang~="fr"] { color: blue; }
```

---

```css
p[lang=="fr"] { color: blue; }
```

#### --answer--

```css
p[lang="fr"] { color: blue; }
```

### --question--

#### --text--

أي محدد CSS يطابق كل عناصر `a` التي تحتوي على خاصية `href`؟

#### --distractors--

```css
a(href) { color: green; }
```

---

```css
a { color: green; }
```

---

```css
a[href~=""] { color: green; }
```

#### --answer--

```css
a[href] { color: blue; }
```

### --question--

#### --text--

أي محدد CSS يطابق كل القوائم المرتبة التي تستخدم الأرقام الرومانية الكبيرة؟

#### --distractors--

```css
ol[type="a"] { border-color: black; }
```

---

```css
ol[type="A"] { border-color: black; }
```

---

```css
ol[type="i"] { border-color: black; }
```

#### --answer--

```css
ol[type="I"] { border-color: black; }
```

### --question--

#### --text--

ما الاستخدام الشائع لخاصية `data-lang`؟

#### --distractors--

لتحديد لغة الوثيقة.

---

لتعريف ترميز الأحرف للوثيقة.

---

لتعيين لغة عنصر بناءً على عنصر الأصل الخاص به.

#### --answer--

لتخزين بيانات مخصصة على عنصر HTML يمكن لـ CSS أو JavaScript استخدامها لاحقًا.

### --question--

#### --text--

أي محدد CSS يجب أن تستخدمه لتنسيق عناصر `img` فقط إذا كانت خاصية `alt` تساوي `"code"`؟

#### --distractors--

```css
img[alt~="code"] { border: 1px solid red; }
```

---

```css
img[alt=="code"] { border: 1px solid red; }
```

---

```css
img[alt*="code"] { border: 1px solid red; }
```

#### --answer--

```css
img[alt="code"] { border: 1px solid red; }
```

### --question--

#### --text--

أي محدد CSS يطابق القوائم المرتبة التي تستخدم نوع ترقيم رقمي؟

#### --distractors--

```css
ol[type="i"] { color: purple; }
```

---

```css
ol[type="I"] { color: purple; }
```

---

```css
ol[type="a"] { color: purple; }
```

#### --answer--

```css
ol[type="1"] { color: purple; }
```

### --question--

#### --text--

أي من محددات CSS التالية ستستخدمها لتنسيق عناصر `a` التي تحتوي على كل من خاصيتي `href` و `title`؟

#### --distractors--

```css
a[href] a[title] { text-decoration: underline dotted; }
```

---

```css
a[href]a[title] { text-decoration: underline dotted; }
```

---

```css
a[href].[title] { text-decoration: underline dotted; }
```

#### --answer--

```css
a[href][title] { text-decoration: underline dotted; }
```

### --question--

#### --text--

أي محدد CSS ستستخدمه إذا كنت تطور موقع ويب لمطعم وتريد تنسيق كل العناصر التي تحمل صنف `menu-item` والتي تحتوي على خاصية `data-special`؟

#### --distractors--

```css
menu-item[data-special] { background-color: blue; }
```

---

```css
#menu-item[data-special] { background-color: blue; }
```

---

```css
[data-special="menu-item"] { background-color: blue; }
```

#### --answer--

```css
.menu-item[data-special] { background-color: blue; }
```

