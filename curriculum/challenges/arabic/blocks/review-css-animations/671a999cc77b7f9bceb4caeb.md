---
id: 671a999cc77b7f9bceb4caeb
title: مراجعة تحريكات CSS
challengeType: 31
dashedName: review-css-animations
---

# --interactive--

## أساسيات تحريكات CSS

- **التعريف**: تتيح تحريكات CSS إنشاء تأثيرات ديناميكية وجذابة بصريًا على صفحات الويب دون الحاجة إلى JavaScript أو برمجة معقدة. توفر طريقة للانتقال السلس للعناصر بين أنماط مختلفة خلال مدة محددة.
- **قاعدة `@keyframes`**: تعرف هذه القاعدة مراحل وأنماط التحريك. تحدد الأنماط التي يجب أن يكون عليها العنصر في نقاط مختلفة أثناء التحريك.

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css">
<div class="box">Slide</div>
```

```css
.box {
  width: 120px;
  padding: 10px;
  background: #0077ff;
  color: white;
  animation: slide-in 1s ease-in-out;
}

@keyframes slide-in {
  from {
    transform: translateX(-100%);
  }
  to {
    transform: translateX(0);
  }
}
```

:::

- **خاصية `animation`**: هذه خاصية مختصرة تُستخدم لتطبيق الحركات.
- **`animation-name`**: تحدد اسم قاعدة `@keyframes` التي ستُستخدم.
- **`animation-duration`**: تحدد مدة تنفيذ الحركة بالكامل.
- **`animation-timing-function`**: تحدد كيفية تقدم الحركة مع الزمن (مثل `ease`، `linear`، `ease-in-out`).
- **`animation-delay`**: تحدد تأخيرًا قبل بدء الحركة.
- **`animation-iteration-count`**: تحدد عدد مرات تكرار الحركة.
- **`animation-direction`**: تحدد اتجاه تشغيل الحركة سواء في الوضع `normal` أو `reverse` أو التبديل بينهما باستخدام `alternate`.
- **`animation-fill-mode`**: تحدد كيف يُنسق العنصر قبل وبعد الحركة.
- **`animation-play-state`**: تتيح إيقاف الحركة مؤقتًا أو استئنافها.

## إمكانية الوصول واستعلام الوسائط `prefers-reduced-motion`

- **استعلام الوسائط `prefers-reduced-motion`**: من أهم اهتمامات إمكانية الوصول مع التحريكات أنها قد تسبب انزعاجًا أو حتى ضررًا جسديًا لبعض المستخدمين. قد يعاني الأشخاص المصابون باضطرابات الدهليز أو حساسية الحركة من دوار أو غثيان أو صداع عند تعرضهم لأنواع معينة من الحركة على الشاشة. يسمح استعلام الوسائط `prefers-reduced-motion` لمطوري الويب بالكشف عما إذا طلب المستخدم تقليل التحريكات أو تأثيرات الحركة على مستوى النظام.

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css">
<button class="animated-element">Hover me</button>
```

```css
.animated-element {
  padding: 10px 16px;
  transition: transform 0.3s ease-in-out;
}

.animated-element:hover {
  transform: translateX(20px);
}

@media (prefers-reduced-motion: reduce) {
  .animated-element {
    transition: none;
  }
}
```

:::

# --assignment--

راجع موضوعات ومفاهيم تحريكات CSS.
