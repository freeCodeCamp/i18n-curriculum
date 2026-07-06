---
id: 671a98fbaabfba994e3d9a7c
title: مراجعة متغيرات CSS
challengeType: 31
dashedName: review-css-variables
---

# --interactive--

## الخصائص المخصصة في CSS (متغيرات CSS)

- **التعريف**: الخصائص المخصصة في CSS، المعروفة أيضًا بمتغيرات CSS، هي كيانات يعرّفها مؤلفو CSS تحتوي على قيم محددة لإعادة استخدامها في جميع أنحاء المستند. إنها ميزة قوية تسمح بإنشاء أوراق أنماط أكثر كفاءة وقابلية للصيانة ومرونة. الخصائص المخصصة مفيدة بشكل خاص في إنشاء تصاميم قابلة للتخصيص حسب الموضوع. يمكنك تعريف مجموعة من الخصائص لمواضيع مختلفة:

```css
:root {
  --bg-color: white;
  --text-color: black;
}

.dark-theme {
  --bg-color: #333;
  --text-color: white;
}

body {
  background-color: var(--bg-color);
  color: var(--text-color);
}
```

## قاعدة `@property`

- **التعريف**: قاعدة `@property` هي ميزة قوية في CSS تتيح للمطورين تعريف خصائص مخصصة مع تحكم أكبر في سلوكها، بما في ذلك كيفية تحريكها وقيمها الأولية.

```css
@property --property-name {
  syntax: '<type>';
  inherits: true | false;
  initial-value: <value>;
}
```

- **`--property-name`**: هذا هو اسم الخاصية المخصصة التي تعرفها. مثل جميع الخصائص المخصصة، يجب أن يبدأ بشرطتين.
**`syntax`**: يحدد نوع الخاصية، والذي يمكن أن يكون مثل `<color>`, `<length>`, `<number>`, `<percentage>`, أو أنواع أكثر تعقيدًا.
- **`inherits`**: يحدد ما إذا كانت الخاصية ترث قيمتها من العنصر الأب.
- **`initial-value`**: يحدد القيمة الافتراضية للخاصية.
- **مثال على التدرج باستخدام قاعدة `@property`**: هذا المثال ينشئ تدرجًا يتحرك بسلاسة عند تمرير المؤشر فوق العنصر.

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css">

<div class="gradient-box"></div>
```

```css
@property --gradient-angle {
  syntax: "<angle>";
  inherits: false;
  initial-value: 0deg;
}

.gradient-box {
  width: 100px;
  height: 100px;
  background: linear-gradient(var(--gradient-angle), red, blue);
  transition: --gradient-angle 0.5s;
}

.gradient-box:hover {
  --gradient-angle: 90deg;
}
```

:::

- **النظام البديل**: عند استخدام الخاصية المخصصة، يمكنك توفير قيمة للنظام البديل باستخدام الدالة `var()`، تمامًا كما تفعل مع الخصائص المخصصة القياسية:

```css
.button {
  background-color: var(--main-color, #3498db);
}
```

# --assignment--

راجع مواضيع ومفاهيم متغيرات CSS.
