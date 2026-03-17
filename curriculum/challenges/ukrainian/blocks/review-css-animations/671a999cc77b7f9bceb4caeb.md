---
id: 671a999cc77b7f9bceb4caeb
title: Повторення CSS анімацій
challengeType: 31
dashedName: review-css-animations
---

# --interactive--

## Основи CSS анімацій

- **Визначення**: CSS анімації дозволяють створювати динамічні, візуально привабливі ефекти на вебсторінках без потреби в JavaScript або складному програмуванні. Вони забезпечують плавний перехід елементів між різними стилями протягом заданого часу.
- **Правило `@keyframes`**: Це правило визначає етапи та стилі анімації. Воно вказує, які стилі повинен мати елемент у різні моменти анімації.

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

- **Властивість `animation`**: Це скорочена властивість, яка використовується для застосування анімацій.
- **`animation-name`**: Вказує ім’я правила `@keyframes`, яке слід використати.
- **`animation-duration`**: Встановлює, скільки часу має тривати анімація.
- **`animation-timing-function`**: Визначає, як анімація прогресує з часом (наприклад, ease, linear, ease-in-out).
- **`animation-delay`**: Вказує затримку перед початком анімації.
- **`animation-iteration-count`**: Встановлює, скільки разів анімація має повторюватися.
- **`animation-direction`**: Визначає, чи анімація має відтворюватися вперед, назад або чергуватися.
- **`animation-fill-mode`**: Вказує, як елемент має бути стилізований до і після анімації.
- **`animation-play-state`**: Дозволяє призупиняти та відновлювати анімацію.

## Доступність і медіазапит `prefers-reduced-motion`

- **Медіазапит `prefers-reduced-motion`**: Однією з основних проблем доступності анімацій є те, що вони можуть викликати дискомфорт або навіть фізичну шкоду деяким користувачам. Люди з вестибулярними розладами або чутливістю до руху можуть відчувати запаморочення, нудоту або головний біль при впливі певних типів руху на екрані. Медіазапит `prefers-reduced-motion` дозволяє розробникам вебсторінок визначати, чи користувач на системному рівні запросив мінімальні анімації або ефекти руху.

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

Повторіть теми та концепції CSS анімацій.
